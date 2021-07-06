Alias:   SCT = http://snomed.info/sct
Alias:   UCUM = http://unitsofmeasure.org
Alias:   LOINC = http://loinc.org

/*
   ╭─────────────────────────────────────Profile Definiation────────────────────────────────────────╮
   │  To provide profile specific details that goes inside Differential element                     │
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯
*/

Profile:        NCDHCObservationVitalSignHeadCircumference
Parent:         observation-headcircum
Id:             ncdhc-observation-vitalsign-head-circumference
Title:          "NCDHC Observation Vital Sign Head Circumference Profile"
Description:    "Observation profile to record  the head circumference of the patient"

* code.coding contains
   headCircumferenceSNOMED-CT 0..1 MS and
   headCircumferenceBirthSNOMED-CT 0..1 MS
* code.coding[headCircumferenceSNOMED-CT].system = SCT
* code.coding[headCircumferenceSNOMED-CT].code = #363812007

* code.coding[headCircumferenceBirthSNOMED-CT].system = SCT
* code.coding[headCircumferenceBirthSNOMED-CT].code = #169876006
* subject only Reference(AUBasePatient)
* performer only Reference(AUBaseOrganisation or AUBasePractitionerRole or AUBasePatient or AUBaseRelatedPerson or AUBasePractitioner)
* interpretation from https://healthterminologies.gov.au/fhir/ValueSet/ncdhc-observation-interpretation-1 (extensible)
* interpretation 0..1 MS

/*
   ╭─────────────────────────────────────Profile Specific Samples──────────────────────────────────╮
   │  To provide profile specific samples covering multiuple scenarios                             │
   ╰───────────────────────────────────────────────────────────────────────────────────────────────╯
*/


