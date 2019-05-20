**NCDHC Newborn Delivery Health Interaction Composition Profile**

This profile is used to represent a Consolidated Birth View using FHIR document. The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Consumer is viewing a summary of Birth event.
-   Provider is viewing a summary of Birth event.


##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Composition must have:**

1.  a status  
1.  a LOINC code to represent the document type. Optional Class codes as required
1.  a subject (Patient)
1.  a date indicating when the details was taken
1.	a author detailing who has recorded the details.
1.  title of the document

**Profile specific implementation guidance:**

* Client system may request more details which are not provided in the summary view. Please visit OperationDefinition for more details.



#### Examples

- [Consolidated Birth Summary View](ncdhc-birth-consolidated-view-summary.html)


[Composition]: http://hl7.org.au/fhir/base2018Oct/StructureDefinition-au-composition.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html


