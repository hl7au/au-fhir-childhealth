This profile contains the following variations from [Consent](http://hl7.org/fhir/STU3/Consent):

1. The following data elements are used in NCDHC Consent context
   * one or more <span style='color:green'> category </span> to be added to capture Consent Type. Allowed codes for <span style='color:green'> category </span>  should be picked up from [NCDHC Consent Category]
   * <span style='color:green'> patient </span> [NCDHC Patient] Reference should be to capture who the consent applies to. Provide the reference to the mother Patient until the baby is born. Once baby is born, then provide the reference to the Baby patient in the operational Consent. 
   * <span style='color:green'> dateTime </span> should be used to capture Consent Date.
   * one or more <span style='color:green'> consentingParty </span> should be added. One to represent the Consenting Parties. The values could be mother/baby patient [NCDHC Patient].
   * one or more <span style='color:green'> actor </span> may be added along with providing the role. 
   * one or more <span style='color:green'> organization </span> should be added to capture the custodian of the consent. This is the reference to Child Data Hub. 
   * one or more <span style='color:green'> data </span> may be added to provide references or the derived Consents.    

   
1. <span style='color:green'>  policyRule </span> is yet to be decided.
  
[NCDHC Patient]: StructureDefinition-ncdhc-patient-baby.html
[NCDHC Consent Category]: ValueSet-ncdhc-consent-category-1.html