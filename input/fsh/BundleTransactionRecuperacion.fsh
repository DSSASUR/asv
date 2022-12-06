Profile:     CdrTransactionRecuperacion
Parent:      BundleCL
Id:          CdrTransactionRecuperacion
Title:       "Transacción De Recursos(Recuparación)"
Description: "Este recursos permite realizar transacciones con el servidor para recuperar todos los recursos necesarios para crear el documento."

* identifier 1..1 MS
* identifier ^short = "Identificador del documento."
* type 1..1 MS
* type ^short = "document | message | transaction | transaction-response | batch | batch-response | history | searchset | collection"
* type ^definition = "Permite envíar todos los recursos utilizados durante la transmisión."
* type = #transaction

* timestamp 1..1 MS
* timestamp ^short = "Instante en el cual se realiza la transacción."

* entry 1..* MS
* entry ^short = "Entrada del recurso a recurperar."
* entry.fullUrl 0..1 MS
* entry.fullUrl ^short = "Uri del recurso a recuperar."
* entry.fullUrl ^definition = "Se recomienda que el recurso primer recurso a recuperar sea un composition para facilitar la creación del Bundle document."
* entry.request 1..1 MS
* entry.request ^short = "Información para obtener los recursos."
* entry.request.method 1..1 MS
* entry.request.method ^short = "Metodo GET para crear el recurso." 
* entry.request.method = #GET
* entry.request.url 1..1 MS
* entry.request.url ^short = "uri del recurso a recuperar."


// * entry ^slicing.discriminator.type = #value
// * entry ^slicing.discriminator.path = "Bundle.entry.extension.valueCode"
// * entry ^slicing.rules = #open
// * entry ^slicing.description = "Diferenciador entre recursos"
// * entry ^slicing.ordered = false

// * entry contains 
//     Composition 1..1 MS and
//     Paciente 1..1 MS and
//     Prestador 1..2 MS and
//     Organizacion 1..* MS and
//     Observaciones 1..* MS 

// * entry[Composition] ^short = "Entrada del recurso 'Composition'"
// * entry[Composition].fullUrl 1..1 MS
// * entry[Composition].fullUrl ^short = "Uri del recurso 'Composition'"
// * entry[Composition].request 1..1 MS
// * entry[Composition].request ^short = "Información para cargar los recursos"
// * entry[Composition].request.method 1..1 MS
// * entry[Composition].request.method ^short = "Metodo POST para crear el recurso" 
// * entry[Composition].request.method = #GET
// * entry[Composition].request.url 1..1 MS
// * entry[Composition].request.url ^short = "uri de un Composition a cargar"

// * entry[Paciente] ^short = "Entrada del recurso 'Paciente'"
// * entry[Paciente].fullUrl 1..1 MS
// * entry[Paciente].fullUrl ^short = "Uri del recurso 'Paciente'"
// * entry[Paciente].request 1..1 MS
// * entry[Paciente].request ^short = "Información para cargar los recursos"
// * entry[Paciente].request.method 1..1 MS
// * entry[Paciente].request.method ^short = "Metodo PUT para crear o actualizar el recurso" 
// * entry[Paciente].request.method = #GET
// * entry[Paciente].request.url 1..1 MS
// * entry[Paciente].request.url ^short = "Uri de un recurso 'Patient' a cargar o actualizar la información"

// * entry[Prestador] ^short = "Entrada del recurso 'Prestador'"
// * entry[Prestador].fullUrl 1..1 MS
// * entry[Prestador].fullUrl ^short = "Uri del recurso 'Prestador'"
// * entry[Prestador].request 1..1 MS
// * entry[Prestador].request ^short = "Información para cargar los recursos"
// * entry[Prestador].request.method 1..1 MS
// * entry[Prestador].request.method ^short = "Metodo PUT para crear o actualizar el recurso" 
// * entry[Prestador].request.method = #GET
// * entry[Prestador].request.url 1..1 MS
// * entry[Prestador].request.url ^short = "Uri de un recurso 'Practitioner' a cargar o actualizar la información"

// * entry[Organizacion] ^short = "Entrada del recurso 'Organizacion'"
// * entry[Organizacion].fullUrl 1..1 MS
// * entry[Organizacion].fullUrl ^short = "Uri del recurso 'Organizacion'"
// * entry[Organizacion].request 1..1 MS
// * entry[Organizacion].request ^short = "Información para cargar los recursos"
// * entry[Organizacion].request.method 1..1 MS
// * entry[Organizacion].request.method ^short = "Metodo PUT para crear o actualizar el recurso" 
// * entry[Organizacion].request.method = #GET
// * entry[Organizacion].request.url 1..1 MS
// * entry[Organizacion].request.url ^short = "Uri de un recurso 'Organization' a cargar o actualizar la información"

// * entry[Observaciones] ^short = "Entrada del recurso 'Orbservaciones'"
// * entry[Observaciones].fullUrl 1..1 MS
// * entry[Observaciones].fullUrl ^short = "Uri del recurso 'Orbservaciones', en urn:uidd"
// * entry[Observaciones].request 1..1 MS
// * entry[Observaciones].request ^short = "Información para cargar los recursos"
// * entry[Observaciones].request.method 1..1 MS
// * entry[Observaciones].request.method ^short = "Metodo POST para crear el recurso" 
// * entry[Observaciones].request.method = #GET
// * entry[Observaciones].request.url 1..1 MS
// * entry[Observaciones].request.url ^short = "Uri de un recurso 'Observation' a cargar"