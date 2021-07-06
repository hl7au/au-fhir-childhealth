/*
   ╭─────────────────────────────────────Profile Definiation────────────────────────────────────────╮
   │  To provide profile specific details that goes inside Differential element                     │
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯
*/

Profile:        NCDHCCareTeam
Parent:         CareTeam
Id:             ncdhc-care-team
Title:          "NCDHC Care Team"
Description:    "This profile defines a care Team"

* subject only Reference(NCDHCPatientExpectantMonther or NCDHCPatientChild)

* participant.member only Reference(NCDHCOrganisation or NCDHCPractitionerRole or NCDHCPatientExpectantMonther or NCDHCPatientChild or NCDHCRelatedPerson or NCDHCPractitioner)

* identifier and  status and  category and name and encounter and subject and  note and participant.role and participant.member MS

/*
   ╭─────────────────────────────────────Profile Specific Samples──────────────────────────────────╮
   │  To provide profile specific samples covering multiuple scenarios                             │
   ╰───────────────────────────────────────────────────────────────────────────────────────────────╯
*/


