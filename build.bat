@echo off 

echo You have to edit the path to the publisher...
pause
java.exe -Xmx1024m -jar "..\au-fhir-base\org.hl7.fhir.igpublisher.jar" -ig ig.json -watch

pause
