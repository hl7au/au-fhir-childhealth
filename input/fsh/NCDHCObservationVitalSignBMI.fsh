Alias:   SCT = http://snomed.info/sct
Alias:   UCUM = http://unitsofmeasure.org
Alias:   LOINC = http://loinc.org

/*
   ╭─────────────────────────────────────Profile Definiation────────────────────────────────────────╮
   │  To provide profile specific details that goes inside Differential element                     │
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯
*/

Profile:        NCDHCObservationVitalSignBMI
Parent:         observation-bmi
Id:             ncdhc-observation-vitalsign-bmi
Title:          "NCDHC Observation Vital Sign BMI Profile"
Description:    "Observation profile for a system calculated body mass index of the patient"

* code.coding contains
   bmiSNOMED-CT 0..1 MS   
* code.coding[bmiSNOMED-CT].system = SCT
* code.coding[bmiSNOMED-CT].code = #60621009
* subject only Reference(AUBasePatient)
* performer only Reference(AUBaseOrganisation or AUBasePractitionerRole or AUBasePatient or AUBaseRelatedPerson or AUBasePractitioner)
* interpretation from https://healthterminologies.gov.au/fhir/ValueSet/ncdhc-observation-interpretation-1 (extensible)
* interpretation 0..1 MS

/*
   ╭─────────────────────────────────────Profile Specific Samples──────────────────────────────────╮
   │  To provide profile specific samples covering multiuple scenarios                             │
   ╰───────────────────────────────────────────────────────────────────────────────────────────────╯
*/

