Profile:     CdrRitmoCardiacoFetal
Parent:      CdrSignosVitales
Id:          CdrRitmoCardiacoFetal
Title:       "Ritmo Cardíaco Fetal"
Description: "Este recurso permite guardar la información del ritmo cardíaco del feto."

* code 1..1 MS
* code ^short = "Código de ritmo cardiaco fetal."
* code = $loinc#55283-6 
* code.text ^example.label = "General" 
* code.text ^example.valueString = "LATIDOS CARDIO - FETALES"

* valueQuantity 1..1 MS

* valueQuantity.value 1..1 MS
* valueQuantity.value ^short = "Valor numérico"

* valueQuantity.unit 1..1 MS
* valueQuantity.unit ^short = "Unidad representativa."

* valueQuantity.system 1..1 MS
* valueQuantity.system ^short = "Sistema que define el código de la forma de la unidad."
* valueQuantity.system = "http://unitsofmeasure.org"

* valueQuantity.code 1..1 MS
* valueQuantity.code ^short = "Respuestas codificadas de las unidades UCUM comunes para el conjunto de valores de signos vitales."
* valueQuantity.code = #/min

Instance:    RitmoCardiacoFetalExample
InstanceOf:  CdrRitmoCardiacoFetal
Usage:       #Example
Title:       "Ritmo Cardíaco Fetal"
Description: "Ejemplo del ritmo cardiaco de un fento dentro del vientre materno."

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = $loinc#55283-6 "Fetal Heart rate"
* code.text = "LATIDOS CARDIO - FETALES"
* subject = Reference(urn:uuid:56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueQuantity = 155 '/min' "pp/min"