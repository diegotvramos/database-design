



# SQL

## Introducción

SQL significa _Structured Query Language_, es un lenguaje de programación que se utiliza para manejar bases de datos relacionales. 

SQL es un estandar de facto en el mundo de las bases de datos relacionales, es compatible con diferentes sistemas y plataformas.

En la década de 1990, SQL se convirtió en un estandar _ANSI_ y se añadieron características más avanzadas, como sonsultas complejas con múltiples tablas y subconsultas.

**Conceptos Básicos:**
- Una base de datos tiene **tablas**.
- Una tabla tiene campos(**columnas**) y registros(**filas**).
- El conjunto de campos genera un **registro**.
- **campo:** un dato que por sí sólo no dice mucho.
- **Registro:** conjunto de campos que genera información.

## Tipos de SGBDs

* MySQL.
* PostgreSQL.
* Microsoft SQL Server.
* Oracle Database.
* SQLite.
* MariaDB.


### MySQL

Hostigs baratos como hostinger utilizan Php y MySQL. desde la adquisicion de oracle en 2009 MySQL tiene dos verciones: la empresarial y una de la comunidad.

👉 [mysql.com](https://www.mysql.com/)

### PostgreSQL

Es libre y robusto y con toda las funcionalidades de SQL.

👉 [postgresql.org](https://www.postgresql.org/)

### Microsoft SQL Server 

desarrollado por microsoft y es de paga, se utiliza en entornos de desarrollo para integrar con aplicaciones de microsoft.

👉 [SQL Server](https://www.microsoft.com/es-es/sql-server/sql-server-downloads)

### Oracledatabase

Se usa en empresas muy grandes se considera el rey de las bases de datos.

👉 [Oracledatabase](https://www.oracle.com/database/)

### SQLite

Ampliamente usado en aplicaciones móbiles y de escritorio. Maneja pequeñas bases de datos. Funciona como un Caché.

👉 [SQLite](https://www.sqlite.org/)

### MariaDB

es 100% opensourse. Fue creada como un _fork_ de Mysql despues de que mysql fuera adquirida por _Oracle Corporation_

👉 [mariadb.org](https://mariadb.org/)


## Herramientas de trabajo para el curso

MySQL es la base de datos más popular en cualquier entorno de desarrollo (hostings) MySQL es lo que te van a ofrecer.
Y lo puede usar con los comandos.

Pero si tú no eres muy experimentado, lo que puedes hacer es instalar alguno de estos paquetes(entornos de desarrolo) que te permiten configurar un servidor local en tu computadora.

**Componentes comunes:** Todos ellos incluyen un servidor web (Apache), una base de datos (MySQL o MariaDB),todas van acompañadas de una plicación web llamada: **PhpMyAdim** hecha en php que sirve para gestionar las bases de datos (en particular no me gusta por que aveces es lenta y no tiene una muy buena interfaz de usuario y tiene poca usabilidad)  y soporte para lenguajes de programación (PHP, Perl, etc.)

**Sistema Operativo en las que funciona cada una:**

* **XAMPP** funciona en Windows, macOS y Linux.
* **WampServer** es específico para Windows.
* **MAMP** es diseñado para macOS, pero también tiene una versión para Windows.

Aparte de tener nuestro editor de código que es VScode vamos a utilizar un gestor que nos permita ejecutar las sentencias a las bases de datos  y poder tener un feedback en tiempo real de hecho hay unos plugins para VScode que te comvierte VScode como una herramienta que te permite ejecutar querys, pero es como agregarle esteroides 😊 se suele alentar, es por eso que yo prefiero utilizar una herramienta que se llama **DBeaver** es una herramienta de base de datos universal(MySql, Postgres, Sqlite, Oracle,DBdos, access) cualquier base de datos relacional la vas a poder trabajar. Es como un editor de código pero para bases de datos, además es multi-plataforma, lo puedes instalar en windows en mac o en linux.

Si tu eres una persona que te gusta manejar tus dependencias desde la terminal de comandos (**homebrew**) gestor de paquetes, sirve para instalar mysql desde comando como linux.

Si eres usuario de windows hay un gestor de paquetes llamada **chocolatey** es un gestor que te permite instalar como dependencias atraves de tu terminal de comandos con el comnado **cholo list** y hay muchas herramientas de programación  como lenguajes de programación, entornos de programación sistemas gestores de bases de datos que podrias gestinar con estas herramientas.

Hay una opcion online llamada db-fiddle.com [db-fiddle.com](https://www.db-fiddle.com/) en caso de que no quieras instalar nada, pero no te lo recomiendo por que está limitada.



Resumen de las herramientas a utilizar:

- **MySQL** (como gestor de base dedatos, 👁 es un servidor)
- **DBeaver** (editor de SQL)
- **Xampp** (servidor apache) no es necesario en este curso.

Si quieres un gestor de paquetes para Microsoft instala 

- **Chocolatey**

## Tipos de datos

| Tipo      | Descripción                                                                     |
| --------- | ------------------------------------------------------------------------------- |
| VARCHAR   | Cadena de texto variable, con una longitud máxima especificada.                 |
| CHAR      | Cadena de texto fija, con una longitud específica.                              |
| INT       | Número entero, positivo o negativo.                                             |
| BIGINT    | Número entero grande, positivo o negativo.                                      |
| FLOAT     | Número decimal de precisión simple.                                             |
| DOUBLE    | Número decimal de doble precisión.                                              |
| DECIMAL   | Número decimal con precisión fija.                                              |
| DATE      | Fecha, con valores de año, mes y día.                                           |
| TIME      | Hora, con valores de hora, minutos y segundos.                                  |
| DATETIME  | Fecha y hora combinadas.                                                        |
| TIMESTAMP | Marca de tiempo, que indica un momento específico en el tiempo.                 |
| BOOLEAN   | Valor booleano, verdadero o falso.                                              |
| BLOB      | Objeto binario grande, para almacenar datos binarios, como imágenes o archivos. |
| JSON      | Formato de texto estructurado para el intercambio de datos.                     |


> No es recomendable utilizar el tipo de dato "BLOB"

> JSON es un formato estandarizado para el intercambio de datos y las bases de datos SQL lo soportan

## Tipos de Sentencias en SQL.

00:36