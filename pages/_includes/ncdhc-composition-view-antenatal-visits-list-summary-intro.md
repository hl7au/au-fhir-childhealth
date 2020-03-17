**NCDHC Antenatal Visits List Summary Health Interaction Composition Profile**

This profile is used to represent the list of antenatal visits list as a FHIR document using Composition resource. The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Consumer is viewing the list of antenatal visits as shared by clinical providers


##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Composition must have:**

1.  a status  
1.  a code to represent the document type.
1.  a class code to represent this document as Antenatal Visit document.
1.  a subject ([Expectant Mother Patient])
1.  a date (indicating when the details were recorded)
1.	an author (detailing who has recorded the details)
1.  title of the document
1.  a reference to [QuestionnaireResponse] instance.




#### Examples

- [Antenatal Visits List Summary Document](ncdhc-composition-view-antenatal-visits-list-summary-example.html)



[QuestionnaireResponse]: StructureDefinition-ncdhc-questionnaireresponse-base.html
[Expectant Mother Patient]: StructureDefinition-ncdhc-patient-expectant-mother.html