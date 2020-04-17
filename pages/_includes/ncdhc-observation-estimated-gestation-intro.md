**NCDHC Estimated Gestation Observation Profile**

This profile sets minimum expectations for the [Observation] resource to record, search and fetch gestational age in weeks and days (usually equivalent to length of pregnancy) associated with a patient. It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile. The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Query tbaby patient's gestational age
-   Record baby patient's gestational age

##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions and terminology requirements.  

**Each Observation must have:**

1.  a status  
1.  a SNOMED code (indicating what was recorded)
1.  a subject ([Baby Patient]/[Expectant Mother Patient])
1.  a time (indicating when the details were recorded)
1.	a performer (detailing who has recorded the details)
1.  a numeric result value and a standard UCUM unit 
    -   Note: A reason needs to be supplied in-case there is no numeric result value.

**Profile specific implementation guidance:**

* The server **SHALL** accept the gestational age in days while collting the Observation.



#### Examples

- [Estimated Gestation](ncdhc-observation-estimated-gestation-example.html)

[Observation]: http://hl7.org/fhir/observation.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html
[Baby Patient]: StructureDefinition-ncdhc-patient-baby.html	
[Expectant Mother Patient]: StructureDefinition-ncdhc-patient-expectant-mother.html
