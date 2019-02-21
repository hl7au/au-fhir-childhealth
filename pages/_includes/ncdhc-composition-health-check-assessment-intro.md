**NCDHC Newborn Health Check Assessment Health Interaction Composition Profile**

This profile is used to represent Newborn Health Check Assessment Health Interaction as a FHIR document using Composition resource. The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Query for Newborn Health Check Assessment Health Interaction FHIR document
-   Upload Newborn Health Check Assessment Health Interaction FHIR document
-   Update existing Newborn Health Check Assessment Health Interaction FHIR document

##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Composition must have:**

1.  a status  
1.  a LOINC code to represent the document type. Optional Class code as per the table below
1.  a subject (Patient)
1.  a date indicating when the details was taken
1.	a author detailing who has recorded the details.
1.  title of the document
1.  applicable sections and entries as mentioned in the table below

**Profile specific implementation guidance:**

* If data for any section/sub-sections are not known or not available, then empty reason should be provided.

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
      <td>Vital Signs</td>
      <td>67795-5</td>
      <td>-</td>
      <td>-</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Body Weight</td>
      <td><p>SNOMED: 27113001, 364589006 </p><p>LOINC: 29463-7</p></td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Body Length</td>
      <td><p>SNOMED: 248334005, 169886007</p><p>LOINC: 89269-5</p></td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Head Circumference</td>
      <td><p>SNOMED: 363812007, 169876006</p><p>LOINC: 8287-5</p></td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Body mass index (BMI)</td>
      <td><p>SNOMED: 60621009</p><p>LOINC: 39156-5</p></td>	 
    </tr>	
	<tr>
      <td>Other health conditions</td>
      <td>73781-7</td>
      <td>-</td>
      <td>-</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Head Shape</td>
      <td>SNOMED: 301312002</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Fontanelles, Sutures</td>
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
      <td>Eyes Monoculary Tested (Right, Left)</td>
      <td>SNOMED: 252963001</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Vision Screen</td>
      <td>SNOMED: 408761008</td>	 
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
      <td>Hearing Check</td>
      <td>SNOMED: 225678000</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Hearing Screen</td>
      <td>SNOMED: 417491009</td>	 
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
      <td>Cardiovascular (Dr Only)</td>
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
      <td>Development</td>
      <td>SNOMED: 364674008</td>	 
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
      <td>Hips</td>
      <td>SNOMED: 170205006</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Skin</td>
      <td>SNOMED: 170189009</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Gait</td>
      <td>SNOMED: 274787008</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Iron</td>
      <td>SNOMED: 42950004</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Fluoride Varnish</td>
      <td>SNOMED: 313042009</td>	 
    </tr>		
  </tbody>
</table>

---



#### Examples

- [Newborn Health Check Assessment Health Interaction document](Bundle-document-healthcheck-response-payload.html)

[Composition]: http://hl7.org.au/fhir/base2018Oct/StructureDefinition-au-composition.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html


