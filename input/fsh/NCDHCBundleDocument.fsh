Alias:   SCT = http://snomed.info/sct

/*
   ╭─────────────────────────────────────Base Profile Definiation───────────────────────────────────╮
   │  To provide details that are applicable to all profiles extending this abstract Base Profile   │
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯
*/


Profile:        NCDHCBundleDocument
Parent:         Bundle
Id:             ncdhc-bundle-document
Title:          "NCDHC FHIR Document Base"
Description:    "NCDHC FHIR document profile using Bundle resource"

* ^abstract = true
* type = http://hl7.org/fhir/bundle-type#document (exactly)
* total 0..0
* identifier 1..1
* identifier ^short = "Document Identifier"
* timestamp 1..1
* timestamp ^short = "Document creation time"
* entry 1..*

* entry ^slicing.discriminator[0].type = #value
* entry ^slicing.discriminator[0].path = "fullUrl"
* entry ^slicing.discriminator[1].type = #type
* entry ^slicing.discriminator[1].path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slice based on the resource type and fullurl"
* entry contains
    compositionEntry 1..1  
* entry[compositionEntry].fullUrl 1..1
* entry[compositionEntry].resource 1..1
* entry[compositionEntry].resource ^short = "Composition should be the first resource in the Bundle document"
* entry[compositionEntry].search 0..0
* entry[compositionEntry].request 0..0
* entry[compositionEntry].response 0..0
* entry ^short = "Document must have atleast one entry"
* entry.fullUrl 1..1
* entry.resource 1..1
* entry.resource ^short = "Other resource entries in the document."
* entry.search 0..0
* entry.request 0..0
* entry.response 0..0

* entry[compositionEntry].resource only
    NCDHCCompositionClinicalDocumentBase or NCDHCCompositionConsumerDocumentBase


/*
   ╭─────────────────────────────────────Specific Profile Definition────────────────────────────────╮
   │                                NCDHCBundleClinicalObservationDocument
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯


Profile:        NCDHCBundleClinicalObservationDocument
Parent:         NCDHCBundleDocument
Id:             ncdhc-bundle-clinical-observation-document
Title:          "NCDHC FHIR Clinical Observation Document"
Description:    "NCDHC FHIR Clinical Observation document profile using Bundle resource"

* entry[compositionEntry].resource only
    NCDHCCompositionClinicalObservation
* entry[compositionEntry].resource ^short = "Clinical Observation Composition Profile"

* identifier.system and identifier.value and type and timestamp and entry.fullUrl and entry.resource MS


/*
   ╭─────────────────────────────────────Specific Profile Definition────────────────────────────────╮
   │                                NCDHCBundleChildPresentedInED
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯



Profile:        NCDHCBundleChildPresentedInED
Parent:         NCDHCBundleDocument
Id:             ncdhc-bundle-child-presented-in-ed-document
Title:          "NCDHC FHIR Child Presented In ED Document"
Description:    "NCDHC FHIR Child Presented In ED document profile using Bundle resource"

* entry[compositionEntry].resource only
    NCDHCCompositionChildPresentedInED
* entry[compositionEntry].resource ^short = "Child Presented In ED Composition Profile"

* identifier.system and identifier.value and type and timestamp and entry.fullUrl and entry.resource MS


/*
   ╭─────────────────────────────────────Specific Profile Definition────────────────────────────────╮
   │                                NCDHCBundlePregnancyOutcomeDocument
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯



Profile:        NCDHCBundlePregnancyOutcomeDocument
Parent:         NCDHCBundleDocument
Id:             ncdhc-bundle-pregnancy-outcome-document
Title:          "NCDHC FHIR Woman's Pregnancy Outcome Document"
Description:    "NCDHC FHIR Woman's Pregnancy Outcome document profile using Bundle resource"

* entry[compositionEntry].resource only
    NCDHCCompositionpregnancyOutcome
* entry[compositionEntry].resource ^short = "Woman's Pregnancy Outcome Composition Profile"

* identifier.system and identifier.value and type and timestamp and entry.fullUrl and entry.resource MS

/*
   ╭─────────────────────────────────────Specific Profile Definition────────────────────────────────╮
   │                                NCDHCBundlePregnancyHistoryDocument
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯



Profile:        NCDHCBundlePregnancyHistoryDocument
Parent:         NCDHCBundleDocument
Id:             ncdhc-bundle-pregnancy-history-document
Title:          "NCDHC FHIR Woman's Pregnancy History Document"
Description:    "NCDHC FHIR Woman's Pregnancy History document profile using Bundle resource"

* entry[compositionEntry].resource only
    NCDHCCompositionPregnancyHistory
* entry[compositionEntry].resource ^short = "Woman's Pregnancy History Composition Profile"

* identifier.system and identifier.value and type and timestamp and entry.fullUrl and entry.resource MS

/*
   ╭─────────────────────────────────────Specific Profile Definition────────────────────────────────╮
   │                                NCDHCBundleConsumerEnteredEncounterDocument
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯


Profile:        NCDHCBundleConsumerEnteredEncounterDocument
Parent:         NCDHCBundleDocument
Id:             ncdhc-bundle-consumer-entered-encounter-document
Title:          "NCDHC FHIR Consumer Entered Encounter Document"
Description:    "NCDHC FHIR Consumer Entered Encounter document profile using Bundle resource"

* entry[compositionEntry].resource only
    NCDHCCompositionConsumerEnteredEncounter
* entry[compositionEntry].resource ^short = "Consumer Entered Encounter Composition Profile"

* identifier.system and identifier.value and type and timestamp and entry.fullUrl and entry.resource MS

/*
   ╭─────────────────────────────────────Specific Profile Definition────────────────────────────────╮
   │                                NCDHCBundleConsumerEnteredMilestonesDocument
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯



Profile:        NCDHCBundleConsumerEnteredMilestonesDocument
Parent:         NCDHCBundleDocument
Id:             ncdhc-bundle-consumer-entered-milestone-document
Title:          "NCDHC FHIR Consumer Entered Milestone Document"
Description:    "NCDHC FHIR Consumer Entered Milestone document profile using Bundle resource"

* entry[compositionEntry].resource only
    NCDHCCompositionConsumerEnteredMilestone
* entry[compositionEntry].resource ^short = "Consumer Entered Milestone Composition Profile"

* identifier.system and identifier.value and type and timestamp and entry.fullUrl and entry.resource MS

/*
   ╭─────────────────────────────────────Specific Profile Definition────────────────────────────────╮
   │                                NCDHCBundleFHAndRFConsumerEnteredDocument
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯



Profile:        NCDHCBundleFHAndRFConsumerEnteredDocument
Parent:         NCDHCBundleDocument
Id:             ncdhc-bundle-fh-rf-consumer-entered-document
Title:          "NCDHC FHIR Consumer Entered Family History and Risk factor Document"
Description:    "NCDHC FHIR Consumer Entered Family History and Risk factor document profile using Bundle resource"

* entry[compositionEntry].resource only
    NCDHCCompositionFHRFConsumerEntered
* entry[compositionEntry].resource ^short = "Consumer Entered Family History and Risk factor Composition Profile"

* identifier.system and identifier.value and type and timestamp and entry.fullUrl and entry.resource MS



/*
   ╭─────────────────────────────────────Specific Profile Definiation───────────────────────────────╮
   │                                   NCDHCBundlenPregnancyIssuesAndPlans
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯



Profile:        NCDHCBundlenPregnancyIssuesAndPlans
Parent:         NCDHCBundleDocument
Id:             ncdhc-bundle-preg-issues-plan-document
Title:          "NCDHC FHIR Pregnancy Complication Plan Document"
Description:    "NCDHC FHIR Pregnancy Complication Plan document profile using Bundle resource"

* entry[compositionEntry].resource only
    NCDHCCompositionPregnancyIssuesAndPlans
* entry[compositionEntry].resource ^short = "Pregnancy Complication Plan Composition Profile"

* identifier.system and identifier.value and type and timestamp and entry.fullUrl and entry.resource MS


/*
   ╭─────────────────────────────────────Specific Profile Definiation───────────────────────────────╮
   │                                   NCDHCBundlenPregnancyManagementPlan
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯



Profile:        NCDHCBundlenPregnancyManagementPlanDocument
Parent:         NCDHCBundleDocument
Id:             ncdhc-bundle-preg-management-plan-document
Title:          "NCDHC FHIR Pregnancy Management Plan Document"
Description:    "NCDHC FHIR Pregnancy Management Plan document profile using Bundle resource"

* entry[compositionEntry].resource only
    NCDHCCompositionPregnancyManagementPlans
* entry[compositionEntry].resource ^short = "Pregnancy Management Plan Composition Profile"

* identifier.system and identifier.value and type and timestamp and entry.fullUrl and entry.resource MS

/*
   ╭─────────────────────────────────────Specific Profile Definiation───────────────────────────────╮
   │                                   NCDHCBundleParentalObservationDocument
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯



Profile:        NCDHCBundleParentalObservationDocument
Parent:         NCDHCBundleDocument
Id:             ncdhc-bundle-parental-observation-document
Title:          "NCDHC FHIR Parental Observation Document"
Description:    "NCDHC FHIR Parental Observation document profile using Bundle resource"

* entry[compositionEntry].resource only
    NCDHCCompositionParentalObservation
* entry[compositionEntry].resource ^short = "Parental Observation Composition Profile"

* identifier.system and identifier.value and type and timestamp and entry.fullUrl and entry.resource MS

/*
   ╭─────────────────────────────────────Specific Profile Definiation───────────────────────────────╮
   │                                NCDHCBundleNewbornBloodspotScreenDocument
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯



Profile:        NCDHCBundleNewbornBloodspotScreenDocument
Parent:         NCDHCBundleDocument
Id:             ncdhc-bundle-newborn-bloodspot-screen-document
Title:          "NCDHC FHIR Newborn Bloodspot Screen Document"
Description:    "NCDHC FHIR Newborn Bloodspot Screen document profile using Bundle resource"

* entry[compositionEntry].resource only
    NCDHCCompositionNewbornBloodspotScreen
* entry[compositionEntry].resource ^short = "Newborn Bloodspot Screen Composition Profile"

* identifier.system and identifier.value and type and timestamp and entry.fullUrl and entry.resource MS

/*
   ╭─────────────────────────────────────Specific Profile Definiation───────────────────────────────╮
   │                                NCDHCBundleNewbornHearingScreenDocument
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯



Profile:        NCDHCBundleNewbornHearingScreenDocument
Parent:         NCDHCBundleDocument
Id:             ncdhc-bundle-newborn-hearing-screen-document
Title:          "NCDHC FHIR Newborn Hearing Screen Document"
Description:    "NCDHC FHIR Newborn Hearing Screen document profile using Bundle resource"

* entry[compositionEntry].resource only
    NCDHCCompositionNewbornHearingScreen
* entry[compositionEntry].resource ^short = "Newborn Hearing Screen Composition Profile"

* identifier.system and identifier.value and type and timestamp and entry.fullUrl and entry.resource MS

/*
   ╭─────────────────────────────────────Specific Profile Definiation───────────────────────────────╮
   │                                   NCDHCBundleNewbornDischargeDocument
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯


Profile:        NCDHCBundleNewbornDischargeDocument
Parent:         NCDHCBundleDocument
Id:             ncdhc-bundle-newborn-discharge-document
Title:          "NCDHC FHIR Newborn Discharge Document"
Description:    "NCDHC FHIR Newborn Discharge document profile using Bundle resource"

* entry[compositionEntry].resource only
    NCDHCCompositionNewbornDischarge
* entry[compositionEntry].resource ^short = "Newborn Discharge Composition Profile"

* identifier.system and identifier.value and type and timestamp and entry.fullUrl and entry.resource MS

/*
   ╭─────────────────────────────────────Specific Profile Definiation───────────────────────────────╮
   │                                   NCDHCBundleNewbornExamDocument
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯


Profile:        NCDHCBundleNewbornExamDocument
Parent:         NCDHCBundleDocument
Id:             ncdhc-bundle-newborn-exam-document
Title:          "NCDHC FHIR Newborn Examination Document"
Description:    "NCDHC FHIR Newborn Examination document profile using Bundle resource"

* entry[compositionEntry].resource only
    NCDHCCompositionNewbornExamination
* entry[compositionEntry].resource ^short = "Newborn Examination Composition Profile"


* identifier.system and identifier.value and type and timestamp and entry.fullUrl and entry.resource MS

/*
   ╭─────────────────────────────────────Specific Profile Definiation───────────────────────────────╮
   │                                   NCDHCBundleEDBDocument
   ╰────────────────────────────────────────────────────────────────────────────────────────────────╯


Profile:        NCDHCBundleEDBDocument
Parent:         NCDHCBundleDocument
Id:             ncdhc-bundle-edb-document
Title:          "NCDHC FHIR Estimated Date of Birth Document"
Description:    "NCDHC FHIR Estimated Date of Birth document profile using Bundle resource"

* entry[compositionEntry].resource only
    NCDHCCompositionEDB
* entry[compositionEntry].resource ^short = "Estimated Date of Birth Composition Profile"


* identifier.system and identifier.value and type and timestamp and entry.fullUrl and entry.resource MS
*/
