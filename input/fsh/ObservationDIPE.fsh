Profile:     CdrPesoEdadInfantil
Parent:      CdrSignosVitales
Id:          CdrPesoEdadInfantil
Title:       "Diagnóstico Nutricional Infantil Peso/Edad"
Description: "Este recurso permite guardar la información del estado de nutrición de un paciente pediátrico según su peso y su edad."

* code 1..1 MS
* code ^short = "Código del diagnóstico."
* code = $SCT#1153593003 
* code.text ^example.label = "General" 
* code.text ^example.valueString = "DIAGNOSTICO INFANTIL PESO/EDAD"

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

Instance:    PesoEdadInfantilExample
InstanceOf:  CdrPesoEdadInfantil
Usage:       #Example
Title:       "Diagnóstico Nutricional Infantil Peso/Edad"
Description: "Ejemplo de un resultado de un analisis del peso por edad de un niño."

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = $SCT#1153593003 "Weight for age z-score (observable entity)"
* code.text = "DIAGNOSTICO INFANTIL PESO/EDAD"
* subject = Reference(urn:uuid:56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueQuantity.value  = -1
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #{Zscore}