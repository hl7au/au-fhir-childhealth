

Profile:        NCDHCPatientExpectantMonther
Parent:         AUBasePatient
Id:             ncdhc-patient-expectant-mother
Title:          "NCDHC Expectant Mother Patient"
Description:    "Profile to represent a Expectant Mother Patient in NCDHC Context"
* name 1..* 
* name.family 1..1 
* gender 1..1
* birthDate 0..1
* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[0].path = "type"
* identifier ^slicing.discriminator[1].type = #value
* identifier ^slicing.discriminator[1].path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the identifer profile"
* identifier contains
    identifierIHI 1..1 and
    identifierMRN 0..* 
* identifier[identifierIHI] only AUIHI
* identifier[identifierMRN] only AUMedicalRecordNumber
* address only AustralianAddress

* name.given and name.use and name.prefix and name.suffix and name.family and gender and birthDate and identifier[identifierIHI] and identifier[identifierMRN] and address and active and extension[indigenous-status] and birthDate.extension MS



