# {{ page.title }}

These Profiles have been defined for this implementation guide.

## Patient Profiles
* [NCDHC Patient](StructureDefinition-ncdhc-patient.html) - Demographic details of the Patient.

## Consent Profiles
* [NCDHC Consent Details](StructureDefinition-ncdhc-consent.html) - Consent profile to record access and use of patient record in NCDHC program.

## Audit Event Profiles
* [NCDHC Audit Details](StructureDefinition-ncdhc-audit-event.html) - AuditEvent profile to record audit details of all operations performed in Data Hub.

## Orders and Observation Profiles
* [NCDHC Estimated Gestation](StructureDefinition-ncdhc-observation-estimated-gestation.html) - Observation profile to record gestational age in weeks and days (usually equivalent to length of pregnancy). 
* [NCDHC Congenital anomalies of the newborn](StructureDefinition-ncdhc-observation-birth-abnormalities.html) - Observation profile to record physical problems identified with the baby at, or shortly after birth. E.g. cleft lip/palate, extensive bruising, cephalohematoma etc. 
* [NCDHC APGAR Score](StructureDefinition-ncdhc-observation-apgar-score.html) - A set of observations made on the baby following birth to check adaptation to life outside the womb.  This includes 1 minute, 5 minutes and 10 minutes
* [NCDHC Body Weight Vital Sign](StructureDefinition-ncdhc-observation-vitalsign-bodyweight.html) - Vital Sign profile to represent Weight of Body. This profile is used to record the Birth Weight as well.
* [NCDHC Body Height Vital Sign](StructureDefinition-ncdhc-observation-vitalsign-bodyheight.html) - Vital Sign profile to represent Length of Body. This profile is used to record the Birth Height as well.
* [NCDHC Body Mass Index (BMI) Vital Sign](StructureDefinition-ncdhc-observation-vitalsign-bmi.html) - Vital Sign profile to represent Body Mass Index (BMI).
* [NCDHC Head Circumference Vital Sign](StructureDefinition-ncdhc-observation-vitalsign-headcircum.html) - Vital Sign profile to represent Numeric value for head circumference
* [NCDHC Body Weight](StructureDefinition-ncdhc-observation-bodyweight.html) - Observation profile to represent Weight of Body. This profile is used to record the Birth Weight as well. This profile allows the system to send body/birth weight details to DataHub using SNOMED Code only. 
* [NCDHC Body Height](StructureDefinition-ncdhc-observation-bodyheight.html) - Observation profile to represent height of Body. This profile is used to record the Birth Height as well. This profile allows the system to send body/birth Height details to DataHub using SNOMED Code only. 
* [NCDHC Birth Complication](StructureDefinition-ncdhc-observation-birth-complication.html) - Observation profile to record complications observed during the birthing process
* [NCDHC Pregnancy Complications](StructureDefinition-ncdhc-observation-pregnancy-complication.html) - Observation profile to record maternal medical conditions or infectious diseases arising in pregnancy which may have an impact on the fetus, e.g. gestational diabetes, infection etc.
* [NCDHC Labour Initiation](StructureDefinition-ncdhc-observation-labour-induced.html) - Observation profile to record labour initiation eg spontaneous, induced 
* [NCDHC Method Of Delivery](StructureDefinition-ncdhc-observation-method-of-delivery.html) - Observation profile to record type of birth observed during the birthing procedure 
* [NCDHC Feeding Status](StructureDefinition-ncdhc-observation-feeding-status.html) - Observation profile to record baby's Feeding Status at Discharge 
* [NCDHC Blood Spot Screen](StructureDefinition-ncdhc-observation-bloodspot-screen.html) - Observation profile to record newborn's Blood Spot Screen test status 
* [NCDHC Hearing Screen](StructureDefinition-ncdhc-observation-hearing-screen.html) - Observation profile to record newborn's Hearing Screen test status 

## FamilyMemberHistory Profiles
* [NCDHC Family History](StructureDefinition-ncdhc-familymemberhistory.html) - FamilyMemberHistory profile to record family history (e.g.: deafness)

## Immunization Profiles
* [NCDHC Immunisation](StructureDefinition-ncdhc-immunisation.html) - Immunization profile to record HepB Immunoglobin & HepB Immunisation details given to the newborn at birth

## Encounter Profiles
* [NCDHC Encounter](StructureDefinition-ncdhc-encounter.html) - Encounter profile to record  administrative details (e.g.: date and time of discharge, name of the service or facility the baby was discharged from etc.)

## Composition Profiles
* [NCDHC Newborn Delivery Health Interaction](StructureDefinition-ncdhc-composition-birth.html) - Composition profile to represent Newborn Delivery (Birth) Health Interaction
* [NCDHC Newborn Discharge Health Interaction](StructureDefinition-ncdhc-composition-discharge.html) - Composition profile to represent Newborn Discharge Health Interaction
* [NCDHC Newborn Blood Spot Screen Health Interaction](StructureDefinition-ncdhc-composition-bloodspot-screen.html) - Composition profile to represent Newborn Blood Spot Screen Health Interaction
* [NCDHC Newborn Hearing Screen Health Interaction](StructureDefinition-ncdhc-composition-hearing-screen.html) - Composition profile to represent Newborn Hearing Screen Health Interaction
* [NCDHC Newborn Exam Health Interaction](StructureDefinition-ncdhc-composition-exam.html) - Composition profile to represent Newborn Exam Health Interaction
* [NCDHC Newborn Health Check Health Interaction](StructureDefinition-ncdhc-composition-health-check-assessment.html) - Composition profile to represent Newborn Health Check Health Interaction
* [NCDHC Newborn Family Member History Health Interaction](StructureDefinition-ncdhc-composition-familyhistory.html) - Composition profile to represent Newborn Family Member History Health Interaction
