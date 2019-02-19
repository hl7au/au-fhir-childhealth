Below is an overview of the required search and read operations for this profile. See the CapabilityStatement requirements for the NCDHC Data Hub implementation guide server for a complete list of supported RESTful operations and search parameters for this IG.


-----------
**`GET /Consent?category=[category.code]&patient.identifier=[identifier.system]|[identifier.value]&patient.family=[family name]&patient.birthdate=[Date of Birth]`**

*Support:* Mandatory to support search by patient and category

*Implementation Notes:*  Search for all consents associated with the provided patient and fetches a bundle of all Consent resources for the specified Consent Category. [(how to search by reference)] and [(how to search by token)].

*Response Class:*

-   (Status 200): successful operation
-   (Status 400): Not Found, invalid parameter
-   (Status 410): Gone - requested resource is not found
-   (Status 401/4xx): Unauthorised - necessary credentials are missing in the request
-   (Status 500): Internal Server Error - Data Hub is unable to respond

-----------

**`GET /Consent?category=[category.code]&patient.identifier=[identifier.system]|[identifier.value]&patient.family=[family name]&patient.birthdate=[Date of Birth]&date=[Consent Given Date]`**

*Support:* Optional search by Consent Given Date

*Implementation Notes:*  Search for all consents associated with the provided patient and fetches a bundle of all Consent resources for the specified Consent Category and applied filtering criteria on consent given date. and [(how to search by date)]

*Response Class:*

-   (Status 200): successful operation
-   (Status 400): Not Found, invalid parameter
-   (Status 410): Gone - requested resource is not found
-   (Status 401/4xx): Unauthorised - necessary credentials are missing in the request
-   (Status 500): Internal Server Error - Data Hub is unable to respond

-----------

**`GET /Consent?category=[category.code]&patient.identifier=[identifier.system]|[identifier.value]&patient.family=[family name]&patient.birthdate=[Date of Birth]&consentor.identifier=[identifier.system]|[identifier.value]`**

*Support:* Optional search by Consentor

*Implementation Notes:*  Search for all consents associated with the provided patient and fetches a bundle of all Consent resources for the specified Consent Category and applied filtering criteria on Consentor.

*Response Class:*

-   (Status 200): successful operation
-   (Status 400): Not Found, invalid parameter
-   (Status 410): Gone - requested resource is not found
-   (Status 401/4xx): Unauthorised - necessary credentials are missing in the request
-   (Status 500): Internal Server Error - Data Hub is unable to respond

-----------

**`GET /Consent?category=[category.code]&patient.identifier=[identifier.system]|[identifier.value]&patient.family=[family name]&patient.birthdate=[Date of Birth]&date=[Consent Given Date]`**

*Support:* Optional search by Consent Given Date

*Implementation Notes:*  Search for all consents associated with the provided patient and fetches a bundle of all Consent resources for the specified Consent Category and applied filtering criteria on Consent Given Date.

*Response Class:*

-   (Status 200): successful operation
-   (Status 400): Not Found, invalid parameter
-   (Status 410): Gone - requested resource is not found
-   (Status 401/4xx): Unauthorised - necessary credentials are missing in the request
-   (Status 500): Internal Server Error - Data Hub is unable to respond

-----------

**`GET /Consent?category=[category.code]&patient.identifier=[identifier.system]|[identifier.value]&patient.family=[family name]&patient.birthdate=[Date of Birth]&consentor.identifier=[identifier.system]|[identifier.value]&date=[Consent Given Date]`**

*Support:* Optional search by Consentor and Consent Given Date

*Implementation Notes:*  Search for all consents associated with the provided patient and fetches a bundle of all Consent resources for the specified Consent Category and applied filtering criteria on Consentor and consent given date.

*Response Class:*

-   (Status 200): successful operation
-   (Status 400): Not Found, invalid parameter
-   (Status 410): Gone - requested resource is not found
-   (Status 401/4xx): Unauthorised - necessary credentials are missing in the request
-   (Status 500): Internal Server Error - Data Hub is unable to respond

-----------


  [(how to search by reference)]: http://hl7.org/fhir/STU3/search.html#reference
  [(how to search by token)]: http://hl7.org/fhir/STU3/search.html#token
  [Composite Search Parameters]: http://hl7.org/fhir/search.html#combining
  [(how to search by date)]: http://hl7.org/fhir/STU3/search.html#date
  [(how to search by string)]: http://hl7.org/fhir/STU3/search.html#string

