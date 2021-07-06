Alias:   SCT = http://snomed.info/sct
Alias:   UCUM = http://unitsofmeasure.org
Alias:   LOINC = http://loinc.org

/*
   ╭─────────────────────────────────────Profile Definiation────────────────────────────────────────╮
   │  To provide profile specific details that goes inside Differential element                     │
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯
*/

Profile:        NCDHCObservationVitalSignBodyHeight
Parent:         observation-bodyheight
Id:             ncdhc-observation-vitalsign-bodyheight
Title:          "NCDHC Observation Vital Sign Body Height Profile"
Description:    "Observation profile to record the height (or length for infants) of the patient"

* code.coding contains
   bodyLenghtSNOMED-CT 0..1 and birthLenghtSNOMED-CT 0..1 and bodyHeightSNOMED-CT 0..1  
* code.coding[bodyLenghtSNOMED-CT].system  = SCT (exactly)
* code.coding[bodyLenghtSNOMED-CT].code  = #248334005 (exactly)

* code.coding[birthLenghtSNOMED-CT].system = SCT (exactly)
* code.coding[birthLenghtSNOMED-CT].code = #169886007 (exactly)

* code.coding[bodyHeightSNOMED-CT].system  = SCT (exactly)
* code.coding[bodyHeightSNOMED-CT].code  = #50373000 (exactly)
* subject only Reference(AUBasePatient)
* performer only Reference(AUBaseOrganisation or AUBasePractitionerRole or AUBasePatient or AUBaseRelatedPerson or AUBasePractitioner)
* interpretation from https://healthterminologies.gov.au/fhir/ValueSet/ncdhc-observation-interpretation-1 (extensible)
* code.coding and interpretation MS

/*
   ╭─────────────────────────────────────Profile Specific Samples──────────────────────────────────╮
   │  To provide profile specific samples covering multiuple scenarios                             │
   ╰───────────────────────────────────────────────────────────────────────────────────────────────╯
*/

