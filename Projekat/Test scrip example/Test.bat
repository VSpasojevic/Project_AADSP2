@echo off

SET CONFIGURATION=Debug
SET PROJECT_NAME=Projekat


: TO DO: Add additional command line args for your program
SET ADDITIONAL_ARGS= "1" "0" "0.5"
SET COMPARE="PCMCompare.exe"


: Delete log files first.

del /Q OutCmp\*
del /Q OutStreams\*


: For each Test stream


for %%f in (..\TestStreams\*.*) do ( 
	@echo Running tests for stream: %%~nf%%~xf

	: Execute Model 0, Model 1 and Model 2
	echo     model 0
    "..\model0\ProcessWavFile\Debug\ProcessWavFile.exe" "%%f" "OutStreams/%%~nf_model0.wav" %ADDITIONAL_ARGS% 
	echo     model 1
	"..\model1\ProcessWavFile\Debug\ProcessWavFile.exe" "%%f" "OutStreams/%%~nf_model1.wav" %ADDITIONAL_ARGS% 
	echo     model 2
	"..\model2\ProcessWavFile\Debug\ProcessWavFile.exe" "%%f" "OutStreams/%%~nf_model2.wav" %ADDITIONAL_ARGS%

	
	

	: Generate new logs
	%COMPARE% OutStreams//%%~nf_model0.wav OutStreams//%%~nf_model1.wav 2> OutCmp//%%~nf_Model0_vs_Model1.txt
	%COMPARE% OutStreams//%%~nf_model1.wav OutStreams//%%~nf_model2.wav 2> OutCmp//%%~nf_Model1_vs_Model2.txt
	%COMPARE% OutStreams//%%~nf_model2.wav OutStreams//%%~nf_model3.wav 2> OutCmp//%%~nf_Model2_vs_Model3.txt

	
)
