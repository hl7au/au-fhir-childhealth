**NCDHC Child Health Patient Profile**

This profile sets minimum expectations for the [Patient] resource to record, search and fetch Patient. It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile. The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Query for baby Patient
-   Query for mother Patient


**Profile specific implementation guidance:**

The profile covers up Baby Patient and Mother Patient instances in the NCDHC context. 

1. Baby Patient instance contains the following data elements:
   * one or more <span style='color:green'> identifier</span>. <span style='color:green'>IHI</span> is mandatory for Baby Patient instance. <span style='color:green'>Medicare Record Number</span>, a numerical identifier that is used by the hospital or facility to identify a patient can also be included in the instance along with IHI.
   * Baby's Name <span style='color:green'>name</span> should be provided in the Patient instance. This includes the following details:
		*  <span style='color:green'>name.family</span> to capture Last Name.
		*  <span style='color:green'>name.given</span> to capture First Name.
   * Baby's Sex <span style='color:green'>gender</span> to capture the administrative gender of the baby identified at birth. This element is mandatory for a Baby Patient instance. 
   * Baby's Date of Birth <span style='color:green'>birthDate</span> and Time of Birth should be included. Time of Birth can be captured using the <span style='color:green'>patient-birthTime</span> extension. 
   * Address <span style='color:green'>address</span> may be included (if provided) to capture the Baby's address. This may include the following details:
		*  multiple <span style='color:green'>address.line</span> to capture street name, number, PO box etc.
		*  <span style='color:green'>address.city</span> to capture Name of city, town etc.
		*  <span style='color:green'>address.state</span> to capture State in which the baby lives.
		*  <span style='color:green'>address.postalCode</span> to capture postal code for area.
		*  <span style='color:green'>address.country</span> to capture name of Country. 
   * <span style='color:green'>contact</span> has been <span style='color:blue'>sliced</span> to capture the following details:
		* Mother's Name <span style='color:green'>Patient.contact.relationship.type.code=MTH</span>. containing the followings:
			* <span style='color:green'>name.family</span> to capture Last Name of Mother.
			* <span style='color:green'>name.given</span> to capture First Name of Mother.
		    * <span style='color:green'>name.text</span> to capture Full Name of Mother.
		* Father's Name <span style='color:green'>Patient.contact.relationship.type.code=FTH</span>. containing the followings:
			* <span style='color:green'>name.family</span> to capture Last Name of Father.
			* <span style='color:green'>name.given</span> to capture First Name of Father.
		    * <span style='color:green'>name.text</span> to capture Full Name of Father.			
		* Other Parent's Name <span style='color:green'>Patient.contact.relationship.type.code=O</span>. containing the followings:			
		    * <span style='color:green'>name.text</span> to capture Full Name.  	    

1. Mother Patient instance contains the following data elements:
   * <span style='color:green'>Medicare Record Number</span>, a numerical identifier that is used by the hospital or facility to identify a patient is included in the instance.
   * Mother's Name <span style='color:green'>name</span> should be provided in the Patient instance. This includes the following details:
		*  <span style='color:green'>name.family</span> to capture Last Name.
		*  <span style='color:green'>name.given</span> to capture First Name.
1. All instances should be defaulted to 'true' as the value of <span style='color:green'>active</span>



#### Examples

- [Baby Patient](Patient-example-newborn.html)
- [Mother Patient](Patient-example-mother.html)

[Patient]: http://hl7.org/fhir/STU3/patient.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html
