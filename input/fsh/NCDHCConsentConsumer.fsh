Alias:   SCT = http://snomed.info/sct

/*
   ╭─────────────────────────────────────Profile Definiation────────────────────────────────────────╮
   │  To provide details that are applicable to all profiles extending this abstract Base Profile   │
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯
*/


Profile:        NCDHCConsentConsumer
Parent:         Consent
Id:             ncdhc-consent-consumer
Title:          "NCDHC Consent Consumer"
Description:    "This profile is used to represent various administrative and operational consent applicable to NCDHC program using Consent resource."

* patient only Reference(NCDHCPatientChild)
* category 1..1 
* dateTime 1..1
* performer 1..1
* provision 1..1
* performer only Reference(NCDHCOrganisation or AUBasePatient or NCDHCRelatedPerson or NCDHCPractitionerRole or NCDHCPractitioner or NCDHCRelatedPerson)
* organization only Reference(NCDHCOrganisation)
* provision.actor.reference only Reference(Group or Device or NCDHCCareTeam or AUBasePatient or NCDHCOrganisation or NCDHCRelatedPerson or NCDHCPractitionerRole or NCDHCPractitioner or NCDHCRelatedPerson)

* status and category and patient and dateTime and scope and performer and organization and policy and provision.type and provision.period and provision.actor.role and provision.actor.reference and provision.action and provision.data.meaning and provision.data.reference and provision.securityLabel MS