



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

| Tipo      | Descripción                                                                        |
| --------- | -------------------------------------------------------------------------------    |
| VARCHAR   | Cadena de texto variable, con una longitud máxima especificada.                    |
| CHAR      | Cadena de texto fija, con una longitud específica.                                 |
| INT       | Número entero, positivo o negativo.                                                |
| BIGINT    | Número entero grande, positivo o negativo.                                         |
| FLOAT     | Número decimal de precisión simple.                                                |
| DOUBLE    | Número decimal de doble precisión.                                                 |
| DECIMAL   | Número decimal con precisión fija.                                                 |
| DATE      | Fecha, con valores de año, mes y día.                                              |
| TIME      | Hora, con valores de hora, minutos y segundos.                                     |
| DATETIME  | Fecha y hora combinadas.                                                           |
| TIMESTAMP | Marca de tiempo, que indica un momento específico en el tiempo.(te permite sumar)  |
| BOOLEAN   | Valor booleano, verdadero o falso.                                                 |
| BLOB      | Objeto binario grande, para almacenar datos binarios, como imágenes o archivos.    |
| JSON      | Formato de texto estructurado para el intercambio de datos.                        |


> No es recomendable utilizar el tipo de dato "BLOB"

> JSON es un formato estandarizado para el intercambio de datos y las bases de datos SQL lo soportan

## Tipos de Sentencias en SQL.

En SQL existen varios tipos de sentencias que se utilizan para realizar diferentes operaciones en una base de datos. Es un lenguaje imperativo(da ordenes)

1. **Sentencias _DDL (Data Definition Language)_**: se utiliza para definir y modificar la estructura de la base de datos. Por ejemplo para crear o modificar la estructura de una tabla (_CREATE, ALTER, DROP, TRUNCATE_).
1. **Sentencias _DML (Data Manipulation Language)_**: se tutilizan para manipular los datos dentro de una base de datos. Por ejemplo las instrucciones del CRUD(_INSERT, SELECT, UPDATE y DELETE_).
1. **Sentencias _DCL (Data Control Language)_**: se utilizan para controlar el acceso a la base de datos y garantizar la seguridad. Por ejememplo para otorgar permisos a los usuarios para acceder a las bases de datos (_GRANT, REVOKE_).
1. **Sentencias _TCL (Transaction Control Language)_**: se utilizan para controlar las transacciones de una base de datos (_COMMIT, ROLLBACK, SET TRANSACTION_).


## Comandos y funciones básicas SQL

Listando algulos de los comandos y funciones más utilizados en _SQL_

### Comandos _SQL_

| Comando  | Descripción                                                                                                                |
| -------- | -------------------------------------------------------------------------------------------------------------------------- |
| SELECT   | Recupera datos de una o varias tablas. Es una de las sentencias más comunes en SQL.                                        |
| INSERT   | Agrega nuevos datos a una tabla.                                                                                           |
| UPDATE   | Actualiza los datos existentes en una tabla.                                                                               |
| DELETE   | Elimina datos de una tabla.                                                                                                |
| CREATE   | Crea una nueva tabla, vista, índice, procedimiento almacenado u otra estructura de base de datos.                          |
| ALTER    | Modifica la estructura de una tabla existente, como agregar o eliminar columnas.                                           |
| DROP     | Elimina una tabla, vista, índice, procedimiento almacenado u otra estructura de base de datos.                             |
| GRANT    | Concede permisos a un usuario o grupo de usuarios para realizar operaciones en una tabla o en la base de datos en general. |
| REVOKE   | Retira los permisos previamente otorgados a un usuario o grupo de usuarios.                                                |
| JOIN     | Combina datos de dos o más tablas en función de una columna común.                                                         |
| UNION    | Combina los resultados de dos o más consultas en una sola tabla.                                                           |
| GROUP BY | Agrupa los resultados de una consulta en función de una o más columnas.                                                    |
| HAVING   | Permite filtrar los resultados de una consulta agrupada.                                                                   |
| ORDER BY | Ordena los resultados de una consulta en función de una o más columnas.                                                    |
| LIMIT    | Limita el número de filas devueltas por una consulta.                                                                      |



### Funciones _SQL_

| Función     | Descripción                                                     |
| ----------- | --------------------------------------------------------------- |
| AVG()       | Devuelve el valor promedio de una columna numérica.             |
| COUNT()     | Cuenta el número de filas o valores distintos en una columna.   |
| MAX()       | Devuelve el valor máximo de una columna.                        |
| MIN()       | Devuelve el valor mínimo de una columna.                        |
| SUM()       | Devuelve la suma de los valores de una columna numérica.        |
| CONCAT()    | Concatena dos o más cadenas de texto.                           |
| SUBSTRING() | Devuelve una parte de una cadena de texto.                      |
| UPPER()     | Convierte una cadena de texto a mayúsculas.                     |
| LOWER()     | Convierte una cadena de texto a minúsculas.                     |
| LEFT()      | Devuelve los caracteres iniciales de una cadena de texto.       |
| RIGHT()     | Devuelve los caracteres finales de una cadena de texto.         |
| DATE()      | Extrae la fecha de un valor de fecha y hora.                    |
| YEAR()      | Devuelve el año de una fecha.                                   |
| MONTH()     | Devuelve el mes de una fecha.                                   |
| DAY()       | Devuelve el día de una fecha.                                   |
| ROUND()     | Redondea un valor numérico al número de decimales especificado. |


## Conectándonos a nuestro SGBD

Hay dos maneras de acceder a estos servidores de bases de datos.

- A traves de tu terminal de comandos.
 > Cuando tu instalas de manera local generalmente el usuario administrador es llamado: "root"

- La segunda forma es DBeaver que nos permite conectarnos a los distintos tipos de servidor de bases de datos.

> Recuerda, al instalar un servidor de base de datos te va a cargar por defecto una base de dato y sus usuarios, por favor no la vayas a eliminar por que esa base de datos la utiliza tu herramienta. Todo lo que no hayas creado y esté por default, "DEJALO"


## Sintaxis SQL y Buenas Prácticas


### Buenas prácticas.

SQL, No distingue entre MAYÚSCULAS y mínusculas pero:

* Comando y palabras reservadas de SQL van en MAYÚSCUAS.
* Nombres de objetos y datos van en minúsculas con _snake_case_ (técnica del guion bajo).
* Para strings usar comillas simples ( '' ).
* Todas las sentencias terminan con un punto y coma ( ; )

## Gestionando Bases de Datos

```sql
show databases;
-- este comando sirve para mostrar toda las bases de datos.
create database curso_sql;
-- Este comando sirve para crear una base de datos.

drop database curso_sql;
-- Este comando sirve para eliminar una base de datos.
```

1:09


