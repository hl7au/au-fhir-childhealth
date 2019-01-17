**NCDHC Medication Administered MedicationStatement Profile**

This profile sets minimum expectations for the [MedicationStatement] resource to record, search and fetch Medication Administered details associated with a patient. It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile. The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Query for medication administered on a patient
-   Record medication administered for a patient

##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each MedicationStatement must have:**

1.  a status  
1.  a medication SNOMED code which tells you what medication was administered
1.  a time indicating when the medication was given
1.  a subject (Patient)
1.  tekn to indicate the medication was applied


**Profile specific implementation guidance:**

* To be added



#### Examples

- [Medication Administered - Vitamin K1](MedicationStatement-vitamink1.html)
- [Medication Administered - Vitamin K2](MedicationStatement-vitamink2.html)
- [Medication Administered - Vitamin K3](MedicationStatement-vitamink3.html)

[MedicationStatement]: http://hl7.org.au/fhir/base2018Oct/StructureDefinition-au-medicationstatement.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html
