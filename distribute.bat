@ECHO OFF

del /q ChronoTrigger_MSU1.zip

mkdir ChronoTrigger_MSU1

ucon64 -q --snes --chk chrono_msu1.sfc
ucon64 -q --snes --chk chrono_msu1_resume.sfc
ucon64 -q --mki=chrono_original.sfc chrono_msu1.sfc
ucon64 -q --mki=chrono_original.sfc chrono_msu1_resume.sfc

copy chrono_msu1.ips ChronoTrigger_MSU1
copy chrono_msu1_resume.ips ChronoTrigger_MSU1
copy README.txt ChronoTrigger_MSU1
copy chrono_msu1.msu ChronoTrigger_MSU1
copy chrono_msu1.xml ChronoTrigger_MSU1
copy manifest.bml ChronoTrigger_MSU1
copy create_pcm.bat ChronoTrigger_MSU1
copy wav2msu.exe ChronoTrigger_MSU1
copy LavosScream.wav ChronoTrigger_MSU1
copy edit_audio.bat ChronoTrigger_MSU1
copy decode_flac.bat ChronoTrigger_MSU1
copy make_music_pack.bat ChronoTrigger_MSU1
copy flac.exe ChronoTrigger_MSU1
copy sox.exe ChronoTrigger_MSU1
copy *.dll ChronoTrigger_MSU1

"C:\Program Files\7-Zip\7z" a -r ChronoTrigger_MSU1.zip ChronoTrigger_MSU1

del /q chrono_msu1.ips
del /q chrono_msu1_resume.ips
rmdir /s /q ChronoTrigger_MSU1
