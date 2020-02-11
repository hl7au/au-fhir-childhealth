@echo off 

echo Clearing Files...

cd output
del *.* /s/ q
cd..
cd temp
del *.* /s/ q
cd..
cd qa
del *.* /s/ q
cd..


echo Building profiles...


java.exe -Xmx4096m -jar "..\au-fhir-base-jar\r4\org.hl7.fhir.publisher.jar" -ig ig-dphr.json -watch

pause
