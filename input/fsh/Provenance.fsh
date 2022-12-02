Profile:     CdrProvenance
Parent:      ClProvenance
Id:          CdrProvenance
Title:       "Firma Digital"
Description: "Este recurso permite guardar la firma de los documentos de signos vitales."
* ^language = #es

* target 1..* MS
* target ^short = "Valida los recursos de signos vitales y composition."
* target only Reference (CdrComposition or CdrSignosVitales or CdrDocument)

* recorded 1..1 MS
* recorded ^short = "Cuando se realizo la creación de los recursos."

* activity 1..1 MS
* activity ^short = "Actividad que ocurrió."
* activity =  http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE "create"

* agent 1..* MS
  * type 1..1 MS 
  * type ^short = "Tipo de agente, la persona que autentifica el documento, que puede ser o no el autor"
  * type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#attester "attester"
  * who 1..1 MS
  * who ^short = "Quien es el autentificador del documento"
  * who only Reference (CdrPractitioner)
* signature 1..1 MS
  * type 1..1 MS
  * type ^short = "Indica el tipo de razón por el cual se firmo los recursos"
  * type =  urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.5 "Verification Signature"
  * when 1..1 MS
  * when ^short = "El momento en que se realizo la firma"
  * who 1..1 MS
  * who ^short = "Referencia a quien realizo la firma"
  * who only Reference (CdrPractitioner)
  * sigFormat 1..1 MS
  * sigFormat ^short = "Firma en formato JWS"
  * sigFormat = #application/jose
  * data 1..1 MS
  * data ^short = "Token de firma"

Instance: EjemploFirma
InstanceOf: CdrProvenance
Usage: #example
Title: "Firma Digital"
Description: "Firma de un recurso composition y las observaciones para identificar la persona responsable de su creación."

* target[0] = Reference(urn:uuid:4745debb-35e6-42f5-8094-65f9b47dcc94)
* target[+] = Reference(urn:uuid:30561296-f509-40d1-878a-1d42432ffd0a)
* target[+] = Reference(urn:uuid:84f42b61-d690-45e6-87f8-0672432ffd0a)
* target[+] = Reference(urn:uuid:13d97bbc-7a58-49e9-bf12-4add450b605a)
* target[+] = Reference(urn:uuid:0b06f501-5465-4b31-b106-56f73cc0ef99)
* target[+] = Reference(urn:uuid:df1a8537-56a2-4aec-aa6c-f6f537e874e7)
* target[+] = Reference(urn:uuid:432b12d6-5a42-47ca-8024-495309843029)
* target[+] = Reference(urn:uuid:4bb12bcf-44f1-4af0-9deb-5688de0f0230)
* target[+] = Reference(urn:uuid:0549e5ba-54da-4dc8-8217-73f4ab458787)
* target[+] = Reference(urn:uuid:8bae75f7-319a-46ca-87b3-15906ec267a7)
* recorded = "2022-11-23T14:31:22.900+00:00"
* activity =  http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE "create"
* agent.type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#attester "attester"
* agent.who = Reference(urn:uuid:03e6e7e2-7b2f-40c9-bf4d-6e222a71ee50) "MARIA MAGDALENA JUNGJOHANN (OFFICIAL)"
* signature.type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.5 "Verification Signature"
* signature.when = "2022-11-23T14:31:22.903+00:00"
* signature.who = Reference(urn:uuid:03e6e7e2-7b2f-40c9-bf4d-6e222a71ee50) "MARIA MAGDALENA JUNGJOHANN (OFFICIAL)"
* signature.sigFormat = #application/jose
* signature.data = "QmVhcmVyIEJxdGdUb25BN0VSTmVlcFc3ZDgyNXJqeXZCUkpnNk5R"