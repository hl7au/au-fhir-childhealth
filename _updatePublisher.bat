@echo off
setlocal
if not exist input-cache mkdir input-cache
echo Downloading the latest HL7 FHIR IG Publisher to input-cache\publisher.jar ...
powershell -NoProfile -Command ^
  "Invoke-WebRequest -Uri 'https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar' -OutFile 'input-cache\publisher.jar'"
if errorlevel 1 goto fail
java -jar input-cache\publisher.jar -version
goto :eof

:fail
echo.
echo Download failed. If this is a TLS/certificate error, see the note in _genonce.bat.
exit /b 1
