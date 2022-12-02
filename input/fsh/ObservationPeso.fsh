Profile:     CdrPeso
Parent:      CdrSignosVitales
Id:          CdrPeso
Title:       "Peso"
Description: "Este recurso permite guardar la información del peso de los pacientes"

* code 1..1 MS
* code ^short = "Código del peso"
* code =  $loinc#3141-9 
* code.text ^example.label = "General" 
* code.text ^example.valueString = "PESO"

* valueQuantity 1..1 MS

* valueQuantity.value 1..1 MS
* valueQuantity.value ^short = "Valor numérico"

* valueQuantity.unit 1..1 MS
* valueQuantity.unit ^short = "Unidad representativa"

* valueQuantity.system 1..1 MS
* valueQuantity.system ^short = "Sistema que define el código de la forma de la unidad"
* valueQuantity.system = "http://unitsofmeasure.org"

* valueQuantity.code 1..1 MS
* valueQuantity.code ^short = "Respuestas codificadas de las unidades UCUM comunes para el conjunto de valores de signos vitales."
* valueQuantity.code from UCUMVCPeso
* valueQuantity.code = #kg

Instance:    PesoExample
InstanceOf:  CdrPeso
Usage:       #Example
Title:       "Peso"
Description: "Ejemplo del peso de un paciente"

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = $loinc#3141-9 "Body weight Measured"
* code.text = "PESO"
* subject = Reference(urn:uuid:56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueQuantity = 67.6 'kg' "kg"