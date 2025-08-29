<style>
td, th {
   border: 1px solid black!important;
   max-width:500px;
}
</style>

### SOTUS Guidance 

This specification in a minimal implementation of the Bundle amd Composition resources to align with the International Patient Summary (IPS)

#### Guidance on SOTUS Document Structure

to be inserted...

- Should we add new sections specific to alignment with C-CDA CCD?
  - Encounters Section
  - Nutrition Section
  - Encounters Section
  - Payers Section
  - Mental Status Section
  - Family History Section

- IPS sections that do not have a correlate in CCD
  - Alerts section
  - Pregnany section (in CCD Social History)
  - History of past illness

#### Guidance on SOTUS Clinical Profiles Using US Core

The usage of FHIR clinical profiles comformant to United States Core Data for Interoperability (USCDI) have been extensively profiled in the FHIR US Core Implementation Guide. 

For all clinical profiles where content is expected within a SOTUS section and there is a US Core profile, that specific profile is used to convey the discrete information reference from the SOTUS ```Composition.section.entry```. No additional profiling of those resources have been added in this specification. The single exception is that a minimal DeviceUseStatementSOTUS profile has been added to this guide so that the US Core Device profile may be referenced in the Medical Equipment section. 

For clinical profiles where there is not a corresponding US Core profile, the base clinical profile from the IPS FHIR Implementation Guide is used in lieu of a US Core profile (e.g. Flag for Alerts section). All of these sections are non-required in both the SOTUS and IPS specifications. 


#### Guidance on SOTUS Terminologies vs. IPS

US Core Profiles often include terminologies that do not align with the preferred terminology binding of the IPS. For the following profiles, additional terminology inclusions as outlined SHOULD be included to faciliate interoperability when this information flows beyond US borders: 

**Terminology Alignment from US Core Profiles to 16 sections in IPS** 

|Resource|US Core Terminology|IPS Terminology|Guidance|
|-----|-----|-----|-----|
|AllergyIntolerance (Allergies and Intolerance)|RxNorm, SNOMED|SNOMED, WHO ATC|Map RxNorm concepts to SNOMED. Include WHO ATC when available|
|Condition (Problem List)|SNOMED, ICD-10|SNOMED|Map ICD-10 concepts to SNOMED| 
|MedicationRequest (Medication Summary)|RxNorm|SNOMED, WHO ATC|Map RxNorm concepts to SNOMED. Include WHO ATC when available|
|Immunization (Immunizations)|CVX|SNOMED, WHO ATC|Map CVX concepts to SNOMED. Include WHO ATC when available
|Observation and DiagnosticReport (Results)|LOINC|LOINC|No additional mapping
|Procedure (Procedures)|SNOMED, LOINC, CPT, CDT, ICD-10, HCPCS|SNOMED|Map LOINC, CPT, CDT, ICD-10, HCPCS to SNOMED|
|Device (Medical Devices)|None|SNOMED|Map to SNOMED|
|Consent (Advance Directives)|Not profiled|Not profiled|
|Flag (Alerts)|Not profiled|Not profiled|
|Condition (Functional Status)|SNOMED, ICD-10|SNOMED|Map ICD-10 concepts to SNOMED| 
|Condition (History of Past Problems)|SNOMED, ICD-10|SNOMED|Map ICD-10 concepts to SNOMED| 
|Observation (History of Pregnancy)|LOINC (code), SNOMED (value)|LOINC (code), SNOMED (value)|No additional mapping 
|Any (Patient Story)|Not profiled|Not profiled|
|CarePlan|None|Not profiled|
|Observation (Social History - Smoking Status)|LOINC (code), SNOMED (value)|LOINC (code), SNOMED (value)|No additional mapping 
|Observation (Vital Signs)|LOINC|LOINC|No additional mapping  

For sections in the SOTUS where there is no predicate section in the IPS, the general recommendation is to use SNOMED CT to represent coded concepts, and where possible, to use content from the SNOMED IPS Terminology (a sub-ontology of SNOMED CT) to faciliate global use. 

#### Must Support and Use of Obligations ####

In the context of SOTUS, obligations defines how an actor ([Creator (IPS)](https://build.fhir.org/ig/HL7/fhir-ips/ActorDefinition-Creator.html) or [Consumer (IPS)](https://build.fhir.org/ig/HL7/fhir-ips/ActorDefinition-Consumer.html)) "must support" a given element.  Obligations may be different between the creator and consumer of an IPS document, and may also differ by profile and resource attributes. For all obligations, no data should be populated or processed in any way that conflicts with regional laws, regulations or policies. For more information on obligations, see the [obligation extension](https://hl7.org/fhir/extensions/StructureDefinition-obligation.html) and the associated [obligation codes](https://hl7.org/fhir/extensions/ValueSet-obligation.html). 

#### Missing Data

There are currently 16 sections defined in the SOTUS. All sections have 0..* references in the IPS Composition.section.entry element of the IPS, meaning that a section may be included without a reference to a structured resource. When not including a resource reference for required sections (Allergies and Intolerances,Medication, Problems, Results, Social History and Vital Signs), ```Composition.section.emptyReason``` SHALL be populated (see sotus-comp-1). For non-required sections, document creators may alternatively choose to omit sections when no data is available. For all sections populated of an IPS document, Composition.section.text SHALL be populated to provide a human readable presentation of the information in the section. See IPS guidance on [Narrative and Language Translation](https://build.fhir.org/ig/HL7/fhir-ips/Design-Conventions.html#narrative-and-language-translation) for more on this design decision.

Resources may also be used to assert the known absence of data rather than using the IPS `Composition.section.emptyReason`. To do so, it is recommended to use patterns established within FHIR generally to assert known absence. For example with an AllergyIntolerance, a SNOMED CT code may be used to represent no known allergy. It is recommended that when a source system does not have information about a particular IPS section, that the ```Composition.section.emptyReason``` element for that section be populated with the appropriate code generally 'unavailable' or 'notasked'. However, if it is desired to use an explicit clinical statement to assert the absence of information, it is recommended that a resource be included in the relevant section using the SNOMED CT code '1287211007' for "No information available".

A system that can never produce data in a section marked with SHALL:populate Creator obligations (i.e. Allergies, Problems and Medications) can produce valid instances of SOTUS documents even though they cannot meet all Creator actor obligations.
