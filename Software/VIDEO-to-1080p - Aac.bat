@echo off
path=C:\Program Files\ffmpeg\bin;C:\Windows\System32
echo -------------------------=========== SEPARATOR =============-------------------------
echo Lead-in
	echo LostByteSoft Version 2025-08-19-07-09-22
	echo Converter : 720p - Aac
	echo Started: %date% %time%
		setlocal EnableExtensions
		rem Get start time:
		for /F "tokens=1-4 delims=:.," %%a in ("%time%") do (
		set /A "start=(((%%a*60)+1%%b %% 100)*60+1%%c %% 100)*100+1%%d %% 100"
		)
	echo/
echo -------------------------=========== SEPARATOR =============-------------------------
echo Select and file name

	set dialog="about:<input type=file id=FILE><script>FILE.click();new ActiveXObject
	set dialog=%dialog%('Scripting.FileSystemObject').GetStandardStream(1).WriteLine(FILE.value);
	set dialog=%dialog%close();resizeTo(0,0);</script>"
	for /f "tokens=* delims=" %%p in ('mshta.exe %dialog%') do set "file=%%p"
	echo selected  file is : "%file%"
	echo/
	set /p name=Please enter the save name : 
	echo/
	echo Save file name will be : %name%-1080p.x264.10b.Sdr-aac.mkv
	echo/
	ping localhost -n 1 >nul

echo -------------------------=========== SEPARATOR =============-------------------------
echo Convert
	echo/
	ffmpeg -loglevel error -v error -stats -i "%file%" -vf scale=1920x1080:flags=lanczos,format=yuv420p -crf 24 -preset faster -tune fastdecode -c:a aac "%name%-1080p.x264.10b.Sdr-aac.mkv"
	echo/

echo -------------------------=========== SEPARATOR =============-------------------------
echo Lead-out
	echo Completed: %date% %time%
		for /F "tokens=1-4 delims=:.," %%a in ("%time%") do (
		set /A "end=(((%%a*60)+1%%b %% 100)*60+1%%c %% 100)*100+1%%d %% 100"
		)
		set /A elapsed=end-start
		set /A hh=elapsed/(60*60*100), rest=elapsed%%(60*60*100), mm=rest/(60*100), rest%%=60*100, ss=rest/100
		if %mm% lss 10 set mm=0%mm%
		if %ss% lss 10 set ss=0%ss%
	echo Elapsed time (h:m:s) : %hh%:%mm%:%ss%
	echo/
	pause
	echo/
	timeout /t 3
	exit

## -------------------------===== Start of eula =====-------------------------

	End-user license agreement (eula)

 	JUST DO WHAT THE F*** YOU WANT WITH THE PUBLIC LICENSE
 	
 	Version 3.1415926532 (January 2022)
 	
 	TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
    	
	Everyone is permitted to copy and distribute verbatim or modified copies of
 	this license document.
 	
 	As is customary and in compliance with current global and interplanetary
 	regulations, the author of these pages disclaims all liability for the
 	consequences of the advice given here, in particular in the event of partial
 	or total destruction of the material, Loss of rights to the manufacturer
 	warranty, electrocution, drowning, divorce, civil war, the effects of radiation
 	due to atomic fission, unexpected tax recalls or encounters with
 	extraterrestrial beings elsewhere.
 	
 	YOU MUST ACCEPT THESES TERMS OR NOTHING WILL HAPPEN.
 	
 	LostByteSoft no copyright or copyleft we are in the center.
 	
 	You can send your request and your Christmas wishes to this address:
 	
 		Père Noël
 		Pôle Nord, Canada
 		H0H 0H0

## -------------------------===== End of file =====-------------------------
