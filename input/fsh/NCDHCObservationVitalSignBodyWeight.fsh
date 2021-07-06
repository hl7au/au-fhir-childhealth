Alias:   SCT = http://snomed.info/sct
Alias:   UCUM = http://unitsofmeasure.org
Alias:   LOINC = http://loinc.org

/*
   ╭─────────────────────────────────────Profile Definiation────────────────────────────────────────╮
   │  To provide profile specific details that goes inside Differential element                     │
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯
*/

Profile:        NCDHCObservationVitalSignBodyWeight
Parent:         observation-bodyweight
Id:             ncdhc-observation-vitalsign-bodyweight
Title:          "NCDHC Observation Vital Sign Body Weight Profile"
Description:    "Observation profile to record the body weight of the patient"

* code.coding contains
   bodyWeightSNOMED-CT 0..1 MS   
* code.coding[bodyWeightSNOMED-CT].system = SCT
* code.coding[bodyWeightSNOMED-CT].code = #27113001
* subject only Reference(AUBasePatient)
* performer only Reference(AUBaseOrganisation or AUBasePractitionerRole or AUBasePatient or AUBaseRelatedPerson or AUBasePractitioner)
* interpretation from https://healthterminologies.gov.au/fhir/ValueSet/ncdhc-observation-interpretation-1 (extensible)
* interpretation 0..1 MS

/*
   ╭─────────────────────────────────────Profile Specific Samples──────────────────────────────────╮
   │  To provide profile specific samples covering multiuple scenarios                             │
   ╰───────────────────────────────────────────────────────────────────────────────────────────────╯
*/


