This profile contains the following variations from [AuditEvent](http://hl7.org/fhir/STU3/AuditEvent):

1. The following data elements are used in NCDHC AuditEvent context
   * a <span style='color:green'> type </span> to be added to capture family of the event. Allowed codes for <span style='color:green'> type </span>  should be picked up from [NCDHC Audit Type]
   * one or more <span style='color:green'> subtype </span> to be added to capture category of event. For an example of the event is related to a Health Interaction type, then the specific Health Interaction name should be provided. Allowed codes for <span style='color:green'> subtype </span>  should be picked up from [NCDHC Audit SubType]
   * an <span style='color:green'> action </span> to be added to capture  type of action performed during the event that generated the audit. Example 'R' to represent Read Operation. 
   * <span style='color:green'> recorded </span> should be used to capture when the event occurred on the source.
   * an <span style='color:green'> outcomeDesc </span> may be added to capture additional details.
   * one or more <span style='color:green'> agent </span> SHALL be added along with providing the role and name of the agent. Allowed codes for <span style='color:green'> type </span>  should be picked up from [NCDHC Audit Role Type] The following role codes SHOULD be used to represent type of users:
		* PAT: To represent patient in context.	
		* RESPRSN: Authorised Representative.
		* NOMREP: Nominated Representative. 
		* PROV: Health Care Provider.
		* CST: Provider Organisation. 
		* AGNTADMN: Admin - Person
		* AGNTSYS: Admin - System				
   * one or more <span style='color:green'> entity </span> may be added to capture the referenced instances. For an example, if the event is related to creation of Newborn Delivery Health Interaction, then the Composition instance of that HI may be provided. 


[NCDHC Audit Type]: ValueSet-ncdhc-audit-type-1.html
[NCDHC Audit SubType]: ValueSet-ncdhc-audit-subtype-1.html
[NCDHC Audit Role Type]: ValueSet-ncdhc-audit-role-type-1.html