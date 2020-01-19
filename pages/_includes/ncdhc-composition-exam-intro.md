**NCDHC Newborn Exam Health Interaction Composition Profile**

This profile is used to represent NCDHC Newborn Exam Health Interaction as a FHIR document using Composition resource. The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Query for NCDHC Newborn Exam Health Interaction Health Interaction FHIR document
-   Upload NCDHC Newborn Exam Health Interaction Health Interaction FHIR document
-   Update existing NCDHC Newborn Exam Health Interaction FHIR document

##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Composition must have:**

1.  a status  
1.  a LOINC code (to represent the document type)
1.  a subject (Patient)
1.  a date (indicating when the details were taken)
1.	an author (detailing who has recorded the details)
1.  title of the document
1.  applicable sections and entries as mentioned in the table below

**Profile specific implementation guidance:**

* Client system SHALL fill up all tye sections and subsections as defined in the profile. If data for any section/sub-sections are not known or not available, then empty reason should be provided.


#### Examples

To be added

[Composition]: http://hl7.org.au/fhir/base2018Oct/StructureDefinition-au-composition.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html


