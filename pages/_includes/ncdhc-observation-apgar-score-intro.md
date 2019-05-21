**NCDHC APGAR Score Observation Profile**

This profile sets minimum expectations for the [Observation] resource to record, search and fetch 1 minute, 5 minutes and 10 minutes APGAR scores associated with a patient. It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile. The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Query for APGAR score of the baby patient
-   Record APGAR score of the baby patient

##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Observation must have:**

1.  a status  
1.  a SNOMED code which tells you what is being recorded.
1.  a subject (Patient)
1.  a time indicating when the details was recorded.
1.	a performer detailing who has recorded the details.
1.  a numeric result value and standard UCUM unit which is taken from the “UCUM Unit Code” column in the table below.
    -   note: if there is no numeric result then you have to supply a reason

**Profile specific implementation guidance:**

* The server **SHALL** accept the Gestational age in days and convert it to weeks and days in the 'comments' element while persisting .



#### Examples

- [APGAR score (1 Minute)](ncdhc-observation-apgar-score-1m-example.html)

[Observation]: http://hl7.org/fhir/observation.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html
