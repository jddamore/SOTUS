Instance: bundle-no-info-required-sections
InstanceOf: BundleUsSotus
Title: "Bundle - No Information in Required Sections"
Description: "Bundle - No Information in Required Sections"
Usage: #example
* language = #en-US
* identifier.system = "urn:oid:2.16.724.4.8.10.200.10"
* identifier.value = "59f51f0b-2005-485c-858e-3d3ae9657287"
* type = #document
* timestamp = "2025-01-08T20:42:11.0607701+00:00"
* entry[0].fullUrl = "https://example.fhir.org/fhir/Composition/514af4c1-194d-48b4-8afe-7be09d3f895a"
* entry[=].resource = 514af4c1-194d-48b4-8afe-7be09d3f895a
* entry[+].fullUrl = "https://example.fhir.org/fhir/Patient/AAA1234"
* entry[=].resource = AAA1234
* entry[+].fullUrl = "https://example.fhir.org/fhir/PractitionerRole/f54d8c90-aea2-46b0-8f7a-8683db78344e"
* entry[=].resource = f54d8c90-aea2-46b0-8f7a-8683db78344e
* entry[+].fullUrl = "https://example.fhir.org/fhir/Practitioner/19c24876-ccf8-45e7-8b66-462317e970f1"
* entry[=].resource = 19c24876-ccf8-45e7-8b66-462317e970f1
* entry[+].fullUrl = "https://example.fhir.org/fhir/Organization/70a756e3-20b3-4637-8601-a222983e295a"
* entry[=].resource = 70a756e3-20b3-4637-8601-a222983e295a

Instance: 514af4c1-194d-48b4-8afe-7be09d3f895a
InstanceOf: CompositionUsSotus
Usage: #inline
* meta.versionId = "1"
* language = #en-US
* identifier.system = "urn:oid:2.16.840.1.113883.2.18.7.2"
* identifier.value = "59f51f0b-2005-485c-858e-3d3ae9657287"
* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* subject = Reference(AAA1234)
* date = "2021-05-03"
* author = Reference(19c24876-ccf8-45e7-8b66-462317e970f1)
* title = "Patient Summary as of 2021-05-03"
* confidentiality = #N
* attester.mode = #professional
* attester.time = "2021-05-03"
* attester.party = Reference(f54d8c90-aea2-46b0-8f7a-8683db78344e)
* custodian = Reference(70a756e3-20b3-4637-8601-a222983e295a)
* relatesTo.code = #transforms
* relatesTo.targetIdentifier.system = "urn:oid:2.16.840.1.113883.2.18.7.2"
* relatesTo.targetIdentifier.value = "59f51f0b-2005-485c-858e-3d3ae9657287"
* event.code = $v3-ActClass#PCPR
* event.period.end = "2021-05-03"
* section[sectionAllergies].title = "Allergies and Intolerances"
* section[sectionAllergies].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[sectionAllergies].text.status = #generated
* section[sectionAllergies].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en-US' xml:lang='en-US'>There is no information available regarding the subject's allergies.</div>"
* section[sectionAllergies].emptyReason = $list-empty-reason#unavailable "Unavailable"
* section[sectionAllergies].emptyReason.text = "No information available"
* section[sectionProblems].title = "Problem List"
* section[sectionProblems].code = $loinc#11450-4 "Problem list - Reported"
* section[sectionProblems].text.status = #generated
* section[sectionProblems].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en-US' xml:lang='en-US'>There is no information available about the subject's health problems or disabilities.</div>"
* section[sectionProblems].emptyReason = $list-empty-reason#unavailable "Unavailable"
* section[sectionProblems].emptyReason.text = "No information available"
* section[sectionMedications].title = "Medication Summary"
* section[sectionMedications].code = $loinc#10160-0 "History of Medication use Narrative"
* section[sectionMedications].text.status = #generated
* section[sectionMedications].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en-US' xml:lang='en-US'>There is no information available about the subject's medication use or administration.</div>"
* section[sectionMedications].emptyReason = $list-empty-reason#unavailable "Unavailable"
* section[sectionMedications].emptyReason.text = "No information available"
* section[sectionResults].title = "Results"
* section[sectionResults].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
* section[sectionResults].text.status = #generated
* section[sectionResults].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en-US' xml:lang='en-US'>There is no information available about the subject's relevant diagnostic tests or laboratory data.</div>"
* section[sectionResults].emptyReason = $list-empty-reason#unavailable "Unavailable"
* section[sectionResults].emptyReason.text = "No information available"
* section[sectionSocialHistory].title = "Social History"
* section[sectionSocialHistory].code = $loinc#29762-2 "Social history note"
* section[sectionSocialHistory].text.status = #generated
* section[sectionSocialHistory].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en-US' xml:lang='en-US'>There is no information available about the subject's social history.</div>"
* section[sectionSocialHistory].emptyReason = $list-empty-reason#unavailable "Unavailable"
* section[sectionSocialHistory].emptyReason.text = "No information available"
* section[sectionVitalSigns].title = "Vital Signs"
* section[sectionVitalSigns].code = $loinc#8716-3 "Vital signs note"
* section[sectionVitalSigns].text.status = #generated
* section[sectionVitalSigns].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en-US' xml:lang='en-US'>There is no information available about the subject's vital signs.</div>"
* section[sectionVitalSigns].emptyReason = $list-empty-reason#unavailable "Unavailable"
* section[sectionVitalSigns].emptyReason.text = "No information available"

Instance: AAA1234
InstanceOf: us-core-patient
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient|8.0.0"
* extension[0].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
* extension[=].extension[0].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
* extension[=].extension[+].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#1002-5 "American Indian or Alaska Native"
* extension[=].extension[+].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2028-9 "Asian"
* extension[=].extension[+].url = "detailed"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#1586-7 "Shoshone"
* extension[=].extension[+].url = "detailed"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2036-2 "Filipino"
* extension[=].extension[+].url = "text"
* extension[=].extension[=].valueString = "Mixed"
* extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
* extension[=].extension[0].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2135-2 "Hispanic or Latino"
* extension[=].extension[+].url = "detailed"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2184-0 "Dominican"
* extension[=].extension[+].url = "detailed"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2148-5 "Mexican"
* extension[=].extension[+].url = "text"
* extension[=].extension[=].valueString = "Hispanic or Latino"
* extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-tribal-affiliation"
* extension[=].extension[0].url = "tribalAffiliation"
* extension[=].extension[=].valueCodeableConcept = $v3-TribalEntityUS#187 "Paiute-Shoshone Tribe of the Fallon Reservation and Colony, Nevada"
* extension[=].extension[=].valueCodeableConcept.text = "Shoshone"
* extension[=].extension[+].url = "isEnrolled"
* extension[=].extension[=].valueBoolean = false
* extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-sex"
* extension[=].valueCoding.version = "http://snomed.info/sct/731000124108"
* extension[=].valueCoding = $sct#248152002 "Female (finding)"
* extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-interpreter-needed"
* extension[=].valueCoding.version = "http://snomed.info/sct/731000124108"
* extension[=].valueCoding = $sct#373066001
* identifier.use = #usual
* identifier.type = $v2-0203#MR "Medical Record Number"
* identifier.type.text = "Medical Record Number"
* identifier.system = "http://example.org/patient/identifiers"
* identifier.value = "1032702"
* active = true
* name[0].use = #old
* name[=].family = "Shaw"
* name[=].given[0] = "Amy"
* name[=].given[+] = "V."
* name[=].period.start = "2016-12-06"
* name[=].period.end = "2020-07-22"
* name[+].use = #usual
* name[=].family = "Baxter"
* name[=].given[0] = "Amy"
* name[=].given[+] = "V."
* name[=].suffix = "PharmD"
* name[=].period.start = "2020-07-22"
* telecom[0].system = #phone
* telecom[=].value = "555-555-5555"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "amy.shaw@example.com"
* birthDate = "1987-02-20"
* address[0].use = #old
* address[=].line = "49 MEADOW ST"
* address[=].city = "MOUNDS"
* address[=].state = "OK"
* address[=].postalCode = "74047"
* address[=].country = "US"
* address[=].period.start = "2016-12-06"
* address[=].period.end = "2020-07-22"
* address[+].line = "183 MOUNTAIN VIEW ST"
* address[=].city = "MOUNDS"
* address[=].state = "OK"
* address[=].postalCode = "74048"
* address[=].country = "US"
* address[=].period.start = "2020-07-22"
* communication.language = urn:ietf:bcp:47#es "Spanish"
* communication.preferred = true

Instance: f54d8c90-aea2-46b0-8f7a-8683db78344e
InstanceOf: us-core-practitionerrole
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole"
* practitioner = Reference(19c24876-ccf8-45e7-8b66-462317e970f1)
* organization = Reference(70a756e3-20b3-4637-8601-a222983e295a) 
* code.coding[0] = $v3-ParticipationFunction#PCP "primary care physician"
* code.coding[+] = $provider-taxonomy#261QP2300X "Primary Care Clinic/Center"
* specialty = $provider-taxonomy#208D00000X "General Practice Physician"
* telecom[0].system = #phone
* telecom[=].value = "(+1) 555-555-5555"
* telecom[+].system = #email
* telecom[=].value = "ronald.bone@holyhealthcare.org"


Instance: 19c24876-ccf8-45e7-8b66-462317e970f1
InstanceOf: us-core-practitioner
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner|8.0.0"
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[=].value = "9941339100"
* identifier[+].system = "http://www.acme.org/practitioners"
* identifier[=].value = "25456"
* identifier[=].extension.url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-jurisdiction"
* identifier[=].extension.valueCodeableConcept = $usps#MA
* identifier[=].extension.valueCodeableConcept.text = "Massachusetts"
* name.family = "Bone"
* name.given = "Ronald"
* name.prefix = "Dr"
* address.use = #work
* address.line = "1003 HEALTHCARE DR"
* address.city = "AMHERST"
* address.state = "MA"
* address.postalCode = "01002"
* address.country = "US"

Instance: 70a756e3-20b3-4637-8601-a222983e295a
InstanceOf: us-core-organization
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization|8.0.0"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "1234567893"
* active = true
* type = $organization-type#prov
* type.text = "Provider"
* name = "Holy Healthcare"
* telecom[0].system = #phone
* telecom[=].value = "(+1) 555-555-5555"
* telecom[+].system = #email
* telecom[=].value = "hq@holyhealthcare.org"
* address.line = "100 MANAGING ORGANIZATION AVE"
* address.city = "Amherst"
* address.state = "MA"
* address.postalCode = "01002"
* address.country = "US"