Profile:     CdrIMC
Parent:      CdrSignosVitales
Id:          CdrIMC
Title:       "Indice de Masa Corporal"
Description: "Este recurso permite guardar la información del indice de masa corporal de los pacientes"

* code 1..1 MS
* code ^short = "Código del Índice de masa corporal"
* code =  $loinc#39156-5
* code.text ^example.label = "General" 
* code.text ^example.valueString = "INDICE DE MASA CORPORAL"

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
* valueQuantity.code = #kg/m2

Instance:    IMCExample
InstanceOf:  CdrIMC
Usage:       #Example
Title:       "Indice de Masa Corporal"
Description: "Ejemplo del nivel de IMC de un paciente"

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
* code.text = "INDICE DE MASA CORPORAL"
* subject = Reference(urn:uuid:56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueQuantity = 24.6 'kg/m2' "kg/m2"
