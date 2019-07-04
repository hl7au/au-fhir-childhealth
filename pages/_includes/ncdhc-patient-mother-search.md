Below is an overview of the required search and read operations for this profile. See the CapabilityStatement requirements for the NCDHC Data Hub implementation guide server for a complete list of supported RESTful operations and search parameters for this IG.


-----------
**`GET /Patient`**

*Support:* Mandatory to support search by patient

*Implementation Notes:*  Search for all Patient instances the logged in user has access to.

*Response Class:*

-   (Status 200): successful operation
-   (Status 400): Not Found, invalid parameter
-   (Status 410): Gone - requested resource is not found
-   (Status 401/4xx): Unauthorised - necessary credentials are missing in the request
-   (Status 500): Internal Server Error - Data Hub is unable to respond


**`GET /Patient/[Patient's Logical Id]`**

*Support:* Mandatory to support search by patient

*Implementation Notes:*  Read the details of the requested Patient using logical id.

*Response Class:*

-   (Status 200): successful operation
-   (Status 400): Not Found, invalid parameter
-   (Status 410): Gone - requested resource is not found
-   (Status 401/4xx): Unauthorised - necessary credentials are missing in the request
-   (Status 500): Internal Server Error - Data Hub is unable to respond

**`POST /Patient/$access`**

*Support:* The details of the Patient and the type of access requested SHOULD be provided in the request body. 

*Implementation Notes:*  Use this api to gain access to a patient record. This is mainly used by Provider interaction.

*Response Class:*

-   (Status 200): successful operation
-   (Status 400): Not Found, invalid parameter
-   (Status 410): Gone - requested resource is not found
-   (Status 401/4xx): Unauthorised - necessary credentials are missing in the request
-   (Status 500): Internal Server Error - Data Hub is unable to respond