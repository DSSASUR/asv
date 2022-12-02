Profile:     CdrRespiraciones
Parent:      CdrSignosVitales
Id:          CdrRespiraciones
Title:       "Frecuencia Respiratoria"
Description: "Este recurso permite guardar la información de la frecuencia respiratoria de los pacientes."

* code 1..1 MS
* code ^short = "Código de la frecuencia repiratoria."
* code =  $loinc#9279-1
* code.text ^example.label = "General" 
* code.text ^example.valueString = "FRECUENCIA RESPIRATORIA"

* valueQuantity 1..1 MS

* valueQuantity.value 1..1 MS
* valueQuantity.value ^short = "Valor numérico."

* valueQuantity.unit 1..1 MS
* valueQuantity.unit ^short = "Unidad representativa."

* valueQuantity.system 1..1 MS
* valueQuantity.system ^short = "Sistema que define el código de la forma de la unidad."
* valueQuantity.system = "http://unitsofmeasure.org"

* valueQuantity.code 1..1 MS
* valueQuantity.code ^short = "Respuestas codificadas de las unidades UCUM comunes para el conjunto de valores de signos vitales."
* valueQuantity.code = #/min

Instance:    RespiracionesExample
InstanceOf:  CdrRespiraciones
Usage:       #Example
Title:       "Frecuencia Respiratoria"
Description: "Ejemplo de las respiraciones por minuto que puede presentar el paciente."

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding =  $loinc#9279-1 "Respiratory rate"
* code.text = "FRECUENCIA RESPIRATORIA"
* subject = Reference(urn:uuid:56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueQuantity = 9 '/min' "resp/min"