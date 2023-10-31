# Module DIAGNOSIS

| Notice | Under Construction! |
|---------|---------------------|
| {{render:implementation-guides/ImplementationGuide-Common/images/Warning.jpg}} | This Implementation Guide represents the current working version of the module 'Diagnosis'. The respective version published for productive use can be found on [this page of the Medical Informatics Initiative](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Diagnose/IGMIIKDSModulDiagnose.html).|

This specification describes the FHIR representation of the core data set module 'Diagnosis' of the Medical Informatics Initiative.
In the following, the use cases of the module as well as the associated FHIR profiles and terminology resources are described in their binding form.

| Release   |   |
|---------|---|
| Date   | 31.10.2023  |
| Version | 2.0.0-ballot (2024.0.0-ballot) |
| Status  | Active       |
| Realm   | DE          | 


## Table of contents

{{index:root}}

## Impressum

This Guide has been developed as part of the Medical Informatics Initiative and is subject to the governance process of the Interoperability Forum and the HL7 Deutschland e. V. Technical Committees.

## Contact
* Sylvia Thun, Berlin Institute of Health at Charité (BIH)
* Julian Saß, Berlin Institute of Health at Charité (BIH)
* Karoline Buckow, TMF – Technologie- und Methodenplattform für die vernetzte medizinische Forschung e.V.

Questions about this publication can be submitted at any time at [chat.fhir.org](https://chat.fhir.org/#narrow/stream/179307-german.2Fmi-initiative) in the stream 'german/mi-initiative'.

Remarks and criticism are always welcome in the form of 'Issues' in the [GitHub Repository](https://github.com/medizininformatik-initiative/kerndatensatzmodul-diagnose).

## Authors (alphabetical order)

* Alexander Zautke (HL7 Deutschland)
* Andrea Essenwanger (BIH)
* Antje Wulff (HiGHmed)
* Caroline Böhnisch (HiGHmed)
* Christian Kamann (MIRACUM)
* Dagmar Büschges (SMITH)
* Danny Ammon (SMITH)
* Detlef Kraska (MIRACUM)
* Eugenia Rinaldi (HiGHmed)
* Fabian Prasser (DIFUTURE)
* Florian Rißner (SMITH)
* Hauke Hund (HiGHmed)
* Heinrich Lautenbacher (DIFUTURE)
* Holger Stenzhorn (DIFUTURE)
* Josef Schepers (CORD-MI)
* Julia Schaefer (TU Berlin)
* Julian Saß (HiGHmed)
* Kai Heitmann (HL7 Deutschland)
* Kutaiba Saleh (SMITH)
* Laurence Strasser (Medizinische Universität Wien)
* Martin Boeker (MIRACUM)
* Matthias Löbe (SMITH)
* Miriam Hübner (Universität zu Lübeck)
* Moritz Lehne (HiGHmed)
* Quynh Trang Nguyen Thi (Technische Universität Ilmenau)
* Raffael Bild (DIFUTURE)
* Sylvia Thun (HL7 Deutschland)
* Thomas Ganslandt (MIRACUM)
* Toralf Kirsten (SMITH)
* Ulrich Sax (HiGHmed)

## Copyright notice
Copyright © 2019+: TMF e. V., Charlottenstraße 42, 10117 Berlin

The content of this specification is public. The rights of subsequent use or publication are not limited.

For usage rights of the underlying FHIR technology, see the FHIR Base Specification.

Some code systems used are published and maintained by other organizations. The copyright of the publishers listed there applies.

#### Disclaimer
* The content of this document is public. Note that parts of this document are based on FHIR Version R4, which is copyrighted by HL7 International.

* Although this publication has been prepared with the utmost care, the authors cannot accept any liability for direct or indirect damage that may arise from the contents of this specification.
