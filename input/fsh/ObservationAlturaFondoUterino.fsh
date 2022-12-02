Profile:     CdrAlturaUterina
Parent:      CdrSignosVitales
Id:          CdrAlturaUterina
Title:       "Altura Uterina"
Description: "Este recurso permite guardar la información de la altura uterina del paciente."

* code 1..1 MS
* code ^short = "Código de altura uterina"
* code = $loinc#11881-0
* code.text ^example.label = "General" 
* code.text ^example.valueString = "ALTURA UTERINA"

* valueQuantity 1..1 MS

* valueQuantity.value 1..1 MS
* valueQuantity.value ^short = "Valor numérico."

* valueQuantity.unit 0..1 MS
* valueQuantity.unit ^short = "Unidad representativa."

* valueQuantity.system 1..1 MS
* valueQuantity.system ^short = "Sistema que define el código de la forma de la unidad."
* valueQuantity.system = "http://unitsofmeasure.org"

* valueQuantity.code 1..1 MS
* valueQuantity.code ^short = "Respuestas codificadas de las unidades UCUM comunes para el conjunto de valores de signos vitales."
* valueQuantity.code from UCUMVCTalla
* valueQuantity.code = #cm

Instance:    AlturaUterinaExample
InstanceOf:  CdrAlturaUterina
Usage:       #Example
Title:       "Altura Fondo Uterino"
Description: "Ejemplo de Altura Uterina, en el caso de tomas de signos vitales para embarazadas."


* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = $loinc#11881-0 "Uterus Fundal height Tape measure"
* code.text = "ALTURA UTERINA"
* subject = Reference(urn:uuid:56851b4b-9867-4b72-9a2c-3a1c8c1cbddf)
* effectiveDateTime = "2022-07-07T12:00:00-04:00"
* valueQuantity = 31 'cm' "cm"