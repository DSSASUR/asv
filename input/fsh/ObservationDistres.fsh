Profile:     CdrEstadoDistres
Parent:      CdrSignosVitales
Id:          CdrEstadoDistres
Title:       "Estado de Distrés"
Description: "Este recurso permite guardar la información del estado de distrés en que llego el paciente al recinto."

* code 1..1 MS
* code ^short = "Código del estado de distres"
* code = $SCT#224977004 
* code.text ^example.label = "General" 
* code.text ^example.valueString = "ESTADO DE DISTRES"

* valueCodeableConcept 1..1 MS
* valueCodeableConcept ^short = "Este es el resultado del estado de conciencia."
* valueCodeableConcept from ResultadosSiNo

Instance:    EstadoDistresExample
InstanceOf:  CdrEstadoDistres
Usage:       #Example
Title:       "Estado de Distres"
Description: "Ejemplo del estado de distres por el cual llega el paciente a urguencia"

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = $SCT#224977004 "Distressed"
* code.text = "ESTADO DE DISTRES"
* subject = Reference(urn:uuid:56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueCodeableConcept = $SCT#373067005 "No"