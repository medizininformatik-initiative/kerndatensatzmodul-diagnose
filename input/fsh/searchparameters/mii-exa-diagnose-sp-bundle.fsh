RuleSet: AddBundleEntry(resource, url)
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/{url}/{resource}"
* entry[=].resource = {resource}

Instance: mii-exa-diagnose-sp-bundle
InstanceOf: Bundle
* type = #collection
* timestamp = "2024-04-24T09:10:00+02:00"
* insert AddBundleEntry(mii-sp-diagnose-icd10gm-diagnosesicherheit, SearchParameter)
* insert AddBundleEntry(mii-sp-diagnose-icd10gm-mehrfachcodierung, SearchParameter)
* insert AddBundleEntry(mii-sp-diagnose-icd10gm-seitenlokalisation, SearchParameter)