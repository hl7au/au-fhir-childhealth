Alias:   SCT = http://snomed.info/sct

/*
   ╭─────────────────────────────────────Profile Definiation────────────────────────────────────────╮
   │  To provide details that are applicable to all profiles extending this abstract Base Profile   │
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯
*/


Profile:        NCDHCEncounterCDHR
Parent:         AUBaseEncounter
Id:             ncdhc-encounter-cdhr
Title:          "NCDHC Encounter CDHR"
Description:    "This is the base NCDHC Encounter profile for CDHR Health Interactions."


* extension[encounter-description] ^short = "Description or comments on the Encounter"
* serviceType from https://healthterminologies.gov.au/fhir/ValueSet/ncdhc-special-care-admissions-1 (extensible)
* subject only Reference(NCDHCPatientChild)
* period.end 1..1 
* participant.individual only Reference(NCDHCPractitionerRole or NCDHCPractitioner or NCDHCRelatedPerson)
* serviceProvider only Reference(NCDHCOrganisation)
* location.location ^short = "Venue of where the encounter took place"
* period ^short = "Date and time of the encounter"
* participant.individual ^short = "To record First Name, Last Name and Designation of the performer"

* participant and subject and status and type and serviceType and period.start and period.end and location and serviceProvider and partOf and extension[encounter-description] and reasonCode MS

