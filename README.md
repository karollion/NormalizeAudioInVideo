# NormalizeAudioInVideo

## General info
A way to normalize sound in video files.

* normalizes files .mp4 to `-16 LUFS / -1 dBTP`
* Path where the script should be located: `/d/NormalizeAudioInVideo/`
* Only processes new files from the folder: `do_przetworzenia`
* The resulting files are saved in the folder: `po_normalizacji`
* File names cannot contain the characters `' , "  &` or spaces at the end of the name

## Setup
### Install FFmpeg
#### Download [FFmpeg download](https://ffmpeg.org/download.html)
* Click - `Windows`
* Click `Windows builds by gyan.dev`
* On [gyan.dev](gyan.dev) click `ffmpeg-release-essentials.zip`
#### Unzip
Unpack the ZIP file, e.g. to the folder: C:\ffmpeg
#### Add FFmpeg to PATH
* Windows + R → write sysdm.cpl and click Enter
* Zakładka: Zaawansowane → kliknij Zmienne środowiskowe
* W sekcji Zmienne systemowe znajdź Path → kliknij Edytuj
* Click New and paste: `C:\ffmpeg\bin`
* Click OK
#### Check FFmpeg
```
ffmpeg -version
```

### Run script
```
$ bash normalizuj.sh
```