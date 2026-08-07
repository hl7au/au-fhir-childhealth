@echo off
setlocal
rem Builds the Digital Pregnancy Health Record subset IG into .\output-dphr
rem See _genonce.bat for the note about -Djavax.net.ssl.trustStoreType

if not exist input-cache\publisher.jar (
  echo input-cache\publisher.jar not found - run _updatePublisher.bat first.
  exit /b 1
)

java -Xmx4g -Djavax.net.ssl.trustStoreType=Windows-ROOT ^
  -jar input-cache\publisher.jar -ig ig-dphr.ini %*

echo.
echo QA report: qa-dphr.html   Output: output-dphr\index.html
