Profile:        NCDHCOrganisation
Parent:         AUBaseOrganisation
Id:             ncdhc-organisation
Title:          "NCDHC Organisation"
Description:    "Profile to represent a Organisation in NCDHC Context"
* name 1..1
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[0].path = "type.coding"
* identifier ^slicing.discriminator[1].type = #value
* identifier ^slicing.discriminator[1].path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the identifer profile"
* identifier contains
    identifierHPIO 0..1
* identifier[identifierHPIO] only AUHPIO


* name and identifier[identifierHPIO] and active and address MS


