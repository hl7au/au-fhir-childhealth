Below is an overview of the required search and read operations for this profile. See the CapabilityStatement requirements for the NCDHC Data Hub implementation guide server for a complete list of supported RESTful operations and search parameters for this IG.


-----------
**`GET /Bundle/[document logical id]`**

*Support:* Mandatory to support search by patient

*Implementation Notes:*  Read FHIR Document as per the provided logical id.

*Response Class:*

-   (Status 200): successful operation
-   (Status 400): Not Found, invalid parameter
-   (Status 410): Gone - requested resource is not found
-   (Status 401/4xx): Unauthorised - necessary credentials are missing in the request
-   (Status 500): Internal Server Error - Data Hub is unable to respond

-----------
**`GET /Bundle?identifier=[Document's business identifier]`**

*Support:* Mandatory to support search by patient

*Implementation Notes:*  Search FHIR Document as per the provided business identifier.

*Response Class:*

-   (Status 200): successful operation
-   (Status 400): Not Found, invalid parameter
-   (Status 410): Gone - requested resource is not found
-   (Status 401/4xx): Unauthorised - necessary credentials are missing in the request
-   (Status 500): Internal Server Error - Data Hub is unable to respond

-----------
**`GET /Bundle?composition.patient=[Patient's Logical Id]&composition.type=[Kind of composition]`**

*Support:* Mandatory to support search by patient

*Implementation Notes:*  Search FHIR Document associated with the provided patient reference.

*Response Class:*

-   (Status 200): successful operation
-   (Status 400): Not Found, invalid parameter
-   (Status 410): Gone - requested resource is not found
-   (Status 401/4xx): Unauthorised - necessary credentials are missing in the request
-   (Status 500): Internal Server Error - Data Hub is unable to respond

-----------
**`POST /`**

*Support:* Bundle Transaction Model SHALL be supported by the server and client system

*Implementation Notes:*  Creates a new document in the Child Data Hub.  Duplicates are not allowed. The server may enforces use of 'Prefer' tag with value as 'representation' to get the newly created document. Please reefer to $upload FHIR operation for more details on input and output parameters.

*Response Class:*

-   (Status 201): Created - Document has been successfully created
-   (Status 404): Not Found - resource type not supported, or not a FHIR end-point
-   (Status 400): Bad Request - resource could not be parsed or failed basic FHIR validation rules
-   (Status 422): Unprocessable Entity - the proposed resource violated applicable FHIR profiles or server business rules.
-   (Status 401/4xx): Unauthorised - necessary credentials are missing in the request
-   (Status 500): Internal Server Error - Data Hub is unable to respond