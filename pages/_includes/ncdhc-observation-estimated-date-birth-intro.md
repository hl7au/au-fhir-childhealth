**NCDHC Estimated Date of Birth Observation**

This profile sets minimum expectations for the [Observation] resource to record an estimated date of birth Observation using the FHIR Observation resource. The profile is at draft stage and under review by the Child Health Working Group.

#### Examples

- [Estimated Date of Birth Observation](ncdhc-observation-estimated-date-birth-example.html)

#### Known issues

- Examples of this profile will produce "Could not match discriminator ([resolve().code.coding]) for slice" errors on Bundle.entry[0].resource.section[0].entry. This is awaiting changes to the FHIR validator. See [Zulip](https://chat.fhir.org/#narrow/stream/179177-conformance/topic/Validator.20and.20slicing).

[Observation]: http://hl7.org/fhir/observation.html
 