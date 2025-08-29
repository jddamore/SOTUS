Profile: BundleUsSotus
Parent: Bundle
Id: Bundle-us-sotus
Title: "Bundle (SOTUS)"
Description: "This profile represents the constraints applied to the Bundle resource by the SOTUS FHIR Implementation Guide."
* ^date = "2025-08-28T10:50:07-05:00"
* ^publisher = "HL7 International / Structured Documents"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/structure"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^purpose = "Description goes here."
* obeys bdl-ips-1
* . ^short = "SOTUS Bundle"
* . ^definition = "SOTUS Bundle. \r\nA container for a collection of resources in the patient summary document."
* identifier 1.. MS
* identifier ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:able-to-populate
* identifier ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = "http://hl7.org/fhir/uv/ips/ActorDefinition/Creator"
* identifier ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:handle
* identifier ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer"
* type = #document (exactly)
* timestamp 1.. MS
* timestamp ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:able-to-populate
* timestamp ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = "http://hl7.org/fhir/uv/ips/ActorDefinition/Creator"
* timestamp ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:handle
* timestamp ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer"
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^short = "Entry resource in the patient summary bundle"
* entry ^definition = "An entry resource included in the patient summary document bundle resource."
* entry ^comment = "Must contain the SOTUS Composition as the first entry (only a single Composition resource instance may be included) and a Patient resource.  Additional constraints are specified in the SOTUS Composition profile."
* entry.fullUrl 1.. 
* entry.search ..0
* entry.request ..0
* entry.response ..0
* entry contains
    composition 1..1 and
    patient 1..1 and
    allergyintolerance 0..* and
    careplan 0..* and
    clinicalimpression 0..* and
    condition 0..* and
    consent 0..* and
    device 0..* and
    deviceusestatement 0..* and
    diagnosticreport 0..* and
    documentreference 0..* and
    flag 0..* and
    imagingstudy 0..* and
    immunization 0..* and
    immunizationrecommendation 0..* and 
    medication 0..* and
    medicationrequest 0..* and
    medicationstatement 0..* and
    practitioner 0..* and
    practitionerrole 0..* and
    procedure 0..* and
    observation-pregnancy-edd 0..* and
    observation-pregnancy-outcome 0..* and
    observation-pregnancy-status 0..* and
    observation-alcohol-use 0..* and
    observation-tobacco-use 0..* and
    observation-results-laboratory-pathology 0..* and
    observation-results-radiology 0..* and
    observation-vital-signs 0..* and
    organization 0..* and
    specimen 0..* 
* entry[composition].resource 1..
* entry[composition].resource only CompositionUsSotus
* entry[composition] MS
* entry[composition] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:able-to-populate
* entry[composition] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = "http://hl7.org/fhir/uv/ips/ActorDefinition/Creator"
* entry[composition] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:handle
* entry[composition] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer"
* entry[composition] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHOULD:display
* entry[composition] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer"
* entry[patient].resource 1..
* entry[patient].resource only us-core-patient
* entry[allergyintolerance].resource 1..
* entry[allergyintolerance].resource only us-core-allergyintolerance
* entry[careplan].resource 1..
* entry[careplan].resource only us-core-careplan
* entry[clinicalimpression].resource 1..
* entry[clinicalimpression].resource only ClinicalImpression
* entry[condition].resource 1..
* entry[condition].resource only us-core-condition-problems-health-concerns
* entry[consent].resource 1..
* entry[consent].resource only Consent
* entry[device].resource 1..
* entry[device].resource only us-core-implantable-device
* entry[deviceusestatement].resource 1..
* entry[deviceusestatement].resource only DeviceUseStatementUsSotus
* entry[diagnosticreport].resource 1..
* entry[diagnosticreport].resource only us-core-diagnosticreport-lab
* entry[documentreference].resource 1..
* entry[documentreference].resource only us-core-documentreference
* entry[flag].resource 1..
* entry[flag].resource only FlagAlertUvIps
* entry[imagingstudy].resource 1..
* entry[imagingstudy].resource only ImagingStudyUvIps
* entry[immunization].resource 1..
* entry[immunization].resource only us-core-immunization
* entry[immunizationrecommendation].resource 1..
* entry[immunizationrecommendation].resource only ImmunizationRecommendation
* entry[medication].resource 1..
* entry[medication].resource only us-core-medication
* entry[medicationrequest].resource 1..
* entry[medicationrequest].resource only us-core-medicationrequest
* entry[medicationstatement].resource 1..
* entry[medicationstatement].resource only MedicationStatementIPS
* entry[practitioner].resource 1..
* entry[practitioner].resource only us-core-practitioner
* entry[practitionerrole].resource 1..
* entry[practitionerrole].resource only us-core-practitionerrole
* entry[procedure].resource 1..
* entry[procedure].resource only us-core-procedure
* entry[organization].resource 1..
* entry[organization].resource only us-core-organization
* entry[observation-pregnancy-edd].resource 1..
* entry[observation-pregnancy-edd].resource only ObservationPregnancyEddUvIps
* entry[observation-pregnancy-outcome].resource 1..
* entry[observation-pregnancy-outcome].resource only ObservationPregnancyOutcomeUvIps
* entry[observation-pregnancy-status].resource 1..
* entry[observation-pregnancy-status].resource only us-core-observation-pregnancystatus
* entry[observation-alcohol-use].resource 1..
* entry[observation-alcohol-use].resource only ObservationAlcoholUseUvIps
* entry[observation-tobacco-use].resource 1..
* entry[observation-tobacco-use].resource only us-core-smokingstatus
* entry[observation-results-laboratory-pathology].resource 1..
* entry[observation-results-laboratory-pathology].resource only us-core-observation-lab
* entry[observation-results-radiology].resource 1..
* entry[observation-results-radiology].resource only us-core-observation-clinical-result
* entry[observation-vital-signs].resource 1..
* entry[observation-vital-signs].resource only us-core-vital-signs
* entry[specimen].resource 1..
* entry[specimen].resource only SpecimenUvIps
