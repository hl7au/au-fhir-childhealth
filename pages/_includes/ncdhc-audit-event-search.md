Below is an overview of the required search and read operations for this profile. See the CapabilityStatement requirements for the NCDHC Data Hub implementation guide server for a complete list of supported RESTful operations and search parameters for this IG.


-----------
**`GET /AuditEvent?patient=[Patient's Logical Id]&_sort=date&_count=[number of resources should be returned in a single page]`**

*Support:* Mandatory to support search by patient

*Implementation Notes:*  Search for all AuditEvent associated with the provided patient reference.

*Response Class:*

-   (Status 200): successful operation
-   (Status 400): Not Found, invalid parameter
-   (Status 410): Gone - requested resource is not found
-   (Status 401/4xx): Unauthorised - necessary credentials are missing in the request
-   (Status 500): Internal Server Error - Data Hub is unable to respond

-----------

**`GET /AuditEvent?patient=[Patient's Logical Id]&date=lt[Date to]&date=gt[Date from]&_sort=date&_count=[number of resources should be returned in a single page]`**

*Support:* Optional search by Date Range

*Implementation Notes:*  Search for all AduitEvent instances associated with the provided patient and a date range with a start date and an end date using the "Date to" field and the "Date from" field [(how to search by date)]

*Response Class:*

-   (Status 200): successful operation
-   (Status 400): Not Found, invalid parameter
-   (Status 410): Gone - requested resource is not found
-   (Status 401/4xx): Unauthorised - necessary credentials are missing in the request
-   (Status 500): Internal Server Error - Data Hub is unable to respond

-----------

**`GET /AuditEvent?patient=[Patient's Logical Id]&agent-role=[Agent role/s in the event. e.g.: 'PROV']&_sort=date&_count=[number of resources should be returned in a single page]`**

*Support:* Optional search by User Type

*Implementation Notes:*  Search for all AuditEvent instances associated with the provided patient and selected user type (user role).

*Response Class:*

-   (Status 200): successful operation
-   (Status 400): Not Found, invalid parameter
-   (Status 410): Gone - requested resource is not found
-   (Status 401/4xx): Unauthorised - necessary credentials are missing in the request
-   (Status 500): Internal Server Error - Data Hub is unable to respond

-----------

**`GET /AuditEvent?patient=[Patient's Logical Id]&action=[Type of action/s performed during the event. e.g.: 'R']&_sort=date&_count=[number of resources should be returned in a single page]`**

*Support:* Optional search by Action Type

*Implementation Notes:*  Search for all AuditEvent instances associated with the provided patient and selected action type.

*Response Class:*

-   (Status 200): successful operation
-   (Status 400): Not Found, invalid parameter
-   (Status 410): Gone - requested resource is not found
-   (Status 401/4xx): Unauthorised - necessary credentials are missing in the request
-   (Status 500): Internal Server Error - Data Hub is unable to respond

-----------

**`GET /AuditEvent?patient=[Patient's Logical Id]&&date=lt[Date to]&date=gt[Date from]&agent-role=[Agent role in the event. e.g.: 'PROV']&action=[Type of action performed during the event. e.g.: 'R']&_sort=date&_count=[number of resources should be returned in a single page]`**

*Support:* Optional search by applying all filters

*Implementation Notes:*  Search for all AuditEvent instances associated with the provided patient and applying filter on 'Date Range', 'User Type', and 'Action Type'

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

