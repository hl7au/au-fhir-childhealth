<!-- guidance.md {% comment %}

{% endcomment %} -->


# FHIR (Fast Healthcare Interoperability Resources)

FHIR is a standard developed by HL7. The standard describes data formats and elements, known as [Resources](https://www.hl7.org/fhir/resourcelist.html), by which content is exchanged.

A FHIR resource may be supplied in one of the following formats: [XML](https://www.hl7.org/fhir/xml.html), [JSON](https://www.hl7.org/fhir/json.html) and [Turtle](https://www.hl7.org/fhir/rdf.html). FHIR supports four paradigms for exchange: the RESTful API (Application Programming Interface), messaging, documents, and services.

This implementation guide describes FHIR resources built following the rules described in [FHIR, Release 4](http://hl7.org/fhir/R4/).

The FHIR specification is evolving; the current FHIR specification is available at [HL7 FHIR](http://hl7.org/fhir). A [Publication (Version) History](http://www.hl7.org/fhir/directory.cfml) of past and current working versions, including [FHIR Release 4 (First Normative content)](http://hl7.org/fhir/index.html) is available.


The following references are recommended to gain a better understanding of FHIR:
* [FHIR, Release 4](http://hl7.org/fhir/R4/)
* [FHIR Getting Started](http://hl7.org/fhir/R4/modules.html)
* [HL7 International FHIR Wiki](https://wiki.hl7.org/FHIR)


## Profile / extension representation and structure

Each profile or extension (StructureDefinition) described by this implementation guide has a separate page that presents the normative definition of that profile or extension and informative content to support implementation.

The content of each page is structured as follows:
* Profile title followed by the profile status hyperlinked to FHIR [Publication Status](http://hl7.org/fhir/R4/valueset-publication-status.html).
* Usage scenarios, if present, includes a short description of the example or expected usage scenarios for that profile that are supported by this implementation guide. Usage scenarios are only present if a profile is of the primary grouping resource for exchange purposes.
* Implementation guidance includes guidance specific to the usage scenarios supported by this implementation guide. This content is informative; there may be valid reasons not to follow this guidance, but the full implications must be understood and carefully weighed before choosing a different course.
* Formal Views of Profile Content includes the human readable view of the normative definition of the profile or extension.
* Known Issues includes the list of unintended or unexpected behaviours associated with that profile we are aware of that have an impact that implementers should take note of.

The Formal Views of Profile Content contains:
* The canonical url e.g. *http://build.fhir.org/ig/hl7au/au-fhir-childhealth/StructureDefinition/ncdhc-bundle-newborn-bloodspot-screen-document*
* A free text natural language description of the structure and its use that also includes the information on meaning of must support
* Identification of the base resource from which this profile is derived from; included in this implementation guide as “This profile builds on [base resource]”
* A set of metadata that describes the version of the profile, publisher and the date of publishing; included as “This profile was published on [date] as a [status] by [publisher “National Children's Digital Health Collaborative (NCDHC)”].”
* A human readable view of the structure:
    * **Differential Table**: Shows details of what is being changed in the profile in regards to its base resource
    * **Snapshot Table**: Shows computed outcome of applying the statements in the differential to the base resource. An instance claiming conformance to a profile needs to conform to the snapshot representation of the profile

The fields used to present the Differential Table and the Snapshot Table in this implementation guide are described in [Logical table](http://hl7.org/fhir/R4/formats.html#table).


## Conformance conventions

### StructureDefinition
The content of this implementation guide is a set of FHIR [StructureDefinition](http://hl7.org/fhir/R4/structuredefinition.html) resources for implementing the document model that is the subject of this implementation guide.

This implementation guide includes FHIR profiles that are a set of constraints and/or extensions to FHIR base resources or a data types in the format of a StructureDefinition resource. A StructureDefinition describes a structure - a set of data element definitions, and their associated rules of usage – and is hereafter referred to as a ‘profile’ or an ‘extension’.

A profile or extension is identified by its canonical URL e.g. *http://build.fhir.org/ig/hl7au/au-fhir-childhealth/StructureDefinition/ncdhc-bundle-newborn-bloodspot-screen-document*. These canonical URLs are unique to each profile or extension. When valued in an instance, the URL signals the imposition of a set of defined constraints. The URL value provides a globally unique identifier for the profile or extension in question and in the case of a profile or extension described in this implementation guide the major version number is identified by the final digit of the URL.

### Must Support
A must support flag, when present in this implementation guide, is displayed as letter “S” with red background in the Flag column of the Differential Table and Snapshot Table of a profile or extension, as such <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" title="This element must be supported">S</span>.
This is a boolean flag which can be declared on profiles but not on resource or data type definitions.If true, it expects that the systems using the profile must "support" the element. This is distinct from cardinality. It is possible to have an element with a minimum cardinality of "0", but still expect systems to support the element.

### Conformance verbs
The conformance verbs used in this implementation guide are defined in [FHIR Conformance Rules](http://hl7.org/fhir/R4/conformance-rules.html#conflang). Conformance verbs are also present in invariants which are visible in the “Description & Constraints” column of the Differential Table and Snapshot Table of a profile or extension.

### Terminology binding
The terminology binding rules are defined in [Controlling the use of Coded Values](http://hl7.org/fhir/R4/terminologies.html#binding). Terminology is specified in this implementation guide, 
in some cases binding an element to a value set or binding to a single fixed code. For guidance on coding see [Using Codes in Resources](http://hl7.org/fhir/R4/terminologies.html).

A value set binding, if present in this specification, will be specified in the "Description & Constraints" column of a profile as the title of the value set (hyperlinked to its definition) followed by identification of the binding strength (hyperlinked to its definition), e.g. [NCDHC Health Interaction Type](http://build.fhir.org/ig/hl7au/au-fhir-childhealth/ValueSet-ncdhc-hi-type-2.html) ([required](http://hl7.org/fhir/R4/terminologies.html#code)).


### Cardinality
Cardinality rules in FHIR are defined in [FHIR Conformance Rules](http://hl7.org/fhir/R4/conformance-rules.html#conflang). This section provides a description of those rules as present in this implementation guide and how they are to be interpreted.

The cardinality range specifies the allowable occurrences within a document instance. Cardinality range is specified in the format “m..n” where m is the minimum allowed members of the set (lower bound) and n is the maximum allowed members of the set (upper bound). The allowed values for m and n are 0, any positive integer, and *.


### Slicing 
Slicing rules in FHIR are defined in [Profiling FHIR](http://hl7.org/fhir/R4/profiling.html). This section provides a description of slicing as present in this implementation guide.

Slicing is a mechanism to describe patterns of restrictions (i.e. conformance requirements). Slicing, usually on resource elements that can appear more than once in a profile, or on elements that do not repeat but have a choice of data types, where each slice has a different definition of the element. For example, the section element in a composition profile may be sliced into a list of slices in order to give each section slice a different set of restrictions.

A sliced element can be identified by the following icon <span style="padding-left: 3px; padding-right: 3px"><img src="icon_slice.png" alt="." style="background-color: white; background-color: inherit"/></span> in the Name column of the Differential and Snapshot views of the Differential Table and Snapshot Table of a profile or extension.

Slicing rules are:
* **Ordered**: describes whether the slices must come in the order they are defined (Ordered), or whether they can come in any order (Unordered)
* **Rules**: describes whether the profiles that are derived from this one are allowed to add additional slices (Open), or not allowed to add additional slices (Closed)
* **Discriminator**: an element or a list of elements used to discriminate the slices. When a discriminator is provided, the composite of the values of the elements designated in the discriminator is unique and distinct for each possible slice