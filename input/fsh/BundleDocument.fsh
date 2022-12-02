Profile:     CdrDocument
Parent:      ClBundle
Id:          CdrDocument
Title:       "Bundle Para Documento Clínico"
Description: "Documento en el cual se almacena los signos vitales del paciente previo o durante su consulta."

* id 1..1 MS
* id ^short = "Debe ser un uuid"

* identifier 1..1 MS
* identifier ^short = "Identificador del documento. Este debe ser igual al del composition."

* type 1..1 MS
* type ^short = "document | message | transaction | transaction-response | batch | batch-response | history | searchset | collection"
* type ^definition = "Dado que se utilizara este bundle como documento, el código  se fuerza a que sea un 'document'. Este perfil esta creado de tal forma que al cambiar el código por 'transaction' permite obtener toda la información desde el servidor."
* type = #document

* timestamp 1..1 MS
* timestamp ^short = "Instante en el cual se creó el documento clínico."

* entry 1..* MS
* entry ^short = "Entradas de los recursos."
* entry ^definition = "Entradas de todos los recursos. Recordar que al ser documento el primer recurso debe ser un Composition."
* entry.fullUrl 1..1 MS
* entry.fullUrl ^short = "Uri del recurso"
* entry.resource 1..1 MS 
* entry.resource ^short = "Recurso"

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
