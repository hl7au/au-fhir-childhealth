**NCDHC Method Of Delivery Observation Profile**

This profile sets minimum expectations for the [Observation] resource to record, search and fetch birth type/method of delivery associated with the baby patient. It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile. The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Query for Birth Type of the baby patient
-   Record Birth Type of the baby patient

##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation. Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Observation must have:**

1.  a status  
1.  a SNOMED code (indicating what was recorded)
1.  a subject (Patient)
1.  a time (indicating when the details were recorded)
1.	a performer (detailing who has recorded the details)
1.  a CodeableConcept representation of the birth types reported (Applicable types are defined in the ValueSet: http://hl7.org.au/fhir/ch/v1/ValueSet/ncdhc-type-of-birth-1 )
    

#### Examples

- [Type of Birth](ncdhc-observation-method-of-delivery-example.html)

[Observation]: http://hl7.org/fhir/observation.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html
