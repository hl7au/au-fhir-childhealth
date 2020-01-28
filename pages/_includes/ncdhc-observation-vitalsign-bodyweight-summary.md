##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Observation must have:**

1.  a status  
1.  a LOINC and SNOMED code (indicating what is being recorded)
1.  a subject ([Patient])
1.  a time (indicating when the details were recorded)
1.	a performer (detailing who has recorded the details)
1.  a numeric result value and standard UCUM unit (applicable unit codes are defined in the ValueSet http://hl7.org/fhir/ValueSet/ucum-bodyweight )
    -   Note: A reason needs to be supplied in-case there is no numeric result value.

* Refer to the Base Profile: [AUBodyWeight](http://hl7.org.au/fhir/base/aubase1.1/StructureDefinition-au-bodyweight.html) for base rules that are applied in this profile. 
[Patient]: http://build.fhir.org/ig/hl7au/au-fhir-childhealth/StructureDefinition-ncdhc-patient-baby.html