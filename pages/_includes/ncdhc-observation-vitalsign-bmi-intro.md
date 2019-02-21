**NCDHC Body Mass Index (BMI) Vital Sign Observation Profile**

his profile defines  how to represent Body Mass Index (BMI) [Vitalsign] in FHIR using a standard LOINC code and SNOMED CT AU code. The profile uses UCUM units of measure. It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile. 
The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Query for Body Mass Index (BMI) of patient
-   Record Body Mass Index (BMI) of the patient

##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation. Profile specific guidance and examples are provided as well. The [**Formal Profile Definition**](#profile) below provides the formal summary, definitions, and  terminology requirements.  

**Each Observation must have:**

1.  a status  
1.  a LOINC and SNOMED code which tells you what was measured and is taken from the “LOINC Code” &  "SNOMED CT" columns respectively in the table below.
1.  a subject (Patient)
1.  a time indicating when the details was taken
1.	a performer detailing who has recorded the details.
1.  a numeric result value and standard UCUM unit which is taken from the “UCUM Unit Code” column in the table below.
    -   note: if there is no numeric result then you have to supply a reason

**Profile specific implementation guidance:**

The client system SHALL supply both LOINC and SNOMED CT-AU codes to record this vital sign. 

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
  <tbody>
    <tr>
      <td>Body Mass Index (BMI)</td>
      <td>39156-5</td>
      <td>Body mass index (BMI) [Ratio]</td>
      <td>60621009</td>
	  <td>Body mass index</td>
	  <td>kg/m2</td>
    </tr>
    
  </tbody>
</table>

---


#### Examples

- [Body Mass Index (BMI)](Observation-vitalsing.bmi.html)


[Vitalsign]: http://hl7.org/fhir/STU3/observation-vitalsigns.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html
