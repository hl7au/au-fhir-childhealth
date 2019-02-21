**NCDHC Newborn Exam Health Interaction Composition Profile**

This profile is used to represent NCDHC Newborn Exam Health Interaction as a FHIR document using Composition resource. The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Query for NCDHC Newborn Exam Health Interaction Health Interaction FHIR document
-   Upload NCDHC Newborn Exam Health Interaction Health Interaction FHIR document
-   Update existing NCDHC Newborn Exam Health Interaction FHIR document

##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Composition must have:**

1.  a status  
1.  a LOINC code to represent the document type. Optional Class code as per the table below
1.  a subject (Patient)
1.  a date indicating when the details was taken
1.	an auther detailing who has recorded the details.
1.  title of the document
1.  applicable sections and entries as mentioned in the table below

**Profile specific implementation guidance:**

* Client sustem SHALL fillup all sections and subsections as defined in the profile. If data for any section/sub-sections are not known or not available, then empty reason should be provided.


##### Composition Type and Class Code
---

<table class="grid">
  <thead>
    <tr>
      <th>Type Code</th>
      <th>Code System</th>
      <th>Display</th>
      <th>Class Code</th>
	  <th>Code System</th>
	  <th>Display</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>TBD</td>
      <td>LOINC</td>
      <td>TBD</td>
      <td>TBD</td>
	  <td>LOINC</td>
	  <td>TBD</td>
    </tr>
  </tbody>
</table>

##### Document Section and Allowed Entries
---

<table class="grid">
  <thead>
    <tr>
      <th>Section Title</th>
	  <th>LOINC Code</th>
		<th>Allowed Entries</th>
		<th>Codes</th>	
    </tr>
  </thead>
  <tbody> 	
	<tr>
      <td>Newborn Exam</td>
      <td>TBD</td>
      <td>-</td>
      <td>-</td>	 
    </tr>	
	<tr>
      <td></td>
      <td></td>
      <td>Head & Fontanelles</td>
      <td>SNOMED: 170190000</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Eyes (Right/Left)</td>
      <td>SNOMED: 170195005</td>	 
    </tr>		
	<tr>
      <td></td>
      <td></td>
      <td>Ears Right/Left</td>
      <td>SNOMED: 170197002</td>	 
    </tr>			
	<tr>
      <td></td>
      <td></td>
      <td>Mouth & Palate</td>
      <td>SNOMED: 39868003</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Oral Health</td>
      <td>SNOMED: 122856003</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Cardiovascular/heart</td>
      <td>SNOMED: 106063007</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Reflexes</td>
      <td>SNOMED: 106146005</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Femoral Pulses (Right, Left)</td>
      <td>SNOMED: 67316000</td>	 
    </tr>	
	<tr>
      <td></td>
      <td></td>
      <td>Respiratory Rate</td>
      <td>SNOMED: 86290005</td>	 
    </tr>	
	<tr>
      <td></td>
      <td></td>
      <td>Abdomen / Umbilicus</td>
      <td>SNOMED: 249537008</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Anus</td>
      <td>SNOMED: 364154000</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Genitalia</td>
      <td>SNOMED: 170210005</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Testes Fully Descended</td>
      <td>SNOMED: 170209000</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Musculo-Skeletal</td>
      <td>SNOMED: 164830005</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Limbs & Spine</td>
      <td><p>Limb SNOMED: 275837002</p><p> Spine SNOMED: 170206007</p></td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Hips</td>
      <td>SNOMED: 170205006</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Skin</td>
      <td>SNOMED: 170189009</td>	 
    </tr>			
  </tbody>
</table>


---



#### Examples

- [Newborn Exam Health Interaction document](Bundle-document-exam-payload.html)

[Composition]: http://hl7.org.au/fhir/base2018Oct/StructureDefinition-au-composition.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html


