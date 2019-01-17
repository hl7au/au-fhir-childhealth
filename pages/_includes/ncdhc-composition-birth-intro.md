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
      <td>LP97564-6</td>
      <td>Gestational length</td>
      <td>SNOMED: 412726003 | LOINC: LP97564-6</td>	 
    </tr>
	<tr>
      <td>Congenital anomalies of the newbornh</td>
      <td>LP172858-5</td>
      <td>Birth Abnormalities</td>
      <td>SNOMED: 414025005 | LOINC: 73780-9</td>	 
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
      <td>Medication Administered</td>
      <td>LP72926-6</td>
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
      <td>Immunisation</td>
      <td>LP263510-2</td>
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
      <td>Vital Signs and Measurements</td>
      <td>LP73695-6</td>
      <td>-</td>
      <td>-</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Birth Weight</td>
      <td>SNOMED: 364589006 | LOINC: 56056-5</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Birth Length</td>
      <td>SNOMED: 169886007 | LOINC: 89269-5</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Birth Head Circumference</td>
      <td>SNOMED: 363812007 | LOINC: 8287-5</td>	 
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
      <td>SNOMED: 609496007 | LOINC: 73781-7</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Birth Complication</td>
      <td>SNOMED: 198609003</td>	 
    </tr>
	<tr>
      <td>Labour and Delivery</td>
      <td>LOINC: LA20786-2</td>
      <td>-</td>
      <td>-</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Labour Initiation</td>
      <td>SNOMED: 20236002 | LOINC: LA20022-2</td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Method of Delivery</td>
      <td>SNOMED: 289258004 | LOINC: 72149-8</td>	 
    </tr>    
  </tbody>
</table>

---



#### Examples

- [Newborn Delivery Health Interaction document](Bundle-document-birthHI-response-payload.html)

[Composition]: http://hl7.org.au/fhir/base2018Oct/StructureDefinition-au-composition.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html


