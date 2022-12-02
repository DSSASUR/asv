### Caso de Uso 

<p style='text-align: justify;'>Para alcanzar un registro clínico electrónico compartido, desde el Servicio de Salud Araucanía Sur tomo la decisión de desarrollar un sistema interoperable en donde se comparta los signos vitales de un paciente para urgencias o ver los cambios durante un periodo de tratamiento. <br>
Actualmente los signos vitales son guardados en una base de datos y en tablas locales del servicio. La propuesta almacenara los recursos en un repositorio FHIR y usando terminologías de “LOINC”, “SNOMED-CT” y de Chile (Decreto Exento 643). Este será un documento clínico que permitirá ser compartido según lo indicado por el estándar y adaptado a la realidad local.<br>
</p>
Los casos de uso son:
-  Crear Documento
-  Visualizar Documento
-  Actualizar Documento 

### Caso de Uso 1: Generar Documentos


Para el caso de uso, para crear el documento con las observaciones realizadas al paciente previo o durante un a consulta. Este documento queda almacenado dentro de un repositorio dentro del servicio de salud para ser revisado cada vez que lo requieran. La secuencia es la siguiente:

- **Recursos Base**
- Debe traeer los recursos mínimos para crear el documento, **Patient**, **Organization**, **Organization**. **PUEDE** utilizar el bundle de recuperación o traerlos uno a uno por medio de operaciones GET.
- **Crear las Observaciones**
- Las observaciones son recursos **Observation** deben referenciar a un recurso **Patient**. Para cada uno de estos se debe generar un uuid para almacenar el recurso.
- **Crear Cabecera**
- La cabecera describe un contexto en el cual fue creado el documento cuyo id es un uidd, esta es un recurso **Composition**, que en su interior **DEBEN** referenciar a un autor (recurso **Practitioner**), un autentificador (recurso **Practitioner**), a la organización custodia (**Organization**), al **Patient** como sujeto.
- **Crear Documento**
- Este recurso **bundle** de tipo "*document*" cuyo id es un uidd, que contiene a todos los recursos utilizados con anterioridad.
- **Crear Transacción de Publicación**
- La transacción es un recurso **bundle** de tipo "*transaction*" que en su interior se encuentran todos los recursos creados previamente(Composition, Observation y Bundle) y en la fullUrl debe incluir un urn::uidd incluido un método PUT y al tipo de recurso que corresponda con su id(uidd).
- **Envía al repositorio**
- Se publica el recurso mediante una operación POST. Para validar y firmar los recursos.

<div style='text-align: center;'>

{% include TransaccionCarga.svg %}

</div>

### Caso de Uso 2: Actualizar Documento

Para el caso de uso, que puede ser necesario actualizar un documento, ya sea por un error o simplemente se necesita actualizar la información contenida.

- **Crear un Transaction**
- Este es **bundle** de tipo "*transaction*" capaz de recuperar todos los recursos necesarios para realizar la actualización.
- **Actualizar recursos**
- Actualización de la información de los recursos necesarios.
- **Almacenar en el Repositorio**
- Almacena todos los recursos actualizados dentro del servidor y los valida.


<div style='text-align: center;'>

{% include Actualizardocumento.svg %}

</div>


### Caso de Uso 3: Visualizar Documento

- **Solicitud de GET Bundle**
- Si la solicitud viene con un Accept *application/json* retorna un Json del recurso FHIR. En caso de, que el Accept se con *text/html* o *application/pdf* retorna una visión gráfica del recurso, que permite ser entendido por cualquier persona.

<div style='text-align: center;'>

{% include VisualizarDocumento.svg %}

</div>