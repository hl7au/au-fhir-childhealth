**NCDHC Discharge Family Member History Profile**

This profile sets minimum expectations for the [Condition] resource to record, search and fetch family history recorded during the discharge of the baby patient. It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile. The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Query for family history of the baby patient
-   Record family history of the baby patient

##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation. Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Condition may have:**

1.  a status  
1.  a SNOMED code which tells you what condition was recorded
1.  a patient reference
1.  a relationship of the family memeber to the patient in context


**Profile specific implementation guidance:**

* To be added




#### Examples

- [Family History](FamilyMemberHistory-family-history-discharge.html)

[Condition]: http://hl7.org/fhir/familymemberhistory.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html
