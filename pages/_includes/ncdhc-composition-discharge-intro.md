**NCDHC Newborn Discharge Health Interaction Composition Profile**

This profile is used to represent Newborn Discharge Health Interaction as a FHIR document using Composition resource. The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Query for Newborn Discharge Health Interaction FHIR document
-   Upload Newborn Discharge Health Interaction FHIR document
-   Update existing Newborn Discharge Health Interaction FHIR document

##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Composition must have:**

1.  a status  
1.  a LOINC code to represent the document type. Optional Class code as per the table below
1.  a subject (Patient)
1.  a date indicating when the details was taken
1.	an auther detailing who has recorded the details.
1.  title of the document
1.  an encounter details highlighting date of discharge, name of the service or facility the baby was discharged from, baby's admission to Special Care Nursery or ICU  (if any)
1.  applicable sections and subsections as mentioned in the table below

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
      <td>LP74740-9</td>
      <td>LOINC</td>
      <td>Discharge Information</td>
      <td>TBD</td>
	  <td>LOINC</td>
	  <td>TBD</td>
    </tr>
  </tbody>
</table>

##### Discharge Details

<table class="grid">
  <thead>
    <tr>
      <th>Conceptual Data Item</th>
	  <th>Description</th>	  
	  <th>FHIR Encounter resource mapping</th>	
    </tr>
  </thead>
  <tbody>
    <tr>
	<td>Date of Discharge</td>
	<td>The actual date of discharge.</td>
	<td>Encounter.period.end</td>
	</tr>
	<tr>
	<td>Time of Discharge</td>
	<td>The actual time of discharge.</td>
	<td>Encounter.period.end</td>
	</tr>
	<tr>
	<td>Discharge From</td>
	<td>The name of the service or facility the baby was discharged from&nbsp;</td>
	<td>
	<p>Encounter.status = 'finished'</p>
	<p>Encounter.location.name</p>
	<p>Location.type = 'HOSP'</p>
	</td>
	</tr>
	<tr>
	<td>Admission</td>
	<td>Baby's admission to Special Care Nursery or ICU</td>
	<td>
	<p>Encounter.hospitalization.destination</p>
	<p>Encounter.hospitalization.dischargeDisposition</p>
	</td>
	</tr>
    <tr>
	<td>Reason</td>
	<td>This to note this encounter related to birth</td>
	<td>
	<p>Encounter.reason.coding.system = 'http://snomed.info/sct'</p>
	<p>Encounter.reason.coding.code = '3950001'</p>	
	</td>
	</tr>
	<tr>
	<td>Discharger Details</td>
	<td>Who has discharged the Patient</td>
	<td>
	<p>Encounter.participant.type.coding.system = 'http://hl7.org/fhir/v3/ParticipationType'</p>
	<p>Encounter.participant.type.coding.code = 'DIS'</p>
    <p>Encounter.participant.individual = 'AU Practitioner'</p>	
	</td>
	</tr>	
	<tr></tr>
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
      <td>Feeding Status</td>
      <td>LP72581-9</td>
      <td>Feeding and dietary status</td>
      <td>SNOMED: 129007004</td>	 
    </tr>
	<tr>
      <td>Family History</td>
      <td>LA26428-5</td>
      <td>Family history</td>
      <td>SNOMED: 414025005</td>	 
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
      <td>Discharge Weight</td>
      <td><p>SNOMED: 27113001</p><p>LOINC: 29463-7</p></td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Discharge Length</td>
      <td><p>SNOMED: 248334005</p><p>LOINC: 8302-2</p></td>	 
    </tr>
	<tr>
      <td></td>
      <td></td>
      <td>Head Circumference</td>
      <td><p>SNOMED: 363812007</p><p>LOINC: 8287-5</p></td>	 
    </tr>	 
  </tbody>
</table>

---



#### Examples

- [Newborn Discharge Health Interaction document](Bundle-document-dischargeHI-response-payload.html)

[Composition]: http://hl7.org.au/fhir/base2018Oct/StructureDefinition-au-composition.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html


