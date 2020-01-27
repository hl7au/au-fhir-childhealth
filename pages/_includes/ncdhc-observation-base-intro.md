
**Profile specific implementation guidance:**

*  Client System SHALL use status = 'final' for Observation creation. status = 'amended' for document update. status = 'entered-in-error' for removaed (soft delete) Observation
* Client system SHALL provide the following details as 'Observation.performer':
 Person ([AUBasePractitioner]) who is clinically responsible for the undertaking of the exam shall be present.
 An organisation ([AUBaseOrganisation]) which captures the relevant details shall be present





[extensible]: http://hl7.org/fhir/terminologies.html#extensible
[General Guidance Section]: definitions.html


[AUBasePractitioner]: http://hl7.org.au/fhir/base/aubase1.1/StructureDefinition-au-practitioner.html
[AUBaseOrganisation]: http://hl7.org.au/fhir/base/aubase1.1/StructureDefinition-au-organisation.html