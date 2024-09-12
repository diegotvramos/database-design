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








