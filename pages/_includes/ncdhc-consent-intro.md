**NCDHC Consent Profile**

This profile is used to represent various administrative and operational consent applicable to NCDHC program using [Consent] resource. The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Query for Consent
-   Register Consent
-   Update Consent

##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Consent instance must have:**

1.  a status  
1.  a category
1.  a patient ([Patient])
1.  a date (confirming when this Consent was created or indexed)
1.  a policy reference or a policyRule reference

**Profile specific implementation guidance:**

* Client System can only query 'active' Consents. Server will only provide the status of the Consent along with the Patient reference if the search is successful. No details about the actual Consent will be provided to the external system.
* Server SHALL mark the status as 'inactive' for a suspended record and 'rejected' if the Consent has been withdrawn by the user. 
* Search can be performed only by providing the Consent category and the patient in context. 
* Optionally client system can provide reference to the 'consentor' and/or 'date' to perform more filtering on the search. 
* Server may provide the reference to the relevant Health Interaction instances using the Consent.data element. 'related ' SHALL be used as Consent.data.meaning.  



#### Examples

- [Authorised Representative Consent](ncdhc-consent-registration-authrep-example.html)
- [Consent To Participate](ncdhc-consent-participation-authrep-example.html)



[Consent]: http://hl7.org/fhir/STU3/consent.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html
[Patient]: http://build.fhir.org/ig/hl7au/au-fhir-childhealth/StructureDefinition-ncdhc-patient-baby.html



