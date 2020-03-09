**NCDHC Body Weight Vital Sign Observation Profile**

This profile defines  how to represent the body weight [Vitalsign] in FHIR using a standard LOINC code and a SNOMED CT AU code. The profile uses UCUM units of measure. It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile. 
The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Query for Body Weight of patient
-   Record Body Weight of the patient
-   Query for Birth Weight of the baby patient
-   Record Birth Weight of the baby patient

##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Observation must have:**

1.  a status  
1.  a LOINC and SNOMED code (indicating what is being recorded)
1.  a subject ([Baby Patient]/[Expectant Mother Patient])
1.  a time (indicating when the details were recorded)
1.	a performer (detailing who has recorded the details)
1.  a numeric result value and standard UCUM unit (applicable unit codes are defined in the [ValueSet](http://hl7.org/fhir/ValueSet/ucum-bodyweight) )
    -   Note: A reason needs to be supplied in-case there is no numeric result value.

**Profile specific implementation guidance:**

The client system SHALL supply both LOINC and SNOMED CT-AU codes to record this vital sign. If the objective is to record the body weight at birth, then client system SHALL additionally supply birth weight SNOMED CT-AU code.


#### Examples

- [Birth Weight](ncdhc-observation-vitalsign-birthweight-example.html)
- [Body Weight](ncdhc-observation-vitalsign-bodyweight-example.html)

[Vitalsign]: http://hl7.org/fhir/STU3/observation-vitalsigns.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html
[Expectant Mother Patient]: StructureDefinition-ncdhc-patient-expectant-mother.html	
[Baby Patient]: StructureDefinition-ncdhc-patient-baby.html		