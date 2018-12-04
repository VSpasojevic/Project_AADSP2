#include <stdlib.h>
#include <string.h>
#include "WAVheader.h"
#include "stdfix_emu.h"
#include "fixed_point_math.h"
#include "common.h"

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 5

DSPfract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
//trebaju mi koeficjenti, gain, iir2, mode, processing funkcija,
//skaliranje svih koeficijenata

//DSPfract coefficients_HPF[6] = { FRACT_NUM(0.95079708342298741000),FRACT_NUM(-1.90159416684597480000), FRACT_NUM(0.95079708342298741000),FRACT_NUM(1.00000000000000000000),FRACT_NUM(-1.89933342011226030000),FRACT_NUM(0.90416304087280419000) };
//DSPfract coefficients_LPF[6] = { FRACT_NUM(0.00461263667292077970), FRACT_NUM(0.00922527334584155940), FRACT_NUM(0.00461263667292077970),FRACT_NUM(1.00000000000000000000),FRACT_NUM(-1.79909640948466820000),FRACT_NUM(0.81751240338475795000) };


DSPfract coefficients_HPF[6] = { FRACT_NUM(0.475398541711493705),FRACT_NUM(-0.9507970834229874), FRACT_NUM(0.475398541711493705),FRACT_NUM(0.50000000000000000000),FRACT_NUM(-0.94966671005613015),FRACT_NUM(0.452081520436402095) };
DSPfract coefficients_LPF[6] = { FRACT_NUM(0.00230631833646038985), FRACT_NUM(0.0046126366729207797), FRACT_NUM(0.00230631833646038985),FRACT_NUM(0.50000000000000000000),FRACT_NUM(-0.8995482047423341),FRACT_NUM(0.408756201692378975) };


DSPint mode1 = 1;
DSPint mode2 = 0;


DSPfract gain = FRACT_NUM(0.50);

DSPfract x_history[2] = { FRACT_NUM(0.00),FRACT_NUM(0.00) };
DSPfract y_history[2] = { FRACT_NUM(0.00),FRACT_NUM(0.00) };

DSPfract x_history1[2] = { FRACT_NUM(0.00),FRACT_NUM(0.00) };
DSPfract y_history1[2] = { FRACT_NUM(0.00),FRACT_NUM(0.00) };

DSPfract x_history2[2] = { FRACT_NUM(0.00),FRACT_NUM(0.00) };
DSPfract y_history2[2] = { FRACT_NUM(0.00),FRACT_NUM(0.00) };

DSPfract x_history3[2] = { FRACT_NUM(0.00),FRACT_NUM(0.00) };
DSPfract y_history3[2] = { FRACT_NUM(0.00),FRACT_NUM(0.00) };


DSPfract x_history4[2] = { FRACT_NUM(0.00),FRACT_NUM(0.00) };
DSPfract y_history4[2] = { FRACT_NUM(0.00),FRACT_NUM(0.00) };



DSPaccum second_order_IIR(DSPfract input, DSPfract* coefficients, DSPfract* x_history, DSPfract* y_history) {
	
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

DSPfract leftBuffer[BLOCK_SIZE] = { FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) };
DSPfract rightBuffer[BLOCK_SIZE] = { FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) ,FRACT_NUM(0.00),FRACT_NUM(0.00) };

void processing() {

	//help buffers after multiple with gain

	DSPfract *leftPtr = &leftBuffer[0];
	DSPfract *rightPtr = &rightBuffer[0];


	DSPfract *leftChannnel = &sampleBuffer[0][0];
	DSPfract *rightChannnel = &sampleBuffer[1][0];
	DSPfract *midleChannnel = &sampleBuffer[2][0];
	DSPfract *leftSurroundChannnel = &sampleBuffer[3][0];
	DSPfract *rightSurroundChannnel = &sampleBuffer[4][0];



	for (int i = 0; i < BLOCK_SIZE; i++)
	{

		*(leftPtr + i) = *(leftChannnel + i) * gain;

		*(rightPtr + i)= *(rightChannnel + i) * gain;

		//surround output left
		*(leftSurroundChannnel + i) = *(leftChannnel + i) * gain;

		//surround output right
		*(rightSurroundChannnel + i)= *(rightChannnel + i) * gain;
		
		/*leftPtr++;
		leftChannnel++;
		rightPtr++;
		rightChannnel++;
		*/
	}

	// processing for left channel
	if (mode1 == 0)
	{
		if (mode2 == 0)
		{
			for (DSPint i = 0; i < BLOCK_SIZE; i++)
			{
				//HPF
				*(leftChannnel + i) = second_order_IIR(*(leftPtr + i), coefficients_HPF, x_history, y_history);

			}

		}
		if (mode2 == 1)
		{
			for (DSPint i = 0; i < BLOCK_SIZE; i++)
			{
				//PASS
				*(leftChannnel + i) = *(leftPtr + i);
			}
		}

	}

	if (mode1 == 1)
	{
		for (DSPint i = 0; i < BLOCK_SIZE; i++)
		{
			//LPF
			*(leftChannnel + i) = second_order_IIR(*(leftPtr + i), coefficients_LPF, x_history1, y_history1);
			*(midleChannnel + i)= second_order_IIR(*(leftPtr + i), coefficients_LPF, x_history2, y_history2);

		}
	}

	//processing for right channel

	if (mode1 == 0)
	{
		if (mode2 == 0)
		{
			for (DSPint i = 0; i < BLOCK_SIZE; i++)
			{
				//HPF
				*(rightChannnel + i) = second_order_IIR(*(rightPtr + i), coefficients_HPF, x_history3, y_history3);
			}

		}
		if (mode2 == 1)
		{
			for (DSPint i = 0; i < BLOCK_SIZE; i++)
			{
				//PASS
				*(rightChannnel + i) = *(rightPtr + i);
			}
		}

	}

	if (mode1 == 1)
	{
		for (DSPint i = 0; i < BLOCK_SIZE; i++)
		{
			//LPF
			*(rightChannnel + i) = second_order_IIR(*(rightPtr + i), coefficients_LPF, x_history4, y_history4);
		}
	}

}



int main(int argc, char* argv[])
{
	FILE *wav_in = NULL;
	FILE *wav_out = NULL;
	char WavInputName[256];
	char WavOutputName[256];
	WAV_HEADER inputWAVhdr, outputWAVhdr;


	for (DSPint i = 0; i<MAX_NUM_CHANNEL; i++)
		for (DSPint j = 0; j<BLOCK_SIZE; j++)
			sampleBuffer[i][j] = FRACT_NUM(0.0);



	// Open input and output wav files
	//-------------------------------------------------
	strcpy(WavInputName, argv[1]);
	wav_in = OpenWavFileForRead(WavInputName, "rb");
	strcpy(WavOutputName, argv[2]);
	wav_out = OpenWavFileForRead(WavOutputName, "wb");
	//-------------------------------------------------


	//read arguments command line

	mode1 = atoi(argv[3]);

	mode2 = atoi(argv[4]);

	gain = atof(argv[5]);
	
	// Read input wav header
	//-------------------------------------------------
	ReadWavHeader(wav_in, inputWAVhdr);
	//-------------------------------------------------

	// Set up output WAV header
	//-------------------------------------------------	
	outputWAVhdr = inputWAVhdr;
	outputWAVhdr.fmt.NumChannels = 5; // change number of channels out me 

									  //outputWAVhdr.fmt.NumChannels = inputWAVhdr.fmt.NumChannels; // change number of channels

	DSPint oneChannelSubChunk2Size = inputWAVhdr.data.SubChunk2Size / inputWAVhdr.fmt.NumChannels;
	DSPint oneChannelByteRate = inputWAVhdr.fmt.ByteRate / inputWAVhdr.fmt.NumChannels;
	DSPint oneChannelBlockAlign = inputWAVhdr.fmt.BlockAlign / inputWAVhdr.fmt.NumChannels;

	outputWAVhdr.data.SubChunk2Size = oneChannelSubChunk2Size*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.ByteRate = oneChannelByteRate*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.BlockAlign = oneChannelBlockAlign*outputWAVhdr.fmt.NumChannels;


	// Write output WAV header to file
	//-------------------------------------------------
	WriteWavHeader(wav_out, outputWAVhdr);


	// Processing loop
	//-------------------------------------------------	
	{
		DSPint sample;
		DSPint BytesPerSample = inputWAVhdr.fmt.BitsPerSample / 8;
		const double SAMPLE_SCALE = -(double)(1 << 31);		//2^31
		DSPint iNumSamples = inputWAVhdr.data.SubChunk2Size / (inputWAVhdr.fmt.NumChannels*inputWAVhdr.fmt.BitsPerSample / 8);

		// exact file length should be handled correctly...
		for (DSPint i = 0; i < iNumSamples / BLOCK_SIZE; i++)
		{
			for (DSPint j = 0; j < BLOCK_SIZE; j++)
			{
				for (DSPint k = 0; k < inputWAVhdr.fmt.NumChannels; k++)
				{
					sample = 0; //debug
					fread(&sample, BytesPerSample, 1, wav_in);
					sample = sample << (32 - inputWAVhdr.fmt.BitsPerSample); // force signextend
					sampleBuffer[k][j] = sample / SAMPLE_SCALE;				// scale sample to 1.0/-1.0 range		
				}
			}
			//my function
			processing();

			for (DSPint j = 0; j<BLOCK_SIZE; j++)
			{
				for (DSPint k = 0; k<outputWAVhdr.fmt.NumChannels; k++)
				{
					sample = sampleBuffer[k][j].toLong();	// crude, non-rounding 			
					sample = sample >> (32 - inputWAVhdr.fmt.BitsPerSample);
					fwrite(&sample, outputWAVhdr.fmt.BitsPerSample / 8, 1, wav_out);
				}
			}
		}
	}

	// Close files
	//-------------------------------------------------	
	fclose(wav_in);
	fclose(wav_out);
	//-------------------------------------------------	

	return 0;
}