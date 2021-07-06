Profile:        NCDHCPractitionerRole
Parent:         AUBasePractitionerRole
Id:             ncdhc-practitioner-role
Title:          "NCDHC PractitionerRole"
Description:    "Profile to represent a PractitionerRole in NCDHC Context"
* practitioner 1..1
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[0].path = "type"
* identifier ^slicing.discriminator[1].type = #value
* identifier ^slicing.discriminator[1].path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the identifer profile"
* identifier contains
    identifierNPIO 0..1 and
    identifierLSI 0..1
* identifier[identifierNPIO] only AUNationalProviderIdentifierAtOrganisation
* identifier[identifierLSI] only AUEmployeeNumber
* organization only Reference(NCDHCOrganisation)
* practitioner only Reference(NCDHCPractitioner)


* active and practitioner and organization and identifier[identifierNPIO] and identifier[identifierLSI] and code and specialty MS



