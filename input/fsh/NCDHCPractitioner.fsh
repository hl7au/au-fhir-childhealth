

Profile:        NCDHCPractitioner
Parent:         AUBasePractitioner
Id:             ncdhc-practitioner
Title:          "NCDHC Practitioner"
Description:    "Profile to represent a Practitioner in NCDHC Context"
* name 1..* 
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[0].path = "type"
* identifier ^slicing.discriminator[1].type = #value
* identifier ^slicing.discriminator[1].path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the identifer profile"
* identifier contains
    identifierHPII 0..1 
* identifier[identifierHPII] only AUHPII



* name and active and qualification and identifier[identifierHPII] MS

