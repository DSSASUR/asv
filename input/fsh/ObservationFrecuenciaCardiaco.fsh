Profile:     CdrFrecuenciaCardiaca
Parent:      CdrSignosVitales
Id:          CdrFrecuenciaCardiaca
Title:       "Frecuencia Cardiaca"
Description: "Este recurso permite guardar la información de la frecuencia cardiaca de los pacientes."

* code 1..1 MS
* code ^short = "Código de ritmo cardiaco."
* code =  $loinc#8867-4 
* code.text ^example.label = "General" 
* code.text ^example.valueString = "FRECUENCIA CARDIACA"

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

Instance:    RitmoCardiacaExample
InstanceOf:  CdrFrecuenciaCardiaca
Usage:       #Example
Title:       "Frecuencia Cardiaca"
Description: "Ejemplo de la frecuencia cardiaca de un paciente."

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding =  $loinc#8867-4 "Heart rate"
* code.text = "FRECUENCIA CARDIACA"
* subject = Reference(urn:uuid:56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueQuantity = 80 '/min' "pp/min"