**NCDHC DPHR Encounter Profile**

This profile sets minimum expectations for the [Encounter] resource to record, search and fetch encounter details recorded during multiple health interactions of the patient. It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile. The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

This is an administrative Encounter Profile. The following are example usage scenarios for the National Child Digital Health interactions. This encounter is not used for any Clinical reference. 
profile:

-   Query for DPHR encounter of the patient
-   Record DPHR encounter of the patient

##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation. Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Encounter must have:**

1.  a status
1.  a subject ([Expectant Mother Patient])
1.  a period  indicating the start and end time of the encounter.
1.  a location stating the Venue where the encounter has happened. 
1.  participant to represent Clinically responsible person 
1.  participant to represent Registered Interpreter 
1.  serviceProvider to represent Clinically responsible Organisation   


**Profile specific implementation guidance:**

* Clinically responsible person shall be recorded using the following way:
1.  Encounter.participant.type=”CALLBCK”
1.  Encounter.participant.individual ([AUBasePractitioner])
* Registered Interpreter shall be recorded using the following way:
1.  Encounter.participant.type=translator
1.  Encounter.participant.individual ([AUBasePractitioner])
* Clinically responsible Organisation shall be recorded using Encounter.serviceProvider([AUOrganization])
1. The designation of the Clinically responsible person SHALL be provided in  'AUBasePractitioner.qualification.code.text'. is a workaround since the STU3.0 FHIR Encounter doesn’t support inclusion of PractitionerRole as Encounter.participant.individual 
* The Venue shall be recorded using Encounter.location.location (Location). Use Location.name as the Name of the Venue as used by humans
* Next Visit Date and Time shall be recorded using Encounter.appointment (Appointment) with status as "proposed" and requestedPeriod mentioning the appointment start and end datetime



#### Examples

- [DPHR Encounter](ncdhc-dphr-encounter-example.html)

[AUBasePractitioner]: **NCDHC DPHR Encounter Profile**

This profile sets minimum expectations for the [Encounter] resource to record, search and fetch encounter details recorded during multiple health interactions of the patient. It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile. The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

This is an administrative Encounter Profile. The following are example usage scenarios for the National Child Digital Health interactions. This encounter is not used for any Clinical reference. 
profile:

-   Query for DPHR encounter of the patient
-   Record DPHR encounter of the patient

##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation. Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Encounter must have:**

1.  a status
1.  a subject ([Expectant Mother Patient])
1.  a period  indicating the start and end time of the encounter.
1.  a location stating the Venue where the encounter has happened. 
1.  participant to represent Clinically responsible person 
1.  participant to represent Registered Interpreter 
1.  serviceProvider to represent Clinically responsible Organisation   


**Profile specific implementation guidance:**

* Clinically responsible person shall be recorded using the following way:
1.  Encounter.participant.type=”CALLBCK”
1.  Encounter.participant.individual ([AUBasePractitioner])
* Registered Interpreter shall be recorded using the following way:
1.  Encounter.participant.type=translator
1.  Encounter.participant.individual ([AUBasePractitioner])
* Clinically responsible Organisation shall be recorded using Encounter.serviceProvider([AUOrganization])
1. The designation of the Clinically responsible person SHALL be provided in  'AUBasePractitioner.qualification.code.text'. is a workaround since the STU3.0 FHIR Encounter doesn’t support inclusion of PractitionerRole as Encounter.participant.individual 
* The Venue shall be recorded using Encounter.location.location (Location). Use Location.name as the Name of the Venue as used by humans
* Next Visit Date and Time shall be recorded using Encounter.appointment (Appointment) with status as "proposed" and requestedPeriod mentioning the appointment start and end datetime



#### Examples

- [DPHR Encounter](ncdhc-dphr-encounter-example.html)

[AUBasePractitioner]: http://hl7.org.au/fhir/base/aubase1.1/StructureDefinition-au-practitioner.html
[AUOrganization]: http://hl7.org.au/fhir/aubase1.1/StructureDefinition-au-organisation.html
[Encounter]: http://hl7.org/fhir/encounter.html
[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html


[Expectant Mother Patient]: StructureDefinition-ncdhc-patient-expectant-mother.html	