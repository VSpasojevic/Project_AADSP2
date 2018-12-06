@echo off

SET CONFIGURATION=Debug
SET PROJECT_NAME=Projekat

SET PROJECT_ULD="../model_3/WavTemplate/output/standalone/WavTemplate.uld"



: TO DO: Add additional command line args for your program
SET LPF_ARGS= "1" "0" "0.5"
SET HPF_ARGS= "0" "0" "0.5"
SET PASS_ARGS= "0" "1" "0.5"

SET COMPARE="PCMCompare.exe"


: Delete log files first.

del /Q OutCmp\*
del /Q OutStreams\*


: For each Test stream


for %%f in (..\TestStreams\*.*) do ( 
	@echo Running tests for stream for low pass filter: %%~nf%%~xf

	: Execute Model 0, Model 1 and Model 2
	echo     model 0
    "..\model0\ProcessWavFile\Debug\ProcessWavFile.exe" "%%f" "OutStreams/%%~nf_model0LPF.wav" %LPF_ARGS% 
	echo     model 1
	"..\model1\ProcessWavFile\Debug\ProcessWavFile.exe" "%%f" "OutStreams/%%~nf_model1LPF.wav" %LPF_ARGS% 
	echo     model 2
	"..\model2\ProcessWavFile\Debug\ProcessWavFile.exe" "%%f" "OutStreams/%%~nf_model2LPF.wav" %LPF_ARGS%

	: Generate new logs
	%COMPARE% OutStreams//%%~nf_model0LPF.wav OutStreams//%%~nf_model1LPF.wav 2> OutCmp//%%~nf_Model0LPF_vs_Model1LPF.txt
	%COMPARE% OutStreams//%%~nf_model1LPF.wav OutStreams//%%~nf_model2LPF.wav 2> OutCmp//%%~nf_Model1LPF_vs_Model2LPF.txt
		
	@echo Running tests for stream for high pass filter: %%~nf%%~xf

	: Execute Model 0, Model 1 and Model 2
	echo     model 0
    "..\model0\ProcessWavFile\Debug\ProcessWavFile.exe" "%%f" "OutStreams/%%~nf_model0HPF.wav" %HPF_ARGS% 
	echo     model 1
	"..\model1\ProcessWavFile\Debug\ProcessWavFile.exe" "%%f" "OutStreams/%%~nf_model1HPF.wav" %HPF_ARGS% 
	echo     model 2
	"..\model2\ProcessWavFile\Debug\ProcessWavFile.exe" "%%f" "OutStreams/%%~nf_model2HPF.wav" %HPF_ARGS%

	: Generate new logs
	%COMPARE% OutStreams//%%~nf_model0HPF.wav OutStreams//%%~nf_model1HPF.wav 2> OutCmp//%%~nf_Model0HPF_vs_Model1HPF.txt
	%COMPARE% OutStreams//%%~nf_model1HPF.wav OutStreams//%%~nf_model2HPF.wav 2> OutCmp//%%~nf_Model1HPF_vs_Model2HPF.txt
		
	@echo Running tests for stream for pass through: %%~nf%%~xf

	: Execute Model 0, Model 1 and Model 2
	echo     model 0
    "..\model0\ProcessWavFile\Debug\ProcessWavFile.exe" "%%f" "OutStreams/%%~nf_model0PASS.wav" %PASS_ARGS% 
	echo     model 1
	"..\model1\ProcessWavFile\Debug\ProcessWavFile.exe" "%%f" "OutStreams/%%~nf_model1PASS.wav" %PASS_ARGS% 
	echo     model 2
	"..\model2\ProcessWavFile\Debug\ProcessWavFile.exe" "%%f" "OutStreams/%%~nf_model2PASS.wav" %PASS_ARGS%

	
	
	: Generate new logs
	%COMPARE% OutStreams//%%~nf_model0PASS.wav OutStreams//%%~nf_model1PASS.wav 2> OutCmp//%%~nf_Model0PASS_vs_Model1PASS.txt
	%COMPARE% OutStreams//%%~nf_model1PASS.wav OutStreams//%%~nf_model2PASS.wav 2> OutCmp//%%~nf_Model1PASS_vs_Model2PASS.txt
	
	
)
