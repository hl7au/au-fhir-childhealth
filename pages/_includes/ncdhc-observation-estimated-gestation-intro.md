**NCDHC Estimated Gestation Observation Profile**

This profile sets minimum expectations for the [Observation] resource to record, search and fetch Gestational age in weeks and days (usually equivalent to length of pregnancy) associated with a patient. It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile. The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Query for length of pregnancy of the baby patient
-   Record Gestational age in weeks and days of the baby patient

##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Observation must have:**

1.  a status  
1.  a LOINC and SNOMED code which tells you what is being recorded and is taken from the “LOINC Code” &  "SNOMED CT" columns respectively in the table below.
1.  a subject (Patient)
1.  a time indicating when the details was recoroded.
1.	a performer detailing who has recorded the details.
1.  a numeric result value and standard UCUM unit which is taken from the “UCUM Unit Code” column in the table below.
    -   note: if there is no numeric result then you have to supply a reason

**Profile specific implementation guidance:**

* The server **SHALL** accept the Gestational age in days and convert it to weeks and days in the 'comments' element while persisting .



---

<table class="grid">
  <thead>
    <tr>
      <th>Observation</th>
      <th>LOINC Code</th>
      <th><em>LOINC Name </em>and Comments</th>
	  <th>SNOMED Code</th>
      <th><em>SNOMED Name </em>and Comments</th>
      <th>UCUM Unit Code</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Estimated Gestation</td>
      <td>LP97564-6</td>
      <td>Gestational age at birth</td>
      <td>412726003</td>
	  <td>Length of gestation at birth</td>
	  <td>d</td>
    </tr>
    
  </tbody>
</table>

---


#### Examples

- [Estimated Gestation](Observation-lengthOfGestation.html)

[Observation]: http://hl7.org/fhir/observation.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html
