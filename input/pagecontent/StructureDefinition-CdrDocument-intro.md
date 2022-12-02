### Consideraciones para la Implementación:
* Al ser un bundle de tipo *document* el primer recurso **DEBE** ser si o si un [Composition](StructureDefinition-CdrComposition.html) dado por esta guía, ya que el estándar indica que debe contener uno al principio.
* Para los otros recursos se sugiere utilizar el siguiente orden:
  * [Patient](StructureDefinition-CdrPatient.html)
  * [Practitioner](StructureDefinition-CdrPractitioner.html)
  * [Organization](StructureDefinition-CdrOrganizationHosp.html)
  * [Observation](StructureDefinition-CdrSignosVitales.html)

* Tambien puede ser útilizado para recuperar otros recurso disponibles dentro del servidor. 


