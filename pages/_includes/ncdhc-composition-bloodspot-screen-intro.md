**NCDHC Newborn Blood spot Screen Health Interaction Composition Profile**

This profile is used to represent NCDHC Newborn Blood spot Screen Health Interaction as a FHIR document using Composition resource. The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Query for NCDHC Newborn Blood spot Screen Health Interaction Health Interaction FHIR document
-   Upload NCDHC Newborn Blood spot Screen Health Interaction Health Interaction FHIR document
-   Update existing NCDHC Newborn Blood spot Screen Health Interaction FHIR document

##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Composition must have:**

1.  a status  
1.  a LOINC code to represent the document type. Optional Class code as per the table below
1.  a subject (Patient)
1.  a date indicating when the details was taken
1.	an author detailing who has recorded the details.
1.  title of the document
1.  applicable sections and entries as mentioned in the table below

**Profile specific implementation guidance:**

* Client system SHALL fill up all sections and subsections as defined in the profile. If data for any section entry is not known or not available, then empty reason should be provided.


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
      <td>Newborn Blood spot Screen</td>
      <td>TBD</td>
      <td>Newborn Blood spot Screen</td>
      <td>SNOMED: 428447008</td>	 
    </tr>
	
  </tbody>
</table>

---



#### Examples

To be added

[Composition]: http://hl7.org.au/fhir/base2018Oct/StructureDefinition-au-composition.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html


