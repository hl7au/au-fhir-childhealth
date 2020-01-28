**NCDHC BMI Observation Profile**

This profile sets minimum expectations for the [Observation] resource to record, search and fetch BMI assessment outcome of the child. It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile. The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Query for BMI assessment outcome of the patient
-   Record BMI assessment outcome of the patient

##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation. Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Observation must have:**

1.  a status  
1.  a SNOMED code (indicating what was recorded)
1.  a subject ([Patient])
1.  a time (indicating when the details were recorded)
1.	a performer (detailing who has recorded the details)





#### Examples

- [BMI Normal Observation](ncdhc-observation-bmi-normal-example.html)

[Patient]: http://build.fhir.org/ig/hl7au/au-fhir-childhealth/StructureDefinition-ncdhc-patient-baby.html