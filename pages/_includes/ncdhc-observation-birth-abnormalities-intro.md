**NCDHC Abnormalities noted at birth Observation Profile**

This profile sets minimum expectations for the [Observation] resource to record, search and fetch Physical problems identified with the baby at, or shortly after birth. E.g. cleft lip/palate, extensive bruising, cephalohematoma etc. associated with a patient. It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile. The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Query for birth abnormalities of the baby patient
-   Record birth abnormalities of the baby patient

##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation. Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Observation must have:**

1.  a status  
1.  a SNOMED code which tells you what was recorded.
1.  a subject (Patient)
1.  a time indicating when the details was taken
1.	a performer detailing who has recorded the details.


**Profile specific implementation guidance:**

- [Abnormalities noted at birth ](ncdhc-observation-birth-abnormalities-example.html)



#### Examples

To be added

[Observation]: http://hl7.org/fhir/observation.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html
