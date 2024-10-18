Alias: $exp = http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation

RuleSet: SupportResource (resource, expectation)
* rest.resource[+].type = #{resource}
* rest.resource[=].extension[0].url = $exp
* rest.resource[=].extension[0].valueCode = {expectation}

RuleSet: Profile (profile, expectation)
* rest.resource[=].profile[+] = "{profile}"
* rest.resource[=].profile[=].extension[0].url = $exp
* rest.resource[=].profile[=].extension[0].valueCode = {expectation}

RuleSet: SupportProfile (profile, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].supportedProfile[+] = "{profile}"
* rest.resource[=].supportedProfile[=].extension[0].url = $exp
* rest.resource[=].supportedProfile[=].extension[0].valueCode = {expectation}

RuleSet: SupportInteraction (interaction, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].interaction[+].code = {interaction}
* rest.resource[=].interaction[=].extension[0].url = $exp
* rest.resource[=].interaction[=].extension[0].valueCode = {expectation}

RuleSet: SupportSearchParam (name, canonical, type, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].searchParam[+].name = "{name}"
* rest.resource[=].searchParam[=].definition = "{canonical}"
* rest.resource[=].searchParam[=].type = {type}
* rest.resource[=].searchParam[=].extension[0].url = $exp
* rest.resource[=].searchParam[=].extension[0].valueCode = {expectation}

Instance: mii-cps-diagnose-capabilitystatement
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/CapabilityStatement/metadata"
* insert Version
* insert SP_Publisher
* name = "MII_CPS_Diagnose_CapabilityStatement"
* title = "MII CPS Diagnose CapabilityStatement"
* status = #active
* experimental = false
* date = "2024-10-18"
* description = "Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss, um das Modul Diagnose der Medizininformatik Initiative zu implementieren."
* jurisdiction = urn:iso:std:iso:3166#DE "Germany"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[+] = #json
* rest.mode = #server

// Condition requirements
* insert SupportResource(Condition, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Condition, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose|2025.0.0, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(abatement-age, http://hl7.org/fhir/SearchParameter/Condition-abatement-age, #quantity, #SHALL)
* insert SupportSearchParam(abatement-date, http://hl7.org/fhir/SearchParameter/Condition-abatement-date, #date, #SHALL)
* insert SupportSearchParam(abatement-string, http://hl7.org/fhir/SearchParameter/Condition-abatement-string, #string, #SHALL)
* insert SupportSearchParam(body-site, http://hl7.org/fhir/SearchParameter/Condition-body-site, #token, #SHALL)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/Condition-category, #token, #SHALL)
* insert SupportSearchParam(clinical-status, http://hl7.org/fhir/SearchParameter/Condition-clinical-status, #token, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert SupportSearchParam(encounter, http://hl7.org/fhir/SearchParameter/Condition-encounter, #reference, #SHALL)
* insert SupportSearchParam(evidence, http://hl7.org/fhir/SearchParameter/Condition-evidence, #token, #SHALL)
* insert SupportSearchParam(evidence-detail, http://hl7.org/fhir/SearchParameter/Condition-evidence-detail, #reference, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
* insert SupportSearchParam(onset-age, http://hl7.org/fhir/SearchParameter/Condition-onset-age, #quantity, #SHALL)
* insert SupportSearchParam(onset-date, http://hl7.org/fhir/SearchParameter/Condition-onset-date, #date, #SHALL)
* insert SupportSearchParam(onset-info, http://hl7.org/fhir/SearchParameter/Condition-onset-info, #string, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert SupportSearchParam(recorded-date, http://hl7.org/fhir/SearchParameter/Condition-recorded-date, #date, #SHALL)
* insert SupportSearchParam(severity, http://hl7.org/fhir/SearchParameter/Condition-severity, #token, #SHALL)
* insert SupportSearchParam(stage, http://hl7.org/fhir/SearchParameter/Condition-stage, #token, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/Condition-subject, #reference, #SHALL)
* insert SupportSearchParam(verification-status, http://hl7.org/fhir/SearchParameter/Condition-verification-status, #token, #SHALL)
* insert SupportSearchParam(icd10gm-diagnosesicherheit, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-condition-icd10gm-diagnosesicherheit, #token, #SHALL)
* insert SupportSearchParam(icd10gm-mehrfachcodierung, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-condition-icd10gm-mehrfachcodierung, #token, #SHALL)
* insert SupportSearchParam(icd10gm-seitenlokalisation, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-condition-icd10gm-seitenlokalisation, #token, #SHALL)
