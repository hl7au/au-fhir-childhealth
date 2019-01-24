**NCDHC BIrth Weight Vital Sign Observation Profile**

This profile sets minimum expectations for the [Observation] resource to record, search and fetch Birth Weight Vital Sign associated with a patient. It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile. The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Query for Birth Weight baby patient
-   Record Birth Weight of the baby patient

##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Observation must have:**

1.  a status  
1.  a LOINC and SNOMED code which tells you what was measured and is taken from the “LOINC Code” &  "SNOMED CT" columns respectively in the table below.
1.  a subject (Patient)
1.  a time indicating when the details was taken
1.	a performer detailing who has recorded the details.
1.  a numeric result value and standard UCUM unit which is taken from the “UCUM Unit Code” column in the table below. The applicable unit codes are defined in the ValueSet http://hl7.org/fhir/ValueSet/ucum-bodyweight
    -   note: if there is no numeric result then you have to supply a reason

**Profile specific implementation guidance:**

* To Be added



---

<table class="grid">
  <thead>
    <tr>
      <th>Vital Sign</th>
      <th>LOINC Code</th>
      <th><em>LOINC Name </em>and Comments</th>
	  <th>SNOMED Code</th>
      <th><em>SNOMED Name </em>and Comments</th>
      <th>UCUM Unit Code</th>
    </tr>
  </thead>
  <tBirth>
    <tr>
      <td>Birth Weight</td>
      <td>29463-7</td>
      <td>Body weight</td>
      <td>364589006</td>
	  <td>Birth weight</td>
	  <td>kg,[lb_av],g</td>
    </tr>
    
  </tBirth>
</table>

---


#### Examples

- [Birth Weight](Observation-birth-weight.html)

[Observation]: http://hl7.org/fhir/observation.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html