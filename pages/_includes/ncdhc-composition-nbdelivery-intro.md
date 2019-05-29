**NCDHC Newborn Delivery Health Interaction Composition Profile**

This profile is used to represent Newborn Delivery Health Interaction as a FHIR document using Composition resource. The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Upload Newborn Delivery Health Interaction FHIR document from jurisdiction system
-   Update existing Newborn Delivery Health Interaction FHIR document
-   Consumers to view the details of the birth delivery
-   Non-Jurisdictional user to view birth details


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

* Client system should fill-up all sections and subsections as defined in the profile. If data for any section/entries are not known or not available, then empty reason should be provided.



#### Examples

- [View Newborn Delivery Document](ncdhc-composition-nbdelivery-example.html)
- [Newborn Delivery Health Interaction (Request Payload)](ncdhc-bundle-transaction-nbdelivery-request-payload.html)

[Composition]: http://hl7.org.au/fhir/base2018Oct/StructureDefinition-au-composition.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html


