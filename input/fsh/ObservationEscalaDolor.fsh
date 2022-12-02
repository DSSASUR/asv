Profile:     CdrEscalaDolor
Parent:      CdrSignosVitales
Id:          CdrEscalaDolor
Title:       "Escala de Dolor"
Description: "Este recurso permite guardar la información de la escala del dolor observable de un paciente en específico."

* code 1..1 MS
* code ^short = "Código de escala del dolor."
* code =  $loinc#80316-3
* code.text ^example.label = "General" 
* code.text ^example.valueString = "ESCALA VISUAL ANALOGICA DEL DOLOR"

* valueQuantity 1..1 MS

* valueQuantity.value 1..1 MS
* valueQuantity.value ^short = "Valor entre 1 y 10 para la escala de dolor."

* valueQuantity.unit 0..1 MS
* valueQuantity.unit ^short = "Unidad representativa."

* valueQuantity.system 1..1 MS
* valueQuantity.system ^short = "Sistema que define el código de la forma de la unidad"
* valueQuantity.system = "http://unitsofmeasure.org"

* valueQuantity.code 1..1 MS
* valueQuantity.code ^short = "Respuestas codificadas de las unidades UCUM comunes para el conjunto de valores de signos vitales."
* valueQuantity.code = #{score}

Instance:    EscalaDolorExample
InstanceOf:  CdrEscalaDolor
Usage:       #Example
Title:       "Escala de Dolor"
Description: "Ejemplo de la escala de dolor que describe el paciente."

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding =  $loinc#80316-3 "Pain scale type"
* code.text = "ESCALA VISUAL ANALOGICA DEL DOLOR"
* subject = Reference(urn:uuid:56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueQuantity.value  = 1
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #{score}