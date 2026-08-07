@echo off
setlocal
rem Builds the main Child Digital Health IG into .\output
rem Run _updatePublisher.bat first to fetch input-cache\publisher.jar
rem
rem NOTE on -Djavax.net.ssl.trustStoreType=Windows-ROOT:
rem   TLS-inspecting antivirus (e.g. Norton Web/Mail Shield) re-signs HTTPS traffic
rem   with a root CA that lives in the Windows certificate store but not in Java's
rem   cacerts, which makes package downloads fail with "PKIX path building failed".
rem   Reading trust roots from the Windows store fixes that. Harmless without it.

if not exist input-cache\publisher.jar (
  echo input-cache\publisher.jar not found - run _updatePublisher.bat first.
  exit /b 1
)

java -Xmx4g -Djavax.net.ssl.trustStoreType=Windows-ROOT ^
  -jar input-cache\publisher.jar -ig ig.ini %*

echo.
echo QA report: qa.html   Output: output\index.html
