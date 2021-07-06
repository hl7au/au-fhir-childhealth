Alias:   SCT = http://snomed.info/sct 
Alias:   UCUM = http://unitsofmeasure.org
Alias:   LOINC = http://loinc.org
/*
   ╭─────────────────────────────────────Profile Definiation────────────────────────────────────────╮
   │  To provide profile specific details that goes inside Differential element                     │
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯
*/



Profile:        NCDHCCompositionClinicalDocumentBase
Parent:         AUBaseComposition
Id:             ncdhc-composition-clinical-document-base
Title:          "NCDHC Composition Clinical Document Base"
Description:    "This profile is used to represent the Compsition associated with a FHIR Clinical Document"

* ^abstract = true
* type.coding 1..*
* category.coding 1..*
* subject only Reference(AUBasePatient)
* subject 1..1
* encounter only Reference(AUBaseEncounter)
* encounter 1..1
* author only Reference(NCDHCOrganisation or NCDHCPractitioner or NCDHCPractitionerRole or Device)
* attester.party only Reference(NCDHCOrganisation or NCDHCPractitioner or NCDHCPractitionerRole)
* custodian only Reference(NCDHCOrganisation)
* attester.party ^short = "Person who clinically signed off the data"
* attester.time ^short = "Date and Time of Examiner attesting the information"