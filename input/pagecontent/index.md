### Previo

Esta guía es una versión evolutiva, que puede ser modificado durante el tiempo, no es oficial del servicio de salud, tampoco esta implementada en ningún sistema, aún es una idea que puede ser llevada en un futuro. Primero de ser revisada y validada por personal técnico del Servicio de Salud Araucania Sur.

### Introdución

<p style='text-align: justify;'>
Para avanzar con un registro clínico interoperable dentro de la red del “Servicio de Salud Araucanía Sur”. Se tomó la decisión de avanzar con recursos dedicados al almacenamiento de los signos vitales y otras observaciones del paciente. Más un nuevo perfil del recurso “Patient” y “Organization” desarrollados anteriormente en el proyecto de resultados de laboratorio <a href="https://simplifier.net/guide/ssas-cdr?version=current">ssas-cdr</a> , estos nuevos perfiles toma en consideración lo desarrollado por la <a href="https://hl7chile.cl/fhir/ig/CoreCL/">guía core de Chile</a>.
</p>

### Objetivos

  - Diseñar las bases de un registro clínico compartido para la red del servicio, solo con los signos vitales.
  - Adaptar los recursos de la guía core de chile para nuestro caso de uso.
  - Diseñar nuevos perfiles para almacenar distintas observaciones de los pacientes.

### Diseño

#### Sistema y Autentificación:
<p style='text-align: justify;'>
Usando como base lo diseñado en el "Sistema de Almacenamiento de Laboratorios" donde consideran usar una APIGateway con un servicio de JWT para que sistemas o aplicaciones no permitidas ingresen a nuestro servicio y así proteger la información. La diferencia con lo anterior es que esta versión sigue el estándar OAUTH2 Client Credentials para la generación de "bearer token" con una duración máxima de 2 horas. Este le dará acceso a cada aplicación o sistema para crear, actualizar o visualizar la información de nuestro repositorio. Igual de como lo muestra en el esquema de funcionamiento.
</p>
<div style='text-align: center;'>
    <img src="DiagramaBase.svg" alt="Diagrama Base" width="850" height="950" >
    <p>Esquema de funcionamiento interno</p>
</div>
<p style='text-align: justify;'>

</p>
<div style='text-align: center;'>
    <img src="DiagramaSimple.drawio.svg" alt="Diagrama Base" width="850" height="950" >
    <p>Esquema de funcionamiento OAuth2</p>
</div>

#### Relación entre Recursos:

Todas los "Observation" son agrupadas en un “bundle” de tipo “document” junto a un recurso "Composition" que describe el momento (Fecha y hora), más por, para quien fueron tomadas, junto con la referencia de estos recursos.

<div style='text-align: center;'>
    <img src="descarga.png" alt="Diagrama Base">
    <p>Esquema Relacional de Recursos</p>
</div>

Los signos vitales originalmente son almacenado en tablas dentro de una base de datos del sistema del servicio de salud, estos contienen una tabla que especifica los tipos de cada uno de ellos, entre los cuales se encuentran los siguientes:

- **Altura Uterina**
- **Circunferencia Abdominal**
- **Circunferencia Cintura**
- **Circunferencia Craneana**
- **Edad Gestacional en Semanas**
- **Escala de Dolor**
- **Escala Glasgow**
- **Estado de Conciencia**
- **Estado de Distrés**
- **Estado Nutricional**
- **Estimado del Último Período**
- **Frecuencia Cardiaca**
- **Frecuencia Respiratoria**
- **Glicemia en Sangre**
- **Índice de Masa Corporal**
- **Movimiento Fetal**
- **Peso**
- **Diagnóstico Nutricional Infantil Altura/Edad**
- **Diagnóstico Nutricional Infantil Peso/Altura**
- **Diagnóstico Nutricional Infantil Peso/Edad**
- **Presión Sanguínea**
- **Ritmo Cardíaco Fetal**
- **Saturación Oxígeno**
- **Talla**
- **Temperatura Corporal Axilar**
- **Temperatura Corporal Bucal**
- **Temperatura Corporal Rectal**

Estos posteriormente se convierten en recursos de tipo "Observation", siguiendo como base un perfil de signo vitales, el cual es una traducción del [vitalsigns](http://hl7.org/fhir/StructureDefinition/vitalsigns) de la versión 4.0.1 del estándar FHIR.

### Autores

Principales: Franco Ulloa (SSAS), Carlos Parada (SSAS)
