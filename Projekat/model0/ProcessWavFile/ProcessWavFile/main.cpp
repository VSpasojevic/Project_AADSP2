#include <stdlib.h>
#include <string.h>
#include "WAVheader.h"

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8

double sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
//trebaju mi koeficjenti, gain, iir2, mode, processing funkcija,

double coefficients_HPF[6] = { 0.95079708342298741000, -1.90159416684597480000, 0.95079708342298741000,1.00000000000000000000,-1.89933342011226030000,0.90416304087280419000 };
double coefficients_LPF[6] = { 0.00461263667292077970, 0.00922527334584155940, 0.00461263667292077970,1.00000000000000000000,-1.79909640948466820000,0.81751240338475795000 };

short mode1 = 0;
short mode2 = 0;


double gain = 0.50;

double x_history[2];
double y_history[2];

double x_history1[BLOCK_SIZE];
double y_history1[BLOCK_SIZE];

double x_history2[BLOCK_SIZE];
double y_history2[BLOCK_SIZE];

double x_history3[BLOCK_SIZE];
double y_history3[BLOCK_SIZE];


double x_history4[BLOCK_SIZE];
double y_history4[BLOCK_SIZE];



double second_order_IIR(double input, double* coefficients, double* x_history, double* y_history) {
	double output = 0;

	output += coefficients[0] * input;			 /* A0 * x(n)     */
	output += coefficients[1] * x_history[0];	/* A1 * x(n-1) */
	output += coefficients[2] * x_history[1];	/* A2 * x(n-2)   */
	output -= coefficients[4] * y_history[0];	/* B1 * y(n-1) */
	output -= coefficients[5] * y_history[1];	/* B2 * y(n-2)   */


	y_history[1] = y_history[0];				 /* y(n-2) = y(n-1) */
	y_history[0] = output;						/* y(n-1) = y(n)   */
	x_history[1] = x_history[0];				/* x(n-2) = x(n-1) */
	x_history[0] = input;						/* x(n-1) = x(n)   */

	return output;
}

void processing(double inputBuffer[][BLOCK_SIZE], double outputBuffer[][BLOCK_SIZE]) {

	//help buffers after multiple with gain

	double leftBuffer[BLOCK_SIZE];
	double rightBuffer[BLOCK_SIZE];


	for (int i = 0; i < BLOCK_SIZE; i++)
	{

		leftBuffer[i] = inputBuffer[0][i] * gain;

		rightBuffer[i] = inputBuffer[1][i] * gain;

		//surround output left
		outputBuffer[3][i] = inputBuffer[0][i] * gain;

		//surround output right
		outputBuffer[4][i] = inputBuffer[1][i] * gain;

	}

	// processing for left channel
	if (mode1 == 0)
	{
		if (mode2 == 0)
		{
			for (int i = 0; i < BLOCK_SIZE; i++)
			{
				//HPF
				outputBuffer[0][i] = second_order_IIR(leftBuffer[i], coefficients_HPF, x_history, y_history);

			}

		}
		if (mode2 == 1)
		{
			for (int i = 0; i < BLOCK_SIZE; i++)
			{
				//PASS
				outputBuffer[0][i] = leftBuffer[i];
			}
		}

	}

	if (mode1 == 1)
	{
		for (int i = 0; i < BLOCK_SIZE; i++)
		{
			//LPF
			outputBuffer[0][i] = second_order_IIR(leftBuffer[i], coefficients_LPF, x_history1, y_history1);
			outputBuffer[2][i] = second_order_IIR(leftBuffer[i], coefficients_LPF, x_history2, y_history2);

		}
	}

	//processing for right channel

	if (mode1 == 0)
	{
		if (mode2 == 0)
		{
			for (int i = 0; i < BLOCK_SIZE; i++)
			{
				//HPF
				outputBuffer[1][i] = second_order_IIR(rightBuffer[i], coefficients_HPF, x_history3, y_history3);
			}

		}
		if (mode2 == 1)
		{
			for (int i = 0; i < BLOCK_SIZE; i++)
			{
				//PASS
				outputBuffer[1][i] = rightBuffer[i];
			}
		}

	}

	if (mode1 == 1)
	{
		for (int i = 0; i < BLOCK_SIZE; i++)
		{
			//LPF
			outputBuffer[1][i] = second_order_IIR(rightBuffer[i], coefficients_LPF, x_history4, y_history4);
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

	// Init channel buffers
	for (int i = 0; i<MAX_NUM_CHANNEL; i++)
		memset(&sampleBuffer[i], 0, BLOCK_SIZE);

	// Open input and output wav files
	//-------------------------------------------------
	strcpy(WavInputName, argv[1]);
	wav_in = OpenWavFileForRead(WavInputName, "rb");
	strcpy(WavOutputName, argv[2]);
	wav_out = OpenWavFileForRead(WavOutputName, "wb");
	//-------------------------------------------------

	// Read input wav header
	//-------------------------------------------------
	ReadWavHeader(wav_in, inputWAVhdr);
	//-------------------------------------------------

	// Set up output WAV header
	//-------------------------------------------------	
	outputWAVhdr = inputWAVhdr;
	outputWAVhdr.fmt.NumChannels = 5; // change number of channels out me 

									  //outputWAVhdr.fmt.NumChannels = inputWAVhdr.fmt.NumChannels; // change number of channels

	int oneChannelSubChunk2Size = inputWAVhdr.data.SubChunk2Size / inputWAVhdr.fmt.NumChannels;
	int oneChannelByteRate = inputWAVhdr.fmt.ByteRate / inputWAVhdr.fmt.NumChannels;
	int oneChannelBlockAlign = inputWAVhdr.fmt.BlockAlign / inputWAVhdr.fmt.NumChannels;

	outputWAVhdr.data.SubChunk2Size = oneChannelSubChunk2Size*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.ByteRate = oneChannelByteRate*outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.BlockAlign = oneChannelBlockAlign*outputWAVhdr.fmt.NumChannels;


	// Write output WAV header to file
	//-------------------------------------------------
	WriteWavHeader(wav_out, outputWAVhdr);


	// Processing loop
	//-------------------------------------------------	
	{
		int sample;
		int BytesPerSample = inputWAVhdr.fmt.BitsPerSample / 8;
		const double SAMPLE_SCALE = -(double)(1 << 31);		//2^31
		int iNumSamples = inputWAVhdr.data.SubChunk2Size / (inputWAVhdr.fmt.NumChannels*inputWAVhdr.fmt.BitsPerSample / 8);

		// exact file length should be handled correctly...
		for (int i = 0; i < iNumSamples / BLOCK_SIZE; i++)
		{
			for (int j = 0; j < BLOCK_SIZE; j++)
			{
				for (int k = 0; k < inputWAVhdr.fmt.NumChannels; k++)
				{
					sample = 0; //debug
					fread(&sample, BytesPerSample, 1, wav_in);
					sample = sample << (32 - inputWAVhdr.fmt.BitsPerSample); // force signextend
					sampleBuffer[k][j] = sample / SAMPLE_SCALE;				// scale sample to 1.0/-1.0 range		
				}
			}
			//my function
			processing(sampleBuffer, sampleBuffer);

			for (int j = 0; j<BLOCK_SIZE; j++)
			{
				for (int k = 0; k<outputWAVhdr.fmt.NumChannels; k++)
				{
					sample = sampleBuffer[k][j] * SAMPLE_SCALE;	// crude, non-rounding 			
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