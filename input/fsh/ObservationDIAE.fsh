Profile:     CdrAlturaEdadInfantil
Parent:      CdrSignosVitales
Id:          CdrAlturaEdadInfantil
Title:       "Diagnóstico Nutricional Infantil Altura/Edad"
Description: "Este recurso permite guardar la información del estado de nutrición de un paciente pediátrico según su altura y su edad."

* code 1..1 MS
* code ^short = "Código del diagnóstico."
* code = $SCT#1153604005 
* code.text ^example.label = "General" 
* code.text ^example.valueString = "DIAGNOSTICO INFANTIL ALTURA/EDAD"

* valueQuantity 1..1 MS

* valueQuantity.value 1..1 MS
* valueQuantity.value ^short = "Valor entre -3 y +3."

* valueQuantity.unit 0..1 MS
* valueQuantity.unit ^short = "Unidad representativa."

* valueQuantity.system 1..1 MS
* valueQuantity.system ^short = "Sistema que define el código de la forma de la unidad."
* valueQuantity.system = "http://unitsofmeasure.org"

* valueQuantity.code 1..1 MS
* valueQuantity.code ^short = "Respuestas codificadas de las unidades UCUM comunes para el conjunto de valores de signos vitales."
* valueQuantity.code = #{Zscore}

Instance:    AlturaEdadInfantilExample
InstanceOf:  CdrAlturaEdadInfantil
Usage:       #Example
Title:       "Diagnóstico Nutricional Infantil Altura/Edad"
Description: "Ejemplo de un resultado de un analisis de la altura por edad de un niño"

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = $SCT#1153604005 "Body height for age z-score"
* code.text = "DIAGNOSTICO INFANTIL ALTURA/EDAD"
* subject = Reference(urn:uuid:56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueQuantity.value  = -1
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #{Zscore}