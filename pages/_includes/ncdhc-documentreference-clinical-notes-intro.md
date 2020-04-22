**NCDHC Clinical Notes Document Reference Profile**

This profile defines  how to represent clinical notes document in FHIR using a standard SNOMED CT AU code. It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile. 
The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Query for patient's clinical notes 
-   Record patient's clinical notes

##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each DocumentReference must have:**

1.  a type  
1.  a class
1.  a subject ([Expectant Mother Patient])
1.  a content of the clinical notes
1.  a reference to [DPHR Encounter] instance.



#### Examples

- [Clinical Notes](ncdhc-documentreference-clinical-notes-example.html)

[Vitalsign]: http://hl7.org/fhir/STU3/observation-vitalsigns.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html


[Expectant Mother Patient]: StructureDefinition-ncdhc-patient-expectant-mother.html
[DPHR Encounter]: StructureDefinition-ncdhc-dphr-encounter.html