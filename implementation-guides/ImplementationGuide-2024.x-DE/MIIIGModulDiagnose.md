# Kerndatensatz Modul Diagnose

| Note | Under Construction! |
|---------|---------------------|
| {{render:implementation-guides/ImplementationGuide-Common/images/Warning.jpg}} | This Implementation Guide represents the current working version of the module 'DIAGNOSIS'. The respective version published for productive use can be found on [this page of the Medical Informatics Initiative](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Diagnose/IGMIIKDSModulDiagnose.html).|



Die vorliegende Spezifikation beschreibt die FHIR Repräsentation des Moduls 'Diagnose' im Kerndatensatz der Medizininformatik-Initiative. 

Im Folgenden werden die Use-Cases des Moduls, sowie die dazugehörigen FHIR-Profile und Terminologie-Ressourcen in ihrer verbindlichen Form beschrieben.

| Veröffentlichung   |   |
|---------|---|
| Datum   | 24.08.2023  |
| Version | 2024.0.0         |
| Status  | Active       |
| Realm   | DE          | 


## Inhaltsverzeichnis

{{index:root}}

## Impressum
Dieser Leitfaden ist im Rahmen der Medizininformatik-Initative erstellt wurden und unterliegt per Governance-Prozess dem Abstimmungsverfahren des Interoperabilitätsforums und der Technischen Komitees von HL7 Deutschland e. V.

## Ansprechpartner
* Sylvia Thun, Berlin Institute of Health at Charité (BIH)
* Julian Saß, Berlin Institute of Health at Charité (BIH)
* Karoline Buckow, TMF – Technologie- und Methodenplattform für die vernetzte medizinische Forschung e.V.

Fragen zu der vorliegenden Publikation können jederzeit unter [chat.fhir.org](https://chat.fhir.org/#narrow/stream/179307-german.2Fmi-initiative) im Stream 'german/mi-initiative' gestellt werden.

Anmerkungen und Kritik werden in Form von 'Issues' im [GitHub Repository](https://github.com/medizininformatik-initiative/kerndatensatzmodul-diagnose) stets gern entgegengenommen.

## Autoren (in alphabetischer Reihenfolge)

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

## Copyright-Hinweis, Nutzungshinweise
Copyright © 2019+: TMF e. V., Charlottenstraße 42, 10117 Berlin

Der Inhalt dieser Spezifikation ist öffentlich. Die Nachnutzungs- bzw. Veröffentlichungsansprüche sind nicht beschränkt.

Zu den Nutzungsrechten der zugrunde liegenden FHIR-Technologie siehe die FHIR-Basis-Spezifikation.

Einige verwendete Codesysteme werden von anderen Organisationen herausgegeben und gepflegt. Es gilt das Copyright der dort jeweils aufgeführten Herausgeber (Publisher).

## Disclaimer
* Der Inhalt dieses Dokuments ist öffentlich. Zu beachten ist, dass Teile dieses Dokuments auf FHIR Version R4 beruhen, für die das Copyright von HL7 International gilt.

* Obwohl diese Publikation mit größter Sorgfalt erstellt wurde, können die Autoren keinerlei Haftung für direkten oder indirekten Schaden übernehmen, der durch den Inhalt dieser Spezifikation entstehen könnte.
