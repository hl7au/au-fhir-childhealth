Alias:   SCT = http://snomed.info/sct

/*
   ╭─────────────────────────────────────Profile Definiation────────────────────────────────────────╮
   │  To provide details that are applicable to all profiles extending this abstract Base Profile   │
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯
*/


Profile:        NCDHCEncounterDPHR
Parent:         AUBaseEncounter
Id:             ncdhc-encounter-dphr
Title:          "NCDHC Encounter DPHR"
Description:    "This is the base NCDHC Encounter profile for DPHR Health Interactions."

* subject only Reference(NCDHCPatientExpectantMonther)
* period.end 1..1 
* participant.individual only Reference(NCDHCPractitionerRole or NCDHCPractitioner or NCDHCRelatedPerson)
* serviceProvider only Reference(NCDHCOrganisation)
* location.location ^short = "Venue of where the encounter took place"
* period ^short = "Date and time of the encounter"
* participant.individual ^short = "To record First Name, Last Name and Designation of the performer"

* appointment ^short = "Next Visit Date and Time"

* participant and subject and appointment and status and type and period and location and serviceProvider MS