**NCDHC Breastfeeding Education Observation**

This profile sets minimum expectations for the [Observation] resource to record, search and fetch
the provision of education about breastfeeding to a patient. 
It identifies which core elements, extensions, vocabularies and value sets SHALL be present in the resource when using this profile. 

The profile is at draft stage and under review by the Child Health Working Group.

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   TBA

##### Mandatory Data Elements and Terminology

The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation. Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Observation must have:**

1.  a status  
1.  a SNOMED code (indicating what was observed)
1.  a subject ([Patient as expectatnt mother](http://build.fhir.org/ig/hl7au/au-fhir-childhealth/StructureDefinition-ncdhc-patient-mother.html))
1.  a effective time (indicating when the details were observed)
1.	2 or more performers (including a person and an organisation)
1.  a value or a data absent reason

#### Examples

- [Breastfeed education provided](ncdhc-observation-breastfeeding-education-example.html)

[Observation]: http://hl7.org/fhir/STU3/observation.html