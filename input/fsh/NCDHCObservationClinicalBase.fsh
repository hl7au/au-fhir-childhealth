Alias:   SCT = http://snomed.info/sct

/*
   ╭─────────────────────────────────────Profile Definiation────────────────────────────────────────╮
   │  To provide details that are applicable to all profiles extending this abstract Base Profile   │
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯
*/

Invariant:  ncdhc-obs-inv-001-val-ar
Description: "If neither of component nor hasMember nor interpretation element is present, then either a value[x] or a data absent reason must be present"
Expression: "component.exists() or interpretation.exists() or value.exists() or hasMember.exists() or dataAbsentReason.exists()"
Severity:   #error

Invariant:  ncdhc-obs-inv-002-exm-pract
Description: "Person who is clinically responsible for the undertaking of the exam shall be present"
Expression: "(dataAbsentReason.empty()) implies (performer.reference.resolve().where($this is PractitionerRole).exists())"
Severity:   #error

Invariant:  ncdhc-obs-inv-003-exm-org
Description: "An organisation which captures the relevant details shall be present"
Expression: "(dataAbsentReason.empty()) implies (performer.reference.resolve().where($this is Organization).exists())"
Severity:   #error

Profile:        NCDHCObservationClinicalBase
Parent:         Observation
Id:             ncdhc-observation-clinical-base
Title:          "NCDHC Clinical Observation Base"
Description:    "This is the base profile for NCDHC Clinical Obsrevation. All NCDHC Observation profiles SHALL extend this profile (vital-sgins profiles are excluded)"
* ^abstract = true
* obeys ncdhc-obs-inv-001-val-ar
* obeys ncdhc-obs-inv-003-exm-org
* obeys ncdhc-obs-inv-002-exm-pract




* code.coding 1..*
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.ordered = false
* code.coding ^slicing.description = "Slice based on the code.coding pattern"
* subject 1..1
* subject only Reference(AUBasePatient)
* focus only Reference(AUBasePatient)
* effective[x] 1..1
* performer only Reference(AUBaseOrganisation or AUBasePractitionerRole or AUBasePatient or AUBaseRelatedPerson or AUBasePractitioner)
* performer ^slicing.discriminator.type = #type
* performer ^slicing.discriminator.path = "$this.resolve()"
* performer ^slicing.rules = #open
* performer ^slicing.ordered = false
* performer ^slicing.description = "Slice based on type:$this.resolve()"
* performer contains
    examiner 0..* and
    legalOrg 0..1
* performer[examiner] only Reference(NCDHCPractitionerRole)
* performer[legalOrg] only Reference(NCDHCOrganisation)

* dataAbsentReason from https://healthterminologies.gov.au/fhir/ValueSet/ncdhc-observation-valueabsentreason-1  (extensible)

