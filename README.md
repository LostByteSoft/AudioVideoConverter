# AudioVideoConverter
Audio &amp; Video Converter for Windows (In batch style)

Converter for windows (any).

You need FFMPEG installed in your system in C:\Program Files\ffmpeg\bin (or change it in the file path)

Download here : https://ffmpeg.org/download.html#build-windows

# Converter

Convert any audio file to : -acodec libmp3lame -ab 320k -ar 44100 -ac 2

Convert any video file to : format=yuv420p10le -c:v libx264 -crf 24 with aac / dts or no sound

Convert any HDR video file to SDR : format=yuv420p10le -c:v libx264 -crf 24

# File list

FILE-to-mp3.bat

HDR-to-SDR - Aac.bat

HDR-to-SDR - Dts.bat

HDR-to-SDR - NoSound.bat

VIDEO-to-720p - Aac.bat

VIDEO-to-1080p - Aac.bat

VIDEO-to-1080p - Dts.bat

VIDEO-to-2160p - Aac.bat
