



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


create database if not exists curso_sql;

drop database if exists curso_sql

-- Podemos agregar condicionales para que estos erores no salga
-- Estos condicionales no solo te sirven en la creación de base de datos
-- sinó en todo tipo de objetos, bases de datos, store procedures, tablas, usuarios, vistas, etc.

use alcaldia1;

-- indica al gestor de base de datos cual de las bases de datos disponibles es con la que vamos a trabajar.
-- esto te permitirá ejecutar distintas sentencias SQL.

```
## Usuarios y Privilegios

Cuando tú contratas un servicio de hospedaje compartido que te dá el _FTP_, el _PHP_, _MYSQL_ no es que te dé acceso a todo su servidor de base de datos, te dá un usuario para que ese usuario cree las bases de datos que tu tienes permitida, por ejemplo si tu plan de hosting de da derecho a dos bases  pues solo vas a poder crear dos bases, entonces todo esto de los usuarios y los privilegios tambien los podemos gestionar con código

Sí tu estas día a día desarrollando una aplicación dificilmente vas a crear usuarios y privilegios por que a tí seguramente ya te dieron un usuario con el que te conectas y lo que vas a hacer es trabajar con los datos que están dentro de la Base.

Pero para las personas que son administradores del servidor donde se encuentra el servicio de base de datos ellos deben saber esta sintaxis.

Lo que está antes de '@' es el nombre del usuario y despues está el nombre del servidor, ejemplo:

> ``root@localhost``

Pero si me conecto a un servidor en internet quizá en lugar de decir _localhost_ diria el nombre del dominio o IP del servidor.

creamos un nuevo usuario:

```sql
    create user 'diegotv'@'localhost' identified by 'qwerty';

    grant all privileges on para_diego to 'diegotv'@'localhost' IDENTIFIED BY 'mi_password';
-- con esto creamos privilegios para este usuario, pero antes debemos usar la base de datos al cual va poder aplicar estos privilegios


flush privileges;

-- Con esto se actualiza los privilegios, es una buena práctica en caso de que el servidor de base de datos 
-- se encuentre en la nube

show grants for 'diegotv'@'localhost';

-- este comando sirve para mostrar los privilegios de un usuario en particular.

revoke all, grant option from 'diegotv'@'localhost';
-- Si tu quisieras revocar todo los permisos a un usuario.

drop user 'diegotv'@'localhost';
-- eliminando un usuario

--contraseña en hash
SELECT PASSWORD('mi_password');

```

¿Cómo podria probar la coneccion con este usuario? copilot:

pues creando una nueva coneccion con el nombre y la contraseña, o en la terminal:

> _como escribir los comandos de una terminal (cmd) en marckdown? especifica **bash** o **shell**_

```bash
    mysql -u diegotv -p 
```

si ejecutas el comando 

```sql
show databases;
```
Observo que solo tengo una base de datos llamada "information_schema" que es una base de datos por defecto por que es con las que controla el esquema de la información del motor de MySQL y el rendimiento, no por que tú tengas un usuario en el servidor de base de datos significa que vas a tener acceso a toda la información de ese servidor

> NOTA; por alguna razon para hacer una nueva coneccion a traves de la herramienta **DBeaver** primero debo abrir **Workbench** y conectarme con el usuario y la contraseña. Y despues recien me puedo conectar con la herramienta DBeaver.

> El usuario ROOT tiene todo los privilegios.

**Privilegios**

si tu tienes un rol más de Backend que sí accede a la base de datos para generar tu lógica de aplicaciones, va ser muy dificil que tú te avoques a la administración de los permisos y los usuarios salvo que seas el administrador al mismo tiempo.

## Gestionando tablas

```sql
SHOW TABLES;
-- muestra las tablas de una base de datos

DESCRIBE nombre_tabla;
-- describe las caracteristicas de una tabla

CREATE TABLE nombre_tabla(
  campo1 TIPO_DATO ATRIBUTOS,
  campo2 TIPO_DATO
);

ALTER TABLE nombre_tabla ADD COLUMN nombre_campo TIPO_DATO;
-- agremamos una nueva columna.

ALTER TABLE nombre_tabla MODIFY nombre_campo TIPO_DATO;
-- modificando el tipo de dato  de algun atributo

ALTER TABLE nombre_tabla RENAME COLUMN nombre_viejo TO nombre_nuevo;
-- para renombrar la columna de una tabla

ALTER TABLE nombre_tabla DROP COLUMN nombre_campo;
-- Eliminando una columna

DROP TABLE nombre_tabla;
-- Para eliminar una tabla

--Ejemplo de Tabla
CREATE TABLE usuarios(
	usuario_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(30) NOT NULL,
	apellidos VARCHAR(30) NOT NULL,
	correo VARCHAR(50) UNIQUE,
	direccion VARCHAR(100) DEFAULT "Sin dirección",
	edad INT DEFAULT 0
);

-- "unsigned" no va permitir la inserción de un valor negativo
-- Al no especificarle "NOT NULL" ese campo se vuelve opcional, no pongas "NULL"
-- "DEFAULT "sin dirección""En lugar de que aparesca un lugar vacio establecemos un valor por defecto


```

Hay diferentes motores para crear una tabla, mayisam e inhoDB

## CRUD DE Datos

* Create - INSERT.
* Read - SELECT.
* Update - UPDATE.
* Delete - DELETE

### CREATE

Para insertar un registro.

```sql
INSERT INTO tabla (nombre_campo_1, nombre_campo_2, ..., nombre_campo_n)
  VALUES (valor_1, valor2, ..., valor_n);
  -- Esta forma te dá mayor control de inserción de datos.
-- Recuerda, no es necesario poner el ID por que es autoincremental.

INSERT INTO tabla
  SET campo_1 = 'valor_1', campo_2 = 'valor_2', ..., campo_n = valor_n;
  -- es otra forma de insertár.

```
Insertar varios registros.


```sql
	INSERT INTO tabla (campo_1, campo_2, ..., campo_n) VALUES
  (valor_1, valor2, ..., valor_n),
  (valor_1, valor2, ..., valor_n),
  ...,
  (valor_1, valor2, ..., valor_n);
```

### READ

Leer todos los campos de la tabla:

```sql
SELECT * FROM tabla;
```

Leer algunos campos de la tabla:

```sql
SELECT campo_1, campo_2, campo_n FROM tabla;
```

Saber cuantos registros tiene mi tabla:

```sql
SELECT COUNT(*) FROM tabla;
```
Poniendo alias

```sql
select count(*) as total_usuarios from usuarios;
```

Leer un registro en particular buscando el valor de un campo:

```sql
SELECT * FROM tabla WHERE campo_1 = 'valor_1';
```

Leer registros en particular buscando diferentes valores en un campo:

```sql
SELECT * FROM tabla WHERE campo_1 IN ('valor_1', 'valor_2', 'valor_n');
```

Leer un registro en particular buscando el valor similar en un campo con la **clausula LIKE**:

```sql
SELECT * FROM tabla WHERE campo_1 LIKE '%valor_1';
SELECT * FROM tabla WHERE campo_1 LIKE 'valor_1%';
SELECT * FROM tabla WHERE campo_1 LIKE '%valor_1%';
-- usanso el operador lógico NOT
select * from usuarios where correo not like '%gmail.com';
-- dos usuarios no tienen correo y su valor es null por eso no muestra, es mejor no tener valores nulos.
```

Leer registro usando **operedores relacionales**:

```sql

select * from usuarios where edad != 29;
-- donde la edad sea distinto de 29

select * from usuarios where edad <> 29;
-- otra forma del operador "distinto"

select * from usuarios where edad >= 30;

select * from usuarios where edad < 29;

select * from usuarios where edad <= 29;
```


Leer un registro en particular buscando el valor con **operadores lógicos**:

```sql
SELECT * FROM tabla WHERE campo_1 = 'valor_1' AND campo_2 = 'valor_2';
SELECT * FROM tabla WHERE campo_1 = 'valor_1' OR campo_2 = 'valor_2';
SELECT * FROM tabla WHERE NOT campo_1 = 'valor_1';
SELECT * FROM tabla WHERE campo_1 != 'valor_1';
-- AND: significa que toda las condiciones se tienen que cumplir.

```

### UPDATE

Siempre agregar la clausula **_WHERE_** para evitar actualizar toda la tabla:

```sql
UPDATE tabla
  SET campo_1 = 'valor_1', campo_2 = 'valor_2', ..., campo_n = valor_n
  WHERE campo = valor;
```

### DELETE

Siempre agregar la clausula **_WHERE_** para evitar eliminar toda la tabla:

**[NO TE OLVIDES DEL WHERE EN EL DELETE FROM (canción)](https://youtube.com/watch?v=i_cVJgIz_Cs)**

```sql
DELETE FROM tabla WHERE campo = valor;
```

Si quieres resetear una tabla para volver a inicializar los id's ejecuta este comando que borra y reinicia la tabla:

```sql
  truncate table nombre_tabla;
```

#### CREANDO LA TABLA PRODUCTOS

```sql
create table  productos (
producto_id INT unsigned auto_increment primary key,
nombre varchar(50) not null,
descripcion varchar(50),
precio decimal(7,2),
cantidad int unsigned
);

-- 7 represneta las posiciones totales, y 2 representa los digitos flotantes el resultado seria 00000,00


insert into productos (nombre, descripcion, precio, cantidad) values
("Computadora", "Mackbook Air M2", 29999.99, 5),
("Celular", "Phone 1", 11999.99, 15),
("Cámara Web", "Logitech c920", 1500, 13),
("Micrófono", "Blue Yeti", 2500, 19),
("Audífonos", "Audífonos Bose", 6500, 10);

```


### Operaciones aritméticas

```sql
select 6 + 5 as calculo;
select 6 - 5 as calculo;
select 6 * 5 as calculo;
select 6 / 5 as calculo;
select 6 / 5 as calculo;
```

### Funciones aritméticas o matemáticas.

```sql
select mod(4,2);
select mod(5,2);
-- saca el modulo o el resto de una division
select ceiling (7.1);
-- lo redondea al numero que sique
select floor(7.9);
-- lo baja a 7
select round(7.5); 
-- redondeo tradicional
select round(7.4999); 
select power(2, 6);
-- potencia
select sqrt(81);
-- raiz cuadrada
```

### Columnas calculadas

```sql
-- Columnas calculadas


select nombre, precio, cantidad, (precio * cantidad) as ganancia from productos;

# Funciones de agrupamiento
select max(precio) as precio_máximo  from productos;
select min(precio) as precio_máximo  from productos;
select sum(precio) * sum(cantidad) as ganancia_total from productos;
select avg(precio) as precio_promedio from productos;
```

## SENTENCIAS DE AGRUPAMIENTO

### GROUP BY


2:58