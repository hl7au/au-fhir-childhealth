

Profile:        NCDHCPatientChild
Parent:         AUBasePatient
Id:             ncdhc-patient-child
Title:          "NCDHC Child Patient"
Description:    "Profile to represent a Child Patient in NCDHC Context"
* name 1..* 
* name.family 1..1 
* gender 1..1
* birthDate 1..1
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


* contact ^slicing.discriminator.type = #pattern
* contact ^slicing.discriminator.path = "relationship"
* contact ^slicing.rules = #open
* contact ^slicing.ordered = false
* contact ^slicing.description = "Slice based on the contact.relationship pattern"
* contact contains
    contactMother 0..1 and
    contactFather 0..1
* contact[contactMother].relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH
* contact[contactFather].relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#FTH

* maritalStatus 0..0
* communication 0..0

* name.given and name.use and name.prefix and name.suffix and name.family and gender and birthDate and identifier[identifierIHI] and identifier[identifierMRN] and contact[contactFather].relationship and contact[contactFather].name and contact[contactMother].relationship and contact[contactMother].name and address and active and extension[patient-birthPlace] and extension[indigenous-status] and birthDate.extension MS



