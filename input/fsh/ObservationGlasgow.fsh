Profile:     CdrEscalaGlasgow
Parent:      CdrSignosVitales
Id:          CdrEscalaGlasgow
Title:       "Escala Glasgow"
Description: "Este recurso permite guardar la información del estado de conciencia de un paciente en coma."

* code 1..1 MS
* code ^short = "Código de escala del dolor."
* code = $loinc#9269-2 
* code.text ^example.label = "General" 
* code.text ^example.valueString = "ESCALA GLASGOW"

* valueQuantity 1..1 MS

* valueQuantity.value 1..1 MS
* valueQuantity.value ^short = "Valor entre 3 y 15 para la escala Glasgow"

* valueQuantity.unit 0..1 MS
* valueQuantity.unit ^short = "Unidad representativa."

* valueQuantity.system 1..1 MS
* valueQuantity.system ^short = "Sistema que define el código de la forma de la unidad."
* valueQuantity.system = "http://unitsofmeasure.org"

* valueQuantity.code 1..1 MS
* valueQuantity.code ^short = "Respuestas codificadas de las unidades UCUM comunes para el conjunto de valores de signos vitales."
* valueQuantity.code = #{score}

Instance:    EscalaGlasgowExample
InstanceOf:  CdrEscalaGlasgow
Usage:       #Example
Title:       "Escala Glasgow"
Description: "Ejmplo de un recurso de la escala de Glasgow para un paciente en coma."

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = $loinc#9269-2 "Glasgow coma score total"
* code.text = "ESCALA GLASGOW"
* subject = Reference(urn:uuid:56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueQuantity.value  = 15
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #{score}