**NCDHC Encounter Profile**

This profile sets minimum expectations for the [Encounter] resource to record, search and fetch encounter details recorded during multiple health interactions of the baby patient. It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile. The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

This is an administrative Encounter Profile. The following are example usage scenarios for the National Child Digital Health interactions. This encounter is not used for any Clinical reference. 
profile:

-   Query for  encounter of the baby patient
-   Record encounter of the baby patient

##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation. Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Encounter must have:**

1.  a status  
1.  a SNOMED code which tells you what recorded.
1.  a subject (Patient)
1.  a time indicating when the patient was discharge    

**Profile specific implementation guidance:**

* To be added


#### Examples

To be added

[Encounter]: http://hl7.org/fhir/encounter.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html
