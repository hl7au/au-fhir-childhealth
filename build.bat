@echo off 

echo You have to edit the path to the publisher...
pause
java.exe -Xmx4096m -jar "..\au-fhir-base-jar\r4\org.hl7.fhir.igpublisher.jar" -ig ig.json -watch

pause
