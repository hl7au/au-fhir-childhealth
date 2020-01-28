# {{ page.title }}

## FHIR (Fast Healthcare Interoperability Resources)

FHIR is a standard developed by HL7. The standard describes data formats and elements, known as [Resources](http://hl7.org/fhir/stu3/resourcelist.html), by which content is exchanged.

A FHIR resource may be supplied in one of the following formats: [XML](http://hl7.org/fhir/stu3/xml.html), [JSON](http://hl7.org/fhir/stu3/json.html) and [Turtle](http://hl7.org/fhir/stu3/rdf.html). FHIR supports four paradigms for exchange: the RESTful API (Application Programming Interface), messaging, documents, and services.

This implementation guide describes FHIR resources built following the rules described in [FHIR, Release 3 (STU)](http://hl7.org/fhir/STU3/).

The FHIR specification is evolving; the current FHIR specification is available at [http://hl7.org/fhir](http://hl7.org/fhir). A [Publication (Version) History](http://www.hl7.org/fhir/directory.cfml) of past and current working versions, including [FHIR Release 4 (First Normative content)](http://hl7.org/fhir/index.html) is available.


The following references are recommended to gain a better understanding of FHIR:
* [FHIR, Release 3 (STU) ](http://hl7.org/fhir/STU3/)
* [FHIR Overview](https://www.hl7.org/fhir/stu3/overview.html)
* [HL7 International FHIR Wiki](https://wiki.hl7.org/FHIR)


## NCDHC FHIR Profiling Approach  

NCDHC profiling approach :  
* Adopts [FHIR, Release 3 (STU)](http://hl7.org/fhir/STU3/) as the standard for implementation. 

* Inherits the [HL7 Australian Profiles](http://hl7.org.au/fhir/base/aubase1.1/profiles.html) and standards wherever possible. However there are occasions where NCDHC profiles are derived directly from the [HL7 International profiles](http://hl7.org/fhir/STU3/resourcelist.html).

* Consults with other national programs including [AU Base Profiles](http://www.hl7.org/fhir/us/core/), Digital Agency Profiles and Terminologies and AU [Argonaut Profiles](http://build.fhir.org/ig/hl7au/argonaut-au/profiles.html). 

![NCHDC FHIR Profiling](assets/images/cdhrFHIRProfiling.png)

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

## Profile / extension representation and structure

Each profile or extension (StructureDefinition) described by this implementation guide has a separate page that presents the normative definition of that profile or extension and informative content to support implementation.

The content of each page is structured as follows:
* Profile title followed by the profile status hyperlinked to FHIR [PublicationStatus](http://hl7.org/fhir/stu3/valueset-publication-status.html).
* Usage scenarios, if present, includes a short description of the example or expected usage scenarios for that profile that are supported by this implementation guide. Usage scenarios are only present if a profile is of the primary grouping resource for exchange purposes.
* Implementation guidance includes guidance specific to the usage scenarios supported by this implementation guide. This content is informative; there may be valid reasons not to follow this guidance, but the full implications must be understood and carefully weighed before choosing a different course.
* Formal Views of Profile Content includes the human readable view of the normative definition of the profile or extension.
* Known Issues includes the list of unintended or unexpected behaviours associated with that profile we are aware of that have an impact that implementers should take note of.

The Formal Views of Profile Content contains:
* The canonical url e.g. *http://hl7.org.au/fhir/ch/v1/StructureDefinition/ncdhc-observation-head-shape*
* A free text natural language description of the structure and its use that also includes the information on meaning of must support
* Identification of the base resource from which this profile is derived from; included in this implementation guide as “This profile builds on [base resource]”
* A set of metadata that describes the version of the profile, publisher and the date of publishing; included as “This profile was published on [date] as a [status] by [publisher “National Children's Digital Health Collaborative (NCDHC)”].”
* A human readable view of the structure:
    * **Differential Table**: Shows details of what is being changed in the profile in regards to its base resource
    * **Snapshot Table**: Shows computed outcome of applying the statements in the differential to the base resource. An instance claiming conformance to a profile needs to conform to the snapshot representation of the profile

The fields used to present the Differential Table and the Snapshot Table in this implementation guide are described in [Logical table](http://hl7.org/fhir/stu3/formats.html#table).

## Validating resources using profiles from this implementation guide

There are several means of [validating resources](http://hl7.org/fhir/validation.html) against a set of rules, each with differing coverage and capabilities.

Some rules may be defined in a machine-processable manner and thus can be checked by automated means, however some rules are defined solely in human-readable descriptions. The profiles and extensions described by this implementation guide can contain both.

Existing validation tools differ in their support for machine-processable rules. These tools continue to evolve and progressively implement the FHIR standard; it should be noted that different servers and tools may not provide equivalent responses when executing the same operation.

The validation tools used during development of the profiles and extensions described in this implementation guide include [Forge](https://fire.ly/products/forge/) and the [IG Publisher](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation) (with its in-built validation process).

## Zulip Discussions and Recommendations used in NCDHC Profile Implementation

The table below describes the issues and recommendations from Zulip that helped in implementing the profiling for the described usage scenarios. [Implementation Support Module](http://hl7.org/fhir/stu3/implsupport-module.html) provides a helpful reference for information about available tools, libraries and other similar resources.

Readers of this implementation guide are encouraged to actively participate in the FHIR community and get involved in the development of the standard and related tooling. 

<table border="1" cellpadding="1" valign="middle">
<tbody>
  <tr bgcolor="#DCDCDC">
    <th>Context</th>
    <th>Description</th>
    <th>Reference</th>
  </tr>
  <tr>
    <td>Use of 'pattern' in NCDHC Profiles</td>
    <td>
        <p>NCDHC team consulted with HL7 FHIR Community and as per the recommendations, NCDHC adopted pattern based slicing over fixed code slice</p>
    </td>
    <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179166-implementers/topic/Fixed.20Code.20vs.20Pattern">Fixed vs Pattern</a> discussion</td>
  </tr>
  <tr>
    <td>SMART-On-FHIR Launch</td>
    <td>
        <p>NCDHC team consulted with HL7 FHIR Community to understand and model the Person, Patient and RelatedPerson based model driven with Consent</p>
    </td>
    <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179170-smart/topic/Launch.20SMARTly">Launch SMARTly</a> discussion</td>
  </tr> 
  <tr>
    <td>SMART Backend Model</td>
    <td>
        <p>NCDHC team consulted with HL7 FHIR Community to determin which SMART-On-FHIR model to use</p>
    </td>
    <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179170-smart/topic/Smart.20Backend.20Auth.20Model">SMART Backend Model</a> discussion</td>
  </tr>
  <tr>
    <td>Immutable FHIR document</td>
    <td>
        <p>NCDHC team consulted with HL7 FHIR Community model Immutable FHIR document and what it means</p>
    </td>
    <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179166-implementers/topic/Immutable.20FHIR.20Document">Immutable FHIR Document</a> discussion</td>
  </tr>
  <tr>
    <td>Slicing Composition Entry and use of profile=resolve()</td>
    <td>
        <p>NCDHC team consulted with HL7 FHIR Community to use Composition Section entry slicing and how to use profile=resolve() as Discriminator </p>
    </td>
    <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179166-implementers/topic/Slicing.20Composition.20Entries">Slicing Composition Entries</a> discussion</td>
  </tr>
  <tr>
    <td>FHIR Document Search</td>
    <td>
        <p>NCDHC team consulted with HL7 FHIR Community to get suggestion on FHIR document search and inclusion of Provenance</p>
    </td>
    <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179166-implementers/topic/FHIR.20document.20search.20and.20inclusion.20of.20Provenance">FHIR document search and inclusion of Provenance</a> discussion</td>
  </tr>     
 </tbody>
</table> 

## Open Issues and Decisions NCDHC Profile Implementation

The table below describes the open issues and decisions in implementing the profiling for the described usage scenarios.


<table border="1" cellpadding="1" valign="middle">
<tbody>
  <tr bgcolor="#DCDCDC">
    <th>Summary</th>
    <th>Description</th>
    <th>Reference (if any)</th>
  </tr>
  <tr>
    <td>Issues in MedicationStatement Vitamin K Profile</td>
    <td>
        <p>The IG Publisher reported error in NCDHC Vitamin K profiles. NCDHC team is working with HL7 Australia and FHIR community to fix this issue.</p>
    </td>
    <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179173-australia/topic/Error.20with.20MedicationStatement"></a> discussions</td>
  </tr>  
 </tbody>
</table>

The following resources are available to raise questions or issues relating to FHIR and FHIR tooling:
* [NCDHC FHIR Chat Channel Zulip](https://chat.fhir.org/#narrow/stream/179284-australia-child-health)
* [FHIR Community Forum](http://community.fhir.org/)
* [StackOverflow](https://stackoverflow.com/questions/tagged/hl7_fhir)
* [HL7 Jira Issues](https://jira.hl7.org/secure/Dashboard.jspa)


## Conformance conventions

### StructureDefinition
The content of this implementation guide is a set of FHIR [StructureDefinition](http://hl7.org/fhir/stu3/structuredefinition.html) resources for implementing the document model that is the subject of this implementation guide.

This implementation guide includes FHIR profiles that are a set of constraints and/or extensions to FHIR base resources or a data types in the format of a StructureDefinition resource. A StructureDefinition describes a structure - a set of data element definitions, and their associated rules of usage – and is hereafter referred to as a ‘profile’ or an ‘extension’.

A profile or extension is identified by its canonical URL e.g. *http://hl7.org.au/fhir/ch/v1/StructureDefinition/ncdhc-composition-view-hca-14wks*. These canonical URLs are unique to each profile or extension. When valued in an instance, the URL signals the imposition of a set of defined constraints. The URL value provides a globally unique identifier for the profile or extension in question and in the case of a profile or extension described in this implementation guide the major version number is identified by the final digit of the URL.

### Must Support
A must support flag, when present in this implementation guide, is displayed as letter “S” with red background in the Flag column of the Differential Table and Snapshot Table of a profile or extension, as such <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" title="This element must be supported">S</span>.

### Conformance verbs
The conformance verbs used in this implementation guide are defined in [FHIR Conformance Rules](http://hl7.org/fhir/STU3/conformance-rules.html#conflang). Conformance verbs are also present in invariants which are visible in the “Description & Constraints” column of the Differential Table and Snapshot Table of a profile or extension.

### Terminology binding
The terminology binding rules are defined in [Controlling the use of Coded Values](http://hl7.org/fhir/stu3/terminologies.html#binding). Terminology is specified in this implementation guide, 
in some cases binding an element to a value set or binding to a single fixed code. For guidance on coding see [Using Codes in Resources](http://hl7.org/fhir/stu3/terminologies.html).

A value set binding, if present in this specification, will be specified in the "Description & Constraints" column of a profile as the title of the value set (hyperlinked to its definition) followed by identification of the binding strength (hyperlinked to its definition), e.g. [Health Summary Non-Clinical Empty Reason](https://healthterminologies.gov.au/fhir/ValueSet/health-summary-non-clinical-empty-reason-1) ([required](http://hl7.org/fhir/stu3/terminologies.html#code)).


### Cardinality
Cardinality rules in FHIR are defined in [FHIR Conformance Rules](http://hl7.org/fhir/STU3/conformance-rules.html#conflang). This section provides a description of those rules as present in this implementation guide and how they are to be interpreted.

The cardinality range specifies the allowable occurrences within a document instance. Cardinality range is specified in the format “m..n” where m is the minimum allowed members of the set (lower bound) and n is the maximum allowed members of the set (upper bound). The allowed values for m and n are 0, any positive integer, and *.


### Slicing 
Slicing rules in FHIR are defined in [Profiling FHIR](http://hl7.org/fhir/stu3/profiling.html). This section provides a description of slicing as present in this implementation guide.

Slicing is a mechanism to describe patterns of restrictions (i.e. conformance requirements). Slicing, usually on resource elements that can appear more than once in a profile, or on elements that do not repeat but have a choice of data types, where each slice has a different definition of the element. For example, the section element in a composition profile may be sliced into a list of slices in order to give each section slice a different set of restrictions.

A sliced element can be identified by the following icon <span style="padding-left: 3px; padding-right: 3px"><img src="icon_slice.png" alt="." style="background-color: white; background-color: inherit"/></span> in the Name column of the Differential and Snapshot views of the Differential Table and Snapshot Table of a profile or extension.

Slicing rules are:
* **Ordered**: describes whether the slices must come in the order they are defined (Ordered), or whether they can come in any order (Unordered)
* **Rules**: describes whether the profiles that are derived from this one are allowed to add additional slices (Open), or not allowed to add additional slices (Closed)
* **Discriminator**: an element or a list of elements used to discriminate the slices. When a discriminator is provided, the composite of the values of the elements designated in the discriminator is unique and distinct for each possible slice



## Resource notation:

The interactions on IG page are defined like this:

GET ***[base]/[Resource-type]/[id] {parameters}***

* GET is the HTTP verb used for fetching a resource  
* Content surrounded by [] is mandatory, and will be replaced by the string literal identified.  
    - base: The Service Root URL 
    - Resource-type: The name of a resource type (e.g. “AuditEvent”)  
    - id: The Logical Id of a resource(e.g. “24342”)    
* Content surrounded by {} is optional  
    - parameters: URL parameters as defined for the particular interaction (e.g.”?_format=xml”}  


For more information see the [FHIR RESTful API]  


In the simplest case, a search is executed by performing a GET operation in the RESTful framework:  

GET ***[base]/[Resource-type]?name=value&…***   

For this RESTful search (see definition in RESTful API), the parameters are a series of name=[value] pairs encoded in the URL. The search parameter names are defined for each resource. For example the Observation resource the name “code” for search on the LOINC code. See Searching for more information about searching in REST, messaging, and services.   

Examples: 
  
  * Search for all AuditEvent instances associated with the provided patient and applying filter on 'Date Range', 'User Type', and 'Action Type'/

       - ***GET [base]/AuditEvent?patient=[Patient's Logical Id]&&date=lt[Date to]&date=gt[Date from]&agent-role=[Agent role in the event. e.g.: 'PROV']&action=[Type of action performed during the event. e.g.: 'R']***  


   
   * Searches a Composition document instance extracted from the source Bundle documents based on patient,id of document,type of document,class of document and summary flag

       - ***GET [base]/Composition/$view-document?patient=[Patient's Logical Id]&type=[type code of the view]&id=[Logical id of the Composition on which the FHIR document will be constructed]&class=[Class code of the document to fetch]&summary=[boolean,Flag to get QuestionnaireResponse based document]***  
 


**Guidance on limiting the number of search results**    
CDHR server doesnt support pagaination in this release.It slows down with too many search results.




[FHIR RESTful API]:http://hl7.org/fhir/STU3/http.html  