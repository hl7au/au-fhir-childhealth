**Profile specific implementation guidance:**

*  Client System SHALL use status = 'final' for document post. status = 'amended' for document update. status = 'entered-in-error' for document removal (soft delete)
* Client system should fill-up all sections and subsections as defined in the profile. If data for any section/entries are not known or not available, then empty reason should be provided.
* Clinically responsible person shall be recorded using the following way:
1.  Composition.author (AUBasePractitioner)
1.  Composition.encounter.participant.type=”CALLBCK”
1.  Composition.encounter.participant. individual (AUBasePractitioner)
* Clinically responsible Organisation shall be recorded using Composition.encounter.serviceProvider(AUOrganization) 
* The Venue shall be recorded using Composition.encounter.location.location (Location). Use Location.name as the Name of the location as used by humans
*  Client System SHALL provide the 'meta.profile' details for profile assertion for all the resources used in a document