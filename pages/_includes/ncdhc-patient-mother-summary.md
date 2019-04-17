This profile is different from [AU Patient](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-patient.html) in the following way

1. One or more <span style='color:green'>name</span> are made mandatory
1. <span style='color:green'>contact</span> sliced to include the following relationship types:
	* <span style='color:green'>contactFather</span> to capture Father's name details.
	* <span style='color:green'>contactMother</span> to capture Mother's name details.
	* <span style='color:green'>contactOther</span> to capture Other Parent's Name.
	* <span style='color:green'>contactFedAgency</span> to capture details of any State Agency taking the responsibility of the Baby patient.
	* <span style='color:green'>contactStateAgency</span> to capture details of any Federal Agency taking the responsibility of the Baby patient.
