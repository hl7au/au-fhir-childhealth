**NCDHC Immunization Profile**

This profile sets minimum expectations for the [Immunization] resource to record, search and fetch immunisation associated with a patient. It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile. The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Query for Immunization administered on the patient
-   Record Immunization administered on the patient

##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Immunization must have:**

1.  a status  
1.  indicate if the Immunization was given or not
1.  a SNOMED code (indicating what was recorded)
1.  a subject (Patient)
1.  a date (indicating when the immunisation was given)
1.	a performer(who has given the immunisation)

**Profile specific implementation guidance:**

* To be added


#### Examples

- [Immunisation](ncdhc-observation-immunisation-normal-example.html)

[Immunization]: http://hl7.org.au/fhir/base2018Oct/StructureDefinition-au-immunisation.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html
