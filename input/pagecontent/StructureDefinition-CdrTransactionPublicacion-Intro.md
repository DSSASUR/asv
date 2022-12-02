
### Consideraciones para la Implementación:

* Los recursos que se deben publicar mediante PUT son un recurso [Composition](StructureDefinition-CdrComposition.html) más las [Observaciones de signos vitales](StructureDefinition-CdrSignosVitales.html) descritas en esta guía. Cada uno de estos recursos deben incluir un uuid en su id.
* El recurso Patient utilizado al subir mediante este bundle, debe respetar lo descritos en esta guía ([Paciente Servicio de Salud Araucania Sur](StructureDefinition-CdrPatient.html)). Solo puede ser incluido mediante una operación PUT, ya que deben estar subidos con anterioridad y ser incluidos únicamente cuando se haga una actualización de sus datos. **No debe contener más de uno.**
* El recurso Organization utilizado al subir mediante este bundle, debe respetar lo descritos en esta guía ([Recinto de Salud Araucania Sur](StructureDefinition-CdrOrganizationHosp.html)). Solo puede ser incluido mediante una operación PUT, ya que deben estar subidos con anterioridad y ser incluidos únicamente cuando se haga una actualización de sus datos. **No debe contener más de uno.**
* El recurso Practitioner utilizado al subir mediante este bundle, debe respetar lo descritos en esta guía ([Prestador de Salud Araucanía Sur](StructureDefinition-CdrPractitioner.html)). Solo puede ser incluido mediante una operación PUT, ya que deben estar subidos con anterioridad y ser incluidos únicamente cuando se haga una actualización de sus datos. **Puede contener como máximo 2, en el caso que el autor sea distinto al autentificador.**
* Se recomienda que el orden de subida sea:
  * Composition
  * Paciente
  * Prestador (Médico autor)
  * Prestador (Autentificador, siempre y cuando sea distinto al autor)
  * Organización
  * Observaciones de Signos Vitales

* Posterior a ser subidos almacenado se autogenera un [Provenance](StructureDefinition-CdrProvenance.html) que sirve de firma, para los recursos creados. Este fue especificado según las indicaciones de la guía core.

