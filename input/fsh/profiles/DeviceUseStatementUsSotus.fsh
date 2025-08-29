Profile: DeviceUseStatementUsSotus
Parent: DeviceUseStatement
Id: DeviceUseStatement-us-sotus
Title: "DeviceUseStatement (SOTUS)"
Description: "This profile represents the constraints applied to the DeviceUseStatement resource by the Summary of the United States Implementation Guide (SOTUS), based on FHIR R4. A statement about a device used by or implanted on the patient is described in the patient summary as an instance of a DeviceUseStatement resource constrained by this profile."
* ^status = #active
* ^experimental = false
* ^date = "2025-08-28T10:50:07-05:00"
* ^publisher = "HL7 International / Structured Documents"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/structure"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^purpose = "This profile constrains the representation of a statement about a medical device used by or impanted on the patient, part of the \"Medical Devices\" section of the SOTUS Composition resource."
* subject only Reference(PatientUvIps)
* subject MS
* subject ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:populate-if-known
* subject ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = "http://hl7.org/fhir/uv/ips/ActorDefinition/Creator"
* subject ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:handle
* subject ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer"
* subject ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHOULD:display
* subject ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer"
* subject ^definition = "The patient using the device."
* subject.reference 1.. MS
* subject.reference ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:populate-if-known
* subject.reference ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = "http://hl7.org/fhir/uv/ips/ActorDefinition/Creator"
* subject.reference ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:handle
* subject.reference ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer"
* timing[x] 1..1 MS
* timing[x] only dateTime or Period
* timing[x] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:populate-if-known
* timing[x] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = "http://hl7.org/fhir/uv/ips/ActorDefinition/Creator"
* timing[x] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:handle
* timing[x] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer"
* timing[x] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHOULD:display
* timing[x] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer"
* timingDateTime MS
* timingDateTime ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
* timingDateTime ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = "http://hl7.org/fhir/uv/ips/ActorDefinition/Creator"
* timingDateTime ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:handle
* timingDateTime ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer"
* timingDateTime ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHOULD:display
* timingDateTime ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer"
* device only Reference(us-core-implantable-device)
* device MS
* device ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:populate-if-known
* device ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = "http://hl7.org/fhir/uv/ips/ActorDefinition/Creator"
* device ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:handle
* device ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer"
* device ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHOULD:display
* device ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer"
* bodySite only CodeableConcept