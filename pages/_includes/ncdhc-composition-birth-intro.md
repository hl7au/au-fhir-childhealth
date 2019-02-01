**NCDHC Newborn Delivery Health Interaction Composition Profile**

This profile is used to represent Newborn Delivery Health Interaction as a FHIR document using Composition resource. The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Query for Newborn Delivery Health Interaction FHIR document
-   Upload Newborn Delivery Health Interaction FHIR document
-   Update existing Newborn Delivery Health Interaction FHIR document

##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Composition must have:**

1.  a status  
1.  a LOINC code to represent the document type. Optional Class code as per the table below
1.  a subject (Patient)
1.  a date indicating when the details was taken
1.	a auther detailing who has recorded the details.
1.  title of the document
1.  applicable sections and subsections as mentioned in the table below

**Profile specific implementation guidance:**

* Client should fillup all sections and subsections as defined in the profile. If data for any section/sub-sections are not known or not available, then empty reason should be provided.


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



##### Document Section and Sub-Sections
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
      <td>Gestational age at birth</td>
      <td>72147-2</td>
      <td>Gestational length</td>
      <td>SNOMED: 412726003</td>	 
    </tr>
	<tr>
      <td>Congenital anomalies of the newbornh</td>
      <td>73780-9</td>
      <td>Birth Abnormalities</td>
      <td>SNOMED: 414025005</td>	 
    </tr>
	<tr>
      <td>APGAR Scores</td>
      <td>LP32192-4</td>
      <td>-</td>
      <td>-</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Apgar at 1 minute</td>
      <td>SNOMED: 169895004</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Apgar at 5 minute</td>
      <td>SNOMED: 169909004</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Apgar at 10 minute</td>
      <td>SNOMED: 169922007</td>	 
    </tr>
	<tr>
      <td>Medication administered</td>
      <td>29303-5</td>
      <td>-</td>
      <td>-</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Vitamin K1</td>
      <td>SNOMED: 66656000</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Vitamin K2</td>
      <td>SNOMED: 22606007</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Vitamin K3</td>
      <td>SNOMED: 69169004</td>	 
    </tr>
	<tr>
      <td>Indication for Immunization</td>
      <td>59785-6</td>
      <td>-</td>
      <td>-</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>HepB Immunoglobin</td>
      <td>SNOMED: 116802006</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>HepB Immunisation</td>
      <td>SNOMED: 170370000</td>	 
    </tr>
	<tr>
      <td>Vital Signs</td>
      <td>67795-5</td>
      <td>-</td>
      <td>-</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Birth Weight</td>
      <td><p>SNOMED: 27113001, 364589006 </p><p>LOINC: 29463-7</p></td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Birth Length</td>
      <td><p>SNOMED: 248334005, 169886007</p><p>LOINC: 89269-5</p></td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Birth Head Circumference</td>
      <td><p>SNOMED: 363812007, 169876006</p><p>LOINC: 8287-5</p></td>	 
    </tr>
	<tr>
      <td>Maternal Morbidity</td>
      <td>73781-7</td>
      <td>-</td>
      <td>-</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Pregnancy Complications</td>
      <td>SNOMED: 609496007</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Birth Complication</td>
      <td>SNOMED: 198609003</td>	 
    </tr>
	<tr>
      <td>Labour and Delivery</td>
      <td>LA20786-2</td>
      <td>-</td>
      <td>-</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Labour Initiation</td>
      <td>SNOMED: 20236002</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Method of Delivery</td>
      <td>SNOMED: 289258004</td>	 
    </tr>    
  </tbody>
</table>

---



#### Examples

- [Newborn Delivery Health Interaction document](Bundle-document-birthHI-response-payload.html)

[Composition]: http://hl7.org.au/fhir/base2018Oct/StructureDefinition-au-composition.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html


