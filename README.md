# AudioVideoConverter

Audio \& Video Converter for Windows (In batch style)

Converter for windows (any).

Tested and used on Windows 11 24H2 26100.6584

Tested with : ffmpeg-2025-03-10-git-87e5da9067-full\_build.7z

Install ffmpeg on : C:\\Program Files\\ffmpeg\\bin

Too many problems with terminal and powershell push me to run an external program to select a file to convert.

You can also run selectfile.exe OR selectfile.ahk and start one conversions afterwards.


# Converter

Convert any audio file to : -acodec libmp3lame -ab 320k -ar 44100 -ac 2

Convert any video file to : format=yuv420p10le -c:v libx264 -crf 24 with aac / dts or no sound

Convert any HDR video file to SDR : format=yuv420p10le -c:v libx264 -crf 24



# File list

FILE-to-dts.bat
FILE-to-mp3.bat

HDR-to-SDR - Aac.bat
HDR-to-SDR - Dts.bat
HDR-to-SDR - NoSound.bat

VIDEO-to-720p - Aac.bat
VIDEO-to-1080p - Aac.bat
VIDEO-to-1080p - Dts.bat
VIDEO-to-2160p - Aac.bat
VIDEO-to-2160p - NoSound.bat

VIDEO-to-x264-10b-Aac.bat
VIDEO-to-x264-10b-Dts.bat

