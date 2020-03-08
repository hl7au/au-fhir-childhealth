**NCDHC Child Health Expectant Mother Patient Profile**

This profile sets minimum expectations for the [Patient] resource to record, search and fetch Patient. It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile. The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Query for Expectant Mother Patient
-   Save / Update expectant mother patient record


**Profile specific implementation guidance:**

The profile covers up Expectant Mother Patient instances in the NCDHC context. 
 	    

1. Mother Patient instance contains the following data elements:
   * one or more <span style='color:green'> identifier</span>. <span style='color:green'>IHI</span> is mandatory for Expectant Mother Patient instance. <span style='color:green'>Medical Record Number</span>, a numerical identifier that is used by the hospital or facility to identify a patient can also be included in the instance along with IHI.
   * Expectant Mother's Name <span style='color:green'>name</span> should be provided in the Patient instance. This includes the following details:
		*  <span style='color:green'>name.prefix</span> to capture salutation.
      *  <span style='color:green'>name.family</span> to capture Last Name.
		*  <span style='color:green'>name.given</span> to capture First Name.
   * Expectant Mother's Address <span style='color:green'>address</span> should be provided in the Patient instance. This includes the following details:
		*  <span style='color:green'>address.text</span> to capture type of address(home/office)
      *  <span style='color:green'>address.line</span> to capture street address.
      *  <span style='color:green'>address.city</span> to capture city.
		*  <span style='color:green'>address.state</span> to capture state.   
      *  <span style='color:green'>address.postalCode</span> to capture postcode.   
      *  <span style='color:green'>address.country</span> to capture country.  
   * Expectant Mother's Email details <span style='color:green'>telecom</span> should be provided in the Patient instance. This includes the following details:obile
		*  <span style='color:green'>telecom.system</span> to capture type of contact mode as "email"
      *  <span style='color:green'>telecom.value</span> to capture email
      *  <span style='color:green'>telecom.use</span> to capture usage "home" or "work"
   * Expectant Mother's Mobile details <span style='color:green'>telecom</span> should be provided in the Patient instance. This includes the following details:
		*  <span style='color:green'>telecom.system</span> to capture type of contact mode as "phone"
      *  <span style='color:green'>telecom.value</span> to capture number
      *  <span style='color:green'>telecom.use</span> to capture usage as "mobile"
1. All instances should be defaulted to 'true' as the value of <span style='color:green'>active</span>



#### Examples

- [Expectant Mother Patient](ncdhc-patient-expectant-mother-example.html)

[Patient]: http://hl7.org/fhir/STU3/patient.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html
