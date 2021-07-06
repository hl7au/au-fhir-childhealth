Alias:   SCT = http://snomed.info/sct 
Alias:   UCUM = http://unitsofmeasure.org
Alias:   LOINC = http://loinc.org
/*
   ╭─────────────────────────────────────Profile Definiation────────────────────────────────────────╮
   │  To provide profile specific details that goes inside Differential element                     │
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯
*/



Profile:        NCDHCCompositionConsumerDocumentBase
Parent:         AUBaseComposition
Id:             ncdhc-composition-consumer-document-base
Title:          "NCDHC Composition Consumer Document Base"
Description:    "This profile is used to represent the Compsition associated with a FHIR Consumer Document"

* ^abstract = true
* type.coding 1..*
* category.coding 1..*
* subject only Reference(AUBasePatient)
* subject 1..1
* encounter only Reference(AUBaseEncounter)
* author only Reference(AUBasePatient or AUBaseRelatedPerson or Device)
* attester.party only Reference(AUBasePatient or AUBaseRelatedPerson or NCDHCOrganisation or NCDHCPractitioner or NCDHCPractitionerRole)

* attester.party ^short = "Consumer who entered the data"
* attester.time ^short = "Date and Time of consumer attesting the information"
