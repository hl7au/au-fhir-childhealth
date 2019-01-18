**NCDHC Child Health Patient Profile**

This profile sets minimum expectations for the [Patient] resource to record, search and fetch Patient. It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile. The profile is at draft stage and under review by the Child Health Working Group. 

**Example Usage Scenarios:**

The following are example usage scenarios for the National Child Digital Health interactions
profile:

-   Query for baby Patient
-   Query for mother Patient

##### Mandatory Data Elements and Terminology


The following data-elements are mandatory (i.e data MUST be present). These are presented below in a simple human-readable explanation.  Profile specific guidance and examples are provided as well.  The [**Formal Profile Definition**](#profile) below provides the  formal summary, definitions, and  terminology requirements.  

**Each Patient must have:**

1.  an Identifier. This should be IHI for the Baby Patient and MRN for the mother Patient.


**Profile specific implementation guidance:**

* IHI SHOULD be used as the identifier of the baby Patient
* MRN (Medical Record Number) SHOULD be used for the mother patient 
* Mother, Father, Legal Gurdian are represented as 'Patient.contact'.

#### Examples

- [Baby Patient](Patient-newborn.html)
- [Mother Patient](Patient-mother.html)

