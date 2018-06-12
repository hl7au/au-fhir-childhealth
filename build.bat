@echo off 

echo You have to edit the path to the publisher...
pause
java -Xmx1024m -jar "C:\igpublisher\org.hl7.fhir.igpublisher.jar" -ig ig.json -watch

pause
