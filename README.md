# Diseño de Bases de Datos


## Conceptos Básicos

El mundo moderno está centrado en la información y los datos "Big Data" la Ia(alaliza toda la información que está en la base de datos y nos responde según a eso) 

Hay 2 conceptos que debemos entender ¿Cuál es la diferencia entre `datos` e `información`?

**Dato**
> _es la minima unidad de información(por si solo, no tiene un valor intrínseco)_ ej 38 (significa muchas cosas)

**Información**

> _Es un conjunto de datos que nos va a generar conocimiento_ eje: Mi nombre es ALLIE Y TENGO 29 AÑOS.

en tonces la informacion ya tiene un contexto.

**¿Qué es una Base de datos?**

Es una colección de información organizada en un sistema(una pequeña libreta o cuaderno) antes la contabilidad se llenaba en libros contables ahora se a automatizado con Google sheet, excel y demás.

La tecnologia que nos va permitir organizar los datos y representar la información esencial para un sistema de información se va denominar: Sistema Gestor de Base de Datos **`SGBD/DBMS`**(es un software que nos va permitir encapsular datos) y nos va permitir almacenarlo, recuperarlo, de editarlo, de conservarlo, de eliminarlos, etc.

por lo tanto un **`SGBD/DBMS`** nos va permitir gestionar la información de una base de datos de forma digital.

nos ofrece:

1. optimizacion para almacenar grandes cantidades de información.
1. mayor seguridad y una administración eficiente
1. manipulacion de la información de manera concurrente.
1. Garantiza la integridad de los datos.

A el Sistema Gestor de Base de Datos **`SGBD/DBMS`** lo podemos clasificar en dos:

- Sistemas gestores Relacionales(SQL).
- Sistemas gestores No Relacionales(NoSQL).

La mala elección de la base de datos puede darnos una larga lista de problemas durante el desarrollo de nuestras aplicaciones.

## Tipos de Base de Datos.

**Relacionales(SQL)** se organizan en un conjunto de tablas(filas y columnas) y se organizan a travez de identificadores la cual va establecer la relación entre otras tablas que forman parte de la base de datos. al hacer una consulta, demanda cierto procesamiento dependiendo de la complejidad del _query_
>- MySQL
>- MariaDB
>- Postgres
>- SqlServer
>- Oracle


**No Relacionales(NoSQL)** Están diseñadas para modelar datos con estructuras más especificas y que no necesiten ser relacionados unos datos con otros. Cada entidad va funcionar de forma independiente. Es muy utilizado en el Big Data para sus análisis. Al no tener una estructura definida como las _relacionales_ se puede tener incluso redundancia de datos. no tardan mucho en responder. Los formatos que se utilizan es el de un documento(objeto organizado en claves y valores) que es muy parecido a Json.


>- Bases de datos documentales.
>- llave valor que trabajan con Graphos
>- MongoDB
>- Redis
>- Apache Casandra
>- Firebase
>- FireStore.

![alt text](image.png)

mira que hay un documento por cada registro de la base de datos.

## ¿Cuándo usar SQL y cuándo NoSQL? 

Dependerá del tipo de aplicación que querremos realizar.

si quires desarollar una aplicación de tipo contable(inventario de productos, información de clientes) usa el tipo **relacional(SQL)**, en esta aplicación habrá más de una tabla que tenga relación con el resto. entonces una base de datos relacional será más util y podrá representar de una mejor forma los datos de nuestra aplicación.

> Lo usaremos cuando necesitemos relaciones estructuradas, datos estructurados

Si nuestra aplicación necesita de un sistema que las tablas no se relacionen unos con otros y ademas no tenemos la serteza de que todo los datos tenga la misma estructura usamos un tipo **no relacional(NoSQL)**  eje: (estadisticas de comportamiento de un usuario al visitar a un sitio, base de datos para recolectar sus datos biométricos, galeria de fotos en Fb e Ig) esta dinámica puede cambiar de pendiendo sus dinámicas con el sitio. El objetivo es almacenar y volver a mostrar en el momento que se requiera.

> lo usaremos cuando un aspecto importante sea la escalabilidad, datos no estructurados(unas van a tener más campos que otras) ron rapidas.

¿Cuál es la principal diferencia entre base de datos SQL Y NoSQL?
Es su estructura en como almacenan los datos SQL utiliza una estructura organizada y relacional, las NoSQL utilizan una estructura más flexible y escalable.


##  Entidades y Atributos

**Entidad** es un objeto del mundo real (persona, cueta, servicio, factura) es un objeto del cual nosotros vamos a almacenar una información, y al ser objetos tiene caracteristicas que las describen y a esas propiedades es lo que se les llama **atributos** de la entidad.

> lo primero que debemos hacer al diseñar la base de datos es hacer un listado de las entidades y sus atributos.

### Tipos de entidades

* De Datos 
* Catálogos
* Pivotes

las **_entidades de datos_** almacenan la información en el sistema eje: nombre, apellido, dirección, telefono, correo.

las **_entidades llamadas catálogos_**, la información ya debe estar precapturada, va ver campos donde jalemos ese listado del catálogo eje: en el sistema de estudiantes podemos clasificar a las personas como: personal administrativo, profesores, Estudiante. Otro ejemplo seria cuando estamos llenando un formulario nos muestre el país, generalmente en la Iu nos muestra una lista de la cual nosotros elegimos la opción, otro ejemplo seria los _códigos postales_

[enlace paises](https://gist.github.com/brenes/1095110)

Las **_entidades Pivote_** nos van a permitir hacer relación entre dos o más entidades tambien llamadas e_ntidades de enlace o entidades de asociación_

### Tipos de datos (atributos)

Los atributos al final se convierten en los tipos de datos que podemos almacenar.

* números enteros y flotantes
* Cadenas y caractéres de texto.
* Fechas y horas. 
* Booleans. 
* Blobs y archivos.
* Datos Geográficos.

Ejemplo de datos  m = masculino, f = femenino, nb = no binario

Es inportantisimo guardar el momento de una transación, el momento que insertas, eliminas, actualizas algún dato para tener referencia de cuando se hizo.

Ejemplo de Booleans: usuario activo o desactivo

Blobs y archivos sirve para almacenar imágenes videos y audios **en la medida de lo que puedan no inyecten archivos binarios a una base de datos** por que para recuperar esa información demanda mucho poder de computo a la base de datos y por ende al servidor donde esté. 

> lo ideal es almacenar los archivos en SAN(_storage area network_)

por ejemplo en un servicio de nube como podria ser:dropbox, google Drive, One drive.
Entonces cuando necesites la foto o el archivo y lo que vas a guardar en el campo como referencia a la base de datos es una cadena de texto con la url que hace referencia a donde vas a encontrar el archivo.

Tambien se pueden guardar datos de geolocalización sobre todo modelos orientados a graphos.

Dependiendo de el gestor de bases de datos, puede haber muchas variantes respectos a los tipos de datos (te ofrecen una gran gama de datos), y estos son solo algunos ejemplos de los tipos de datos que se pueden almacenar y manejar en una base de datos. El tipo de datos que utilices depende de las necesidades específicas de la aplicación y de la naturaleza de los datos.

## CRUD

**CRUD** Es un acrónimo(puede ser leida como cualquier otra palabra) se refiere a las 4 operaciónes básicas que se pueden realizar en una base de datos: **_crea(create), leer(read), actualizar(update), y eliminar(delete)_**

Estas operaciones se considera la funcionalidad básica que se espera de cualquier sistema de gestión de bases de datos, y suelen estar implementadas de manera nativa en la mayoría de los _SGBD_.

Estas operaciones se utilizan tanto en la administración de objetos y privilegios de la base de datos como en la gestión de los datos mismos.

![alt text](image-1.png)

## Lógica de Negocio.

La lógica de negocios es el conjunto de reglas, políticas y procesos que describen cómo se lleva a cabo el negocio.

En el modelado de una base de datos, la lógica de negocios se refiere a la representación de las reglas y procesos de negocios en el modelo de datos.
Estas reglas y procesos incluyen cosas como la validación de los datos, la validación de las restricciones de negocios, la definición de las relaciones entre las entidades, y la definición de cómo se deben calcular ciertos valores.

La incorporación de la lógica en el modelo de datos permite asegurar que los datos estén correctos y validados y respetar las restricciones que requiere el negocio antes de que la información se almacene en nuestra base de datos.

permite a los desarroladores entender como es que se relacionan y se utilizan en el sistema los datos, utiles en el mantenimiento o implementación del modelo.

La logica de negocio puede ser reutilizada en diferentes partes de la aplicación, reduce el esfuerzo para implementar la misma lógica en múltiples lugares.

> la parte más importante en una base de datos es su conceptualización y su modelo. para evitar el retrabajo.

## Llaves.


