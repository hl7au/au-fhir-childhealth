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