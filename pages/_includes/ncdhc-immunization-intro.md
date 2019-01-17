**NCDHC Immunization Profile**

This profile sets minimum expectations for the [Immunization] resource to record, search and fetch Immunization associated with a patient. It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile.

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Query for Immunization administered on the patient
-   Record Immunization administered on the patient

##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Immunization must have:**

1.  a status  
1.  indicate if the Immunization was given or not
1.  a SNOMED code which tells you what vaccine was administered from the "SNOMED CT" columns in the table below.
1.  a patient
1.  a date indicating when the Immunization was given
1.	details of the practitioner who has given the immunisation.

**Profile specific implementation guidance:**

* To be added



---

<table class="grid">
  <thead>
    <tr>
      <th>Immunization</th>      
	  <th>SNOMED Code</th>
      <th><em>SNOMED Name </em>and Comments</th>      
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>HepB Immunoglobin</td>
      <td>116802006</td>
      <td>Intramuscular injection of Hepatitis B Virus immune globulin, human</td>       
    </tr>
	<tr>
      <td>HepB Immunisation</td>
      <td>170370000</td>      
	  <td>First hepatitis B vaccination</td>	 
    </tr>
    
  </tbody>
</table>

---


#### Examples

- [HepB Immunoglobin](Immunization-hepb-immunoglobin.html)
- [HepB Immunisation](Immunization-hepb-immunisation.html)

[Immunization]: http://hl7.org.au/fhir/base2018Oct/StructureDefinition-au-immunisation.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html
