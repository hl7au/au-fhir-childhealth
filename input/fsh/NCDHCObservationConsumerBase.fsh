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

Invariant:  ncdhc-obs-inv-003-perf-consumer
Description: "A reference to the Patient or RelatedPerson shall be present"
Expression: "(dataAbsentReason.empty()) implies (performer.reference.resolve().exists())"
Severity:   #error

Profile:        NCDHCObservationConsumerBase
Parent:         Observation
Id:             ncdhc-observation-consumer-base
Title:          "NCDHC Consumer Observation Base"
Description:    "This is the base profile for NCDHC Consumer Obsrevation. All NCDHC Consumer Observation profiles SHALL extend this profile (vital-sgins profiles are excluded)"
* ^abstract = true
* obeys ncdhc-obs-inv-001-val-ar
* obeys ncdhc-obs-inv-003-perf-consumer

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
* performer only Reference(AUBasePatient or AUBaseRelatedPerson)
* dataAbsentReason from https://healthterminologies.gov.au/fhir/ValueSet/ncdhc-observation-valueabsentreason-1 (extensible)

