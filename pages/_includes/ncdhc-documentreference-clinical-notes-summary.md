##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Clinical Notes must have:**

1.  a status  
1.  a code to represent the document type.
1.  a class code to represent this document
1.  a subject ([Expectant Mother Patient])
1.  a date (indicating when the details were recorded)
1.	an author (detailing who has recorded the details)
1.  title of the document
1.  content (any attachment etc)
1.  a reference to [DPHR Encounter] instance.



* Refer to the Base Profile: [DocumentReference] for base rules that are applied in this profile. 





[DocumentReference]: http://hl7.org/fhir/STU3/documentreference.html
[Expectant Mother Patient]: StructureDefinition-ncdhc-patient-expectant-mother.html
[DPHR Encounter]: StructureDefinition-ncdhc-dphr-encounter.html

