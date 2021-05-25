<!-- profiles-dphr.md {% comment %}

{% endcomment %} -->
The following list of profiles are being used in the DPHR (Digital Pregnancy Health Record) implementation. 

## DPHR Common Profiles
* [Expectant Mother Patient](StructureDefinition-ncdhc-patient-expectant-mother.html) - Patient profile to represent the Expectant Mother Patient in context.
* [DPHR Encounter](StructureDefinition-ncdhc-encounter-dphr.html) - Encounter profile to represent DPHR patient visit related details.
* [NCDHC Practitioner](StructureDefinition-ncdhc-practitioner.html) - Profile to represent a Practitioner in NCDHC Context.
* [NCDHC PractitionerRole](StructureDefinition-ncdhc-practitioner-role.html) - Profile to represent a PractitionerRole in NCDHC Context.
* [NCDHC Organisation](StructureDefinition-ncdhc-organisation.html) - Profile to represent a Organisation in NCDHC Context.
* [NCDHC CareTeam](StructureDefinition-ncdhc-care-team.html) - Profile to represent CareTeam in NCDHC Context.
* [NCDHC FHIR Document](StructureDefinition-ncdhc-bundle-document.html) - Bundle profile to represent a FHIR document in NCDHC Context.

## DPHR Health Interactions
* [Estimated Date of Birth (EDB)](StructureDefinition-ncdhc-bundle-edb-document.html) - Health interaction recording the calculated estimated date of birth (EDB), menstrual cycle information, ultrasound confirmation of EDB as well as hormonal contraception and breastfeeding status at time of conception.
* [Pregnancy Management Plan](StructureDefinition-ncdhc-bundle-preg-management-plan-document.html) - Health interaction recording any standard care plans or management plan, and associated details for the pregnant mother.
* [Pregnancy Complication and Plan](StructureDefinition-ncdhc-bundle-preg-issues-plan-document.html) - Health interaction recording health issues and pregnancy complications affecting this pregnancy,  with associated details or plans.
* [Pregnancy Outcome](StructureDefinition-ncdhc-bundle-pregnancy-outcome-document.html) - Health interaction to record current pregnancy outcome and associated details.
* [Woman's Pregnancy History](StructureDefinition-ncdhc-bundle-pregnancy-history-document.html) - HHealth interaction recording the woman's pregnancy history details.