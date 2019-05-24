Below is an overview of the required search and read operations for this profile. See the CapabilityStatement requirements for the NCDHC Data Hub implementation guide server for a complete list of supported RESTful operations and search parameters for this IG.


-----------
**`GET /Composition/$view-document?patient=[Patient's Logical Id]&type=http://hl7.org.au/fhir/ch/v1/CodeSystem/ncdhc-document-type|BRTHVW`**

*Support:* Mandatory to support search by patient

*Implementation Notes:*  Search FHIR Document as per the provided Patient's identifier. The server will return back the summary view of the document. 

*Response Class:*

-   (Status 200): successful operation
-   (Status 400): Not Found, invalid parameter
-   (Status 410): Gone - requested resource is not found
-   (Status 401/4xx): Unauthorised - necessary credentials are missing in the request
-   (Status 500): Internal Server Error - Data Hub is unable to respond

-----------
**`GET /Composition/$view-document?patient=[Patient's Logical Id]&type=http://hl7.org.au/fhir/ch/v1/CodeSystem/ncdhc-document-type|BRTHVW&summary=false`**

*Support:* Mandatory to support search by patient

*Implementation Notes:*  Search FHIR Document as per the provided Patient's identifier. The server will return back the detailed document. 

*Response Class:*

-   (Status 200): successful operation
-   (Status 400): Not Found, invalid parameter
-   (Status 410): Gone - requested resource is not found
-   (Status 401/4xx): Unauthorised - necessary credentials are missing in the request
-   (Status 500): Internal Server Error - Data Hub is unable to respond