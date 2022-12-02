Profile:     CdrTransactionPublicacion
Parent:      ClBundle
Id:          CdrTransactionPublicacion
Title:       "Transacción De Recursos (Publicación)"
Description: "Este recurso permite realizar transacciones con el servidor. Todos los fullURL creadas por este recurso deben ser urn:uidd"

* identifier 1..1 MS
* identifier ^short = "Identificador del bundle"
* type 1..1 MS
* type ^short = "document | message | transaction | transaction-response | batch | batch-response | history | searchset | collection"
* type ^definition = "Permite envíar todos los recursos utilizados durante en una sola transacción."
* type = #transaction

* timestamp 1..1 MS
* timestamp ^short = "Instante en el cual se realiza la transacción."

* entry 1..* MS

* entry ^short = "Entrada del recurso actualizar o crear."
* entry.fullUrl 1..1 MS
* entry.fullUrl ^short = "Uri del recurso actualizar en urn:uidd o dirección dentro del servidor. El uuid debe ser igual al id del recurso"
* entry.resource 1..1 MS 
* entry.resource ^short = "Recurso actualizar a cargar o actualizar información."
* entry.request 1..1 MS
* entry.request ^short = "Información para cargar los recursos."
* entry.request.method 1..1 MS
* entry.request.method ^short = "Método PUT para crear o actualizar el recurso." 
* entry.request.method = #PUT
* entry.request.url 1..1 MS
* entry.request.url ^short = "Uri del recurso a cargar o actualizar la información."

