**NCDHC Head Circumference Vital Sign Observation Profile**

This profile defines  how to represent head circumference [Vitalsign] in FHIR using a standard LOINC code and SNOMED CT AU code. The profile uses UCUM units of measure. It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile. 
The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Query for Head Circumference of patient
-   Record Head Circumference of the patient
-   Query for Birth Head Circumference of the baby patient
-   Record Birth Head Circumference of the baby patient


##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation. Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Observation must have:**

1.  a status  
1.  a LOINC and SNOMED code (indicating what was measured and is taken from the “LOINC” & "SNOMED CT" codes)
1.  a subject (Patient)
1.  a time (indicating when the details were taken)
1.	a performer (detailing who has recorded the details)
1.  a numeric result value and standard UCUM unit (applicable units are defined in the ValueSet: http://hl7.org/fhir/ValueSet/ucum-bodylength)
    -   Note: A reason needs to be supplied in-case there is no numeric result value.

#### Examples

- [Head Circumference ](ncdhc-observation-vitalsign-headcircum-example.html)

[Vitalsign]: http://hl7.org/fhir/STU3/observation-vitalsigns.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html
