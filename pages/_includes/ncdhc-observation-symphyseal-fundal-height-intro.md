**NCDHC Symphyseal Fundal Height Observation Profile**

This profile defines  how to represent Symphyseal Fundal Height in FHIR using a standard SNOMED CT AU code. It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile. 
The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Query for Symphyseal Fundal Height Assessment of patient
-   Record Symphyseal Fundal Height Assessment of the patient

##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Observation must have:**

1.  a status  
1.  a SNOMED code (indicating what is being recorded)
1.  a subject ([Expectant Mother Patient])
1.  a time (indicating when the details were recorded)
1.	a performer (detailing who has recorded the details)


#### Examples

- [Fundal Height Observation](ncdhc-observation-symphyseal-fundal-height-example.html)

[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html


[Expectant Mother Patient]: StructureDefinition-ncdhc-patient-expectant-mother.html	