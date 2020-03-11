**NCDHC Estimated Date of Birth Composition**

This profile is used to represent NCDHC Estimated Date of Birth as a FHIR document using Composition resource. The profile is at draft stage and under review by the Child Health Working Group. 

#### Examples

- [Estimated Date of Birth Document](ncdhc-estimated-date-birth-document-example.html)

#### Known issues

- Examples of this profile will produce "Could not match discriminator ([resolve().code.coding]) for slice" errors on Bundle.entry[0].resource.section[0].entry. This is awaiting changes to the FHIR validator. See [Zulip](https://chat.fhir.org/#narrow/stream/179177-conformance/topic/Validator.20and.20slicing).