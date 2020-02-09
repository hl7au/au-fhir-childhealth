# {{ page.title }}

## Introduction

The **Child Digital Health Record (CDHR)**,intends to capture a participating child’s valuable health and development information, currently recorded in hard-copy baby books,through electronic means.
This would enable the easy and secure access of the child's health records by the parents and health-care providers when and where it is needed.

The CDHR proof-of-concept being trialled by the National Children’s Digital Health Collaborative does not require changes to existing processes,or to the type of information captured in local systems.The CDHR receives data for consented children from local clinical information systems and presents it to clinicians through a “Provider Viewer” and to consumers through “consumer applications”.  
Consumer entered data will also be available through the consumer applications.


The CDHR prrof of concept enables the exchange of information through a series of **health interactions** in real time within a defined privacy and consent framework.
It utilises child Health Interaction data from existing National, Jurisdictional and Non-Jurisdictional systems clinical systems and includes the 
capture of consumer Health Interaction data by parents and families through the use of consumer apps.The Health Interaction model is predicated on interoperability 
between systems collecting child health information.It is intended that these systems will be able to publish elements of that information as Health Interactions to share with the Child Digital Health record,as well as being able to subscribe and display interactions originating from other systems.


**Health Interaction(HI)** is a term used by the CDHR to describe a point in time when health related information is exchanged.  A Health Interaction could be:

     - a Clinical Health Interaction with a health-care provider e.g. a child’s health assessment with a GP or community nurse

     - a Consumer Health Interaction allows the consumer to input or view information through the consumer application e.g. height information. For the CDHR,the consumer who has access to this information is the authorised representative of the child (e.g. parent/guardian) or a nominated representative granted access to the record by the authorised representative (e.g. grandparent). 

     - a Technical Health Interaction e.g. a notification sent to a consumer e.g. a notification advising of a missed immunisation 

     - an Administrative Health Interaction e.g. a consumer consenting to participate in the child health record program



This guide covers the capability requirements of FHIR services to implement various profiles and support interfaces in an Australian context for the purpose of 
implementation of the CDHR.
This document is a working specification that is expected to be implemented and tested by FHIR®© system producers to enable feedback to improve the content of this guide.
## Scope

**CDHR Release 1.0.0** scope is limited to following health interactions:

**Consent to Participate**   
This is an Administrative Health Interaction.It creates a consent record that indicates the consumers agreement to participate in the Child Digital Health Record initiative.


**Consumer Audit View**  
This is an Administrative Health Interaction.It lets a consumer view an audit trail of consumers(representatives), , providers and organisations who have accessed their child health record, including the data sets viewed.


**Child and Representative Registration**   
This an Administrative Health Interaction.It creates a registration record for the child or representative in the CDHR system.


**Health Check Assessment**    
This is a Clinical Health Interaction.It captures information related to health checks, screening or other health assessments which are conducted across Australia based on each jurisdictions' defined health check schedule.

	 
**Newborn Delivery**  
This is a Clinical Health Interaction.It records all the identifying and clinical health information of a newbirth in the system. This interaction forms the basis of the child’s longitudinal health record.


**Withdrawal of Consent to Participate**    
This is an Administrative Health Interaction.It records a consumer's consent withdrawal to be part of the longitudinal child health record program.


**View Longitudinal Record**   
This is an Administrative Health Interaction.It lets a clinician or consumer view a child's longitudinal health record in context of the child's clinical record or via the consumer app.


**Consent Check**    
This an Administrative Health Interaction.Prior to the creation of the Longitudinal Health record and during an attempt to access or view the Longitudinal Health record,
 a consent check to ensure the consent is current and active.


For detailed description and complete list of profiles with relevant samples,refer [NCDHC Profiles]


More details on the Australian Child Health Working Group are available here: [Child Health Working Group](https://confluence.hl7australia.com/display/CHWG/Child+Health+Working+Group)

## Usage
This document is a working specification that may be directly implemented by FHIR®© system producers.

Information contained in this document is aimed at providing guidance on representing Australian local concepts using FHIR. This includes code systems, extensions and profiles on base FHIR types. The content of the IG is general in nature and seeks to provide a ‘how-to’ guide when representing concepts, it includes core base profiles that can be further constrained for a particular usage.

## Collaboration
This guide is the product of collaborative work undertaken with participants from:


* HL7 Australia Orders and Observations Working Group
* HL7 Australia Medications Working Group
* HL7 Australia Patient Administration Working Group
* Australian Digital Health Agency
* Australian FHIR Implementers' Community
* HL7 Australia Members 




[NCDHC Profiles]:http://build.fhir.org/ig/hl7au/au-fhir-childhealth/profiles.html  





