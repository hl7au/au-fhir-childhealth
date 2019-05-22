Below is an overview of the required search and read operations for this profile. See the CapabilityStatement requirements for the NCDHC Data Hub implementation guide server for a complete list of supported RESTful operations and search parameters for this IG.


-----------
**`GET /Observation?patient=[Patient's Logical Id]&_sort=date&_count=[number of resources should be returned in a single page]`**

*Support:* Mandatory to support search by patient

*Implementation Notes:*  Search for all Observation associated with the provided patient reference.

*Response Class:*

-   (Status 200): successful operation
-   (Status 400): Not Found, invalid parameter
-   (Status 410): Gone - requested resource is not found
-   (Status 401/4xx): Unauthorised - necessary credentials are missing in the request
-   (Status 500): Internal Server Error - Data Hub is unable to respond


-----------
**`GET /Observation?patient=[Patient's Logical Id]&code=[The code of the observation type]&_sort=date&_count=[number of resources should be returned in a single page]`**

*Support:* Mandatory to support search by patient

*Implementation Notes:*  Search for all Observation associated with the provided patient reference and the code.

*Response Class:*

-   (Status 200): successful operation
-   (Status 400): Not Found, invalid parameter
-   (Status 410): Gone - requested resource is not found
-   (Status 401/4xx): Unauthorised - necessary credentials are missing in the request
-   (Status 500): Internal Server Error - Data Hub is unable to respond


-----------
**`GET /Observation?patient=[Patient's Logical Id]&category=[The classification of the type of observation]&_sort=date&_count=[number of resources should be returned in a single page]`**

*Support:* Mandatory to support search by patient

*Implementation Notes:*  Search for all Observation associated with the provided patient reference and the category.

*Response Class:*

-   (Status 200): successful operation
-   (Status 400): Not Found, invalid parameter
-   (Status 410): Gone - requested resource is not found
-   (Status 401/4xx): Unauthorised - necessary credentials are missing in the request
-   (Status 500): Internal Server Error - Data Hub is unable to respond