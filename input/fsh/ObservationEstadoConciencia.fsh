Profile:     CdrEstadoConciencia
Parent:      CdrSignosVitales
Id:          CdrEstadoConciencia
Title:       "Estado de Conciencia"
Description: "Este recurso permite guardar la información del estado de conciencia en que llego el paciente a la consulta."

* code 1..1 MS
* code ^short = "Código del estado de conciencia."
* code = $SCT#248217000
* code.text ^example.label = "General" 
* code.text ^example.valueString = "ESTADO DE CONCIENCIA"

* valueCodeableConcept 1..1 MS
* valueCodeableConcept ^short = "Este es el resultado del estado de conciencia."
* valueCodeableConcept from EscalaConcienciaVS

Instance:    EstadoConcienciaExample
InstanceOf:  CdrEstadoConciencia
Usage:       #Example
Title:       "Estado de Conciencia"
Description: "Ejemplo del estado de conciencia con el cual llega el paciente a urgencia en este caso."

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = $SCT#248217000 "State of consciousness and awareness"
* code.text = "ESTADO DE CONCIENCIA"
* subject = Reference(urn:uuid:56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueCodeableConcept = EscalaConcienciaCS#Alerta "Alerta"