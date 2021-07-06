Alias:   SCT = http://snomed.info/sct

/*
   ╭─────────────────────────────────────Profile Definiation────────────────────────────────────────╮
   │  To provide details that are applicable to all profiles extending this abstract Base Profile   │
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯
*/


Profile:        NCDHCQuestionnaireResponseBase
Parent:         QuestionnaireResponse
Id:             ncdhc-questionnaire-response-base
Title:          "NCDHC QuestionnaireResponse Base"
Description:    "This is the base NCDHC QuestionnaireResponse base profile to gather information in Question Response form"

* ^abstract = true
* subject only Reference( NCDHCPatientChild or NCDHCPatientExpectantMonther )
* author only Reference( NCDHCPatientChild or NCDHCPatientExpectantMonther or NCDHCPractitionerRole or Device or NCDHCPractitioner or RelatedPerson or NCDHCOrganisation )


