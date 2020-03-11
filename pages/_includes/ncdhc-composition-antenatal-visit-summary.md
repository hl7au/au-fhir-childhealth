##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Composition must have:**

1.  a status  
1.  a code to represent the document type.
1.  a class code to represent this document as Health Check Assessment document.
1.  a subject ([Expectant Mother Patient])
1.  a date (indicating when the details were recorded)
1.	an author (detailing who has recorded the details)
1.  title of the document
1.  a reference to [DPHR Encounter] instance.


**Profile specific implementation guidance:**
* Refer to the Base Profile: [NCDHC Base Composition] for more guidance 
* If data for any section/sub-sections are not known or not available, then empty reason SHALL be provided.
* All resources SHALL provide the reference to the profile url used in the resource instance.
* Either of [Vital-Sign Blood Pressure](StructureDefinition-ncdhc-observation-vitalsign-bp.html) or [Blood Pressure](StructureDefinition-ncdhc-observation-bp.html) SHALL be provided
* Either of [Vital-Sign Body-Weight](StructureDefinition-ncdhc-observation-vitalsign-bodyweight.html) or [Body Weight](StructureDefinition-ncdhc-observation-bodyweight.html) SHALL be provided


* Refer to the Base Profile: [NCDHC Base Composition] for base rules that are applied in this profile. 

[NCDHC Base Composition]: StructureDefinition-ncdhc-composition-base.html
[Expectant Mother Patient]: StructureDefinition-ncdhc-patient-expectant-mother.html
[DPHR Encounter]: StructureDefinition-ncdhc-dphr-encounter.html