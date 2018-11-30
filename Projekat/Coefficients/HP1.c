/**************************************************************
WinFilter version 0.8
http://www.winfilter.20m.com
akundert@hotmail.com

Filter type: High Pass
Filter model: Butterworth
Filter order: 2
Sampling Frequency: 44 KHz
Cut Frequency: 0.500000 KHz
Coefficents Quantization: float

Z domain Zeros
z = 1.000000 + j 0.000000
z = 1.000000 + j 0.000000

Z domain Poles
z = 0.949667 + j -0.047918
z = 0.949667 + j 0.047918
***************************************************************/
#define NCoef 2
float iir(float NewSample) {
    float ACoef[NCoef+1] = {
        0.95079708342298741000,-1.90159416684597480000,0.95079708342298741000
    };

    float BCoef[NCoef+1] = {
        1.00000000000000000000,-1.89933342011226030000,0.90416304087280419000
    };

    static float y[NCoef+1]; //output samples
    static float x[NCoef+1]; //input samples
    int n;

    //shift the old samples
    for(n=NCoef; n>0; n--) {
       x[n] = x[n-1];
       y[n] = y[n-1];
    }

    //Calculate the new output
    x[0] = NewSample;
    y[0] = ACoef[0] * x[0];
    for(n=1; n<=NCoef; n++)
        y[0] += ACoef[n] * x[n] - BCoef[n] * y[n];
    
    return y[0];
}
