## References

The modelling of the dataset for the module DIAGNOSIS contains references to the following projects:



* On the one hand, it is based on the format of the [data set](https://www.g-drg.de/Datenlieferung_gem._21_KHEntgG/Dokumente_zur_Datenlieferung/Datensatzbeschreibung) in accordance with §21 KHEntgG for the purpose of retroactive and cross-compatibility.
* For forward and international compatibility, on the other hand, the [IPS](http://international-patient-summary.net/mediawiki/index.php?title=Main_Page) (International Patient Summary) represents a guiding model. Alignment with the [Common Data Model](https://www.ohdsi.org/data-standardization/the-common-data-model/) of OMOP and OHDSI is left to later versions.
* the [HL7 Germany diagnosis guideline](https://wiki.hl7.de/index.php?title=IG:Diagnoseleitfaden) was also taken into account.

The [HL7 FHIR Core Specification](http://hl7.org/fhir/), including the corresponding resource [Condition](https://www.hl7.org/fhir/condition.html), and the previous work on the German Basic Profiles in [STU3](https://simplifier.net/basisprofilde) and [R4](https://simplifier.net/basisprofil-de-r4) were also taken into account.

This specification was designed on the basis of the description of the MII core dataset in the version of 10.3.2017 [(PDF)](https://www.medizininformatik-initiative.de/sites/default/files/inline-files/MII_04_Kerndatensatz_1-0.pdf), as well as the dataset description in [ART-DECOR](https://art-decor.org/art-decor/decor-project--mide-).

The classifications and terminologies that will be supported are ICD-10-GM, Alpha-ID, Orpha identifiers and SNOMED CT. The use of ICD-11-GM has to be considered at the officially defined date and has to be taken into account during all planning activities.