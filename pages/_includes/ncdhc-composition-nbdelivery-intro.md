**NCDHC Newborn Delivery Health Interaction Composition Profile**

This profile is used to represent Newborn Delivery Health Interaction as a FHIR document using Composition resource. The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Upload Newborn Delivery Health Interaction FHIR document from jurisdiction system
-   Update existing Newborn Delivery Health Interaction FHIR document



##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Composition must have:**

1.  a status  
1.  a code to represent the document type.
1.  a class code to represent this document as Health Check Assessment document.
1.  a subject ([Patient])
1.  a date (indicating when the details were recorded)
1.	an author (detailing who has recorded the details)
1.  title of the document
1.  a reference to [Encounter] instance.

**Profile specific implementation guidance:**
* Refer to the Base Profile: [NCDHC Base Composition] for more guidance 
* If data for any section/sub-sections are not known or not available, then empty reason SHALL be provided.
* All resources SHALL provide the reference to the profile url used in the resource instance.



#### Examples

- [Newborn Delivery Health Interaction (Request Payload)](ncdhc-nbdelivery-payload.html)


[Composition]: http://hl7.org.au/fhir/base2018Oct/StructureDefinition-au-composition.html
[NCDHC Base Composition]: http://build.fhir.org/ig/hl7au/au-fhir-childhealth/StructureDefinition-ncdhc-composition-base.html
[Patient]: http://build.fhir.org/ig/hl7au/au-fhir-childhealth/StructureDefinition-ncdhc-patient-baby.html
[Encounter]: http://build.fhir.org/ig/hl7au/au-fhir-childhealth/StructureDefinition-ncdhc-encounter.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html


