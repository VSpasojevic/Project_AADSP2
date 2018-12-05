#include <stdio.h>
#include <dsplib\wavefile.h>
#include <stdfix.h>
#include <string.h>

#include "common.h"

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8


#define COEFFICIENTS_SIZE 6
#define HISTORY_SIZE 6

__memX DSPfract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

__memX DSPfract coefficients_HPF[COEFFICIENTS_SIZE] = { FRACT_NUM(0.475398541711493705),FRACT_NUM(-0.9507970834229874), FRACT_NUM(0.475398541711493705),FRACT_NUM(0.50000000000000000000),FRACT_NUM(-0.94966671005613015),FRACT_NUM(0.452081520436402095) };
__memX DSPfract coefficients_LPF[COEFFICIENTS_SIZE] = { FRACT_NUM(0.00230631833646038985), FRACT_NUM(0.0046126366729207797), FRACT_NUM(0.00230631833646038985),FRACT_NUM(0.50000000000000000000),FRACT_NUM(-0.8995482047423341),FRACT_NUM(0.408756201692378975) };

__memX DSPint mode1 = 0;
__memX DSPint mode2 = 0;


__memY DSPfract gain = FRACT_NUM(0.50);

__memY DSPfract x_history[HISTORY_SIZE] = { FRACT_NUM(0.00),FRACT_NUM(0.00) };
__memY DSPfract y_history[HISTORY_SIZE] = { FRACT_NUM(0.00),FRACT_NUM(0.00) };

__memY DSPfract x_history1[HISTORY_SIZE] = { FRACT_NUM(0.00),FRACT_NUM(0.00) };
__memY DSPfract y_history1[HISTORY_SIZE] = { FRACT_NUM(0.00),FRACT_NUM(0.00) };

__memY DSPfract x_history2[HISTORY_SIZE] = { FRACT_NUM(0.00),FRACT_NUM(0.00) };
__memY DSPfract y_history2[HISTORY_SIZE] = { FRACT_NUM(0.00),FRACT_NUM(0.00) };

__memY DSPfract x_history3[HISTORY_SIZE] = { FRACT_NUM(0.00),FRACT_NUM(0.00) };
__memY DSPfract y_history3[HISTORY_SIZE] = { FRACT_NUM(0.00),FRACT_NUM(0.00) };


__memY DSPfract x_history4[HISTORY_SIZE] = { FRACT_NUM(0.00),FRACT_NUM(0.00) };
__memY DSPfract y_history4[HISTORY_SIZE] = { FRACT_NUM(0.00),FRACT_NUM(0.00) };

__memX DSPfract leftBuffer[BLOCK_SIZE] = { FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) };
__memX DSPfract rightBuffer[BLOCK_SIZE] = { FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) };



DSPaccum second_order_IIR(DSPfract input,__memX  DSPfract* coefficients,__memY  DSPfract* x_history,__memY  DSPfract* y_history) {

	DSPaccum output = 0;

	output += *coefficients * input;					/* A0 * x(n)     */
	output += *coefficients * input;					/* A0 * x(n)     */

	output += *(coefficients + 1) * *x_history;			/* A1 * x(n-1) */
	output += *(coefficients + 1) * *x_history;			/* A1 * x(n-1) */

	output += *(coefficients + 2) * *(x_history + 1);	/* A2 * x(n-2)   */
	output += *(coefficients + 2) * *(x_history + 1);	/* A2 * x(n-2)   */

	output -= *(coefficients + 4) * *y_history;			/* B1 * y(n-1) */
	output -= *(coefficients + 4) * *y_history;			/* B1 * y(n-1) */

	output -= *(coefficients + 5) * *(y_history + 1);	/* B2 * y(n-2)   */
	output -= *(coefficients + 5) * *(y_history + 1);	/* B2 * y(n-2)   */


	*(y_history + 1) = *y_history;				 /* y(n-2) = y(n-1) */
	*y_history = output;						/* y(n-1) = y(n)   */
	*(x_history + 1) = *x_history;				/* x(n-2) = x(n-1) */
	*x_history = input;							/* x(n-1) = x(n)   */

	return output;
}


void processing() {

	//help buffers after multiple with gain

	__memX DSPfract *leftPtr = &leftBuffer[0];
	__memX DSPfract *rightPtr = &rightBuffer[0];


	__memX DSPfract *leftChannnel = &sampleBuffer[0][0];
	__memX DSPfract *rightChannnel = &sampleBuffer[1][0];
	__memX DSPfract *midleChannnel = &sampleBuffer[2][0];
	__memX DSPfract *leftSurroundChannnel = &sampleBuffer[3][0];
	__memX DSPfract *rightSurroundChannnel = &sampleBuffer[4][0];

	int i;

	for (i = 0; i < BLOCK_SIZE; i++)
	{

		*leftPtr++ = *leftChannnel * gain;

		*rightPtr++ = *rightChannnel * gain;

		//surround output left
		*leftSurroundChannnel++ = *leftChannnel * gain;

		//surround output right
		*rightSurroundChannnel++ = *rightChannnel * gain;


		leftChannnel++;
		rightChannnel++;

	}

	//return pointers to regular value

	leftPtr = &leftBuffer[0];
	rightPtr = &rightBuffer[0];


	leftChannnel = &sampleBuffer[0][0];
	rightChannnel = &sampleBuffer[1][0];
	midleChannnel = &sampleBuffer[2][0];



	// processing for left channel
	if (mode1 == 0)
	{
		if (mode2 == 0)
		{
			for (i = 0; i < BLOCK_SIZE; i++)
			{
				//HPF
				*leftChannnel++ = second_order_IIR(*leftPtr++, coefficients_HPF, x_history, y_history);

			}

		}
		if (mode2 == 1)
		{
			for (i = 0; i < BLOCK_SIZE; i++)
			{
				//PASS
				*leftChannnel++ = *leftPtr++;
			}
		}

	}

	if (mode1 == 1)
	{
		for (i = 0; i < BLOCK_SIZE; i++)
		{
			//LPF
			*leftChannnel++ = second_order_IIR(*leftPtr, coefficients_LPF, x_history1, y_history1);
			*midleChannnel++= second_order_IIR(*leftPtr, coefficients_LPF, x_history2, y_history2);
			leftPtr++;

		}
	}

	//processing for right channel

	if (mode1 == 0)
	{
		if (mode2 == 0)
		{
			for (i = 0; i < BLOCK_SIZE; i++)
			{
				//HPF
				*rightChannnel++ = second_order_IIR(*rightPtr++, coefficients_HPF, x_history3, y_history3);
			}

		}
		if (mode2 == 1)
		{
			for (i = 0; i < BLOCK_SIZE; i++)
			{
				//PASS
				*rightChannnel++ = *rightPtr++;
			}
		}

	}

	if (mode1 == 1)
	{
		for (i = 0; i < BLOCK_SIZE; i++)
		{
			//LPF
			*rightChannnel++ = second_order_IIR(*rightPtr++, coefficients_LPF, x_history4, y_history4);
		}
	}

}



int main(int argc, char *argv[])
 {
    WAVREAD_HANDLE *wav_in;
    WAVWRITE_HANDLE *wav_out;
	
	char WavInputName[256];
	char WavOutputName[256];
	
    int nChannels;
    int nChannelsOut = 5;

	int bitsPerSample;
    int sampleRate;
    int iNumSamples;
    int i;

	// Init channel buffers
	for(i=0; i<MAX_NUM_CHANNEL; i++)
		memset(&sampleBuffer[i],FRACT_NUM(0),BLOCK_SIZE);
    
	// Open input wav file
	//-------------------------------------------------
	strcpy(WavInputName,argv[0]);
	wav_in = cl_wavread_open(WavInputName);
	 if(wav_in == NULL)
    {
        printf("Error: Could not open wavefile.\n");
        return -1;
    }
	//-------------------------------------------------
	
	// Read input wav header
	//-------------------------------------------------

	nChannels = cl_wavread_getnchannels(wav_in);
    bitsPerSample = cl_wavread_bits_per_sample(wav_in);
    sampleRate = cl_wavread_frame_rate(wav_in);
    iNumSamples =  cl_wavread_number_of_frames(wav_in);
	//-------------------------------------------------
	
	// Open output wav file
	//-------------------------------------------------
	strcpy(WavOutputName,argv[1]);
	wav_out = cl_wavwrite_open(WavOutputName, bitsPerSample, nChannelsOut, sampleRate);
	if(!wav_out)
    {
        printf("Error: Could not open wavefile.\n");
        return -1;
    }
	//-------------------------------------------------
	
	// Processing loop
	//-------------------------------------------------	
    {
		int i;
		int j;
		int k;
		int sample;
		
		// exact file length should be handled correctly...
		for(i=0; i<iNumSamples/BLOCK_SIZE; i++)
		{	
			for(j=0; j<BLOCK_SIZE; j++)
			{
				for(k=0; k<nChannels; k++)
				{	
					sample = cl_wavread_recvsample(wav_in);
        			sampleBuffer[k][j] = rbits(sample);
				}
			}

			processing();

			for(j=0; j<BLOCK_SIZE; j++)
			{
				for(k=0; k<nChannelsOut; k++)
				{	
					sample = bitsr(sampleBuffer[k][j]);
					cl_wavwrite_sendsample(wav_out, sample);
				}
			}		
		}
	}
	
	// Close files
	//-------------------------------------------------	
    cl_wavread_close(wav_in);
    cl_wavwrite_close(wav_out);
	//-------------------------------------------------	

    return 0;
 }
