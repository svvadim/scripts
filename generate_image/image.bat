ECHO OFF
set INPUTFILENAME=%1
set /a INPUTFILESIZE=%~z1
set /a OUTPUTFILESIZE=%2*1024*1024
set /a RESULTSIZE= %OUTPUTFILESIZE%-%INPUTFILESIZE%

fsutil file createNew %DATE%.bin %RESULTSIZE%
copy /b %INPUTFILENAME%+%DATE%.bin out_%1
del %DATE%.bin
@echo file out_%1 created.