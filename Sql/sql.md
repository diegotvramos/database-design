



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


```sql
-- BETWEEN
select * from productos where precio >= 5000 and precio <= 15000;
select * from productos where precio between 5000 and 15000;
select fecha_ingreso from vehiculos where fecha_ingreso between '2024-01-01' and '2024-05-01';
-- nos trae un conjunto de valores  en base a un rango. para fechas está genial  


-- REGEXP 

select * from productos where nombre regexp '[A-Z]';
select * from productos where descripcion regexp '[0-9]';
-- expreciones regulares
-- EN SQL es mejor trabar con comillas simples
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
select count(*) as productos_total from productos;
```

## SENTENCIAS DE AGRUPAMIENTO

### GROUP BY

La cláusula _GROUP BY_ se utiliza para agrupar los registros en una consulta basándose en una o más columnas.

Supongamos que tenemos la siguiente tabla llamada "ventas":

| id  | producto | cantidad | fecha      |
| --- | -------- | -------- | ---------- |
| 1   | Zapatos  | 5        | 2022-03-01 |
| 2   | Camisas  | 3        | 2022-03-02 |
| 3   | Zapatos  | 2        | 2022-03-03 |
| 4   | Pantalón | 4        | 2022-03-03 |
| 5   | Camisas  | 7        | 2022-03-04 |

Podemos utilizar la cláusula _GROUP BY_ para obtener la cantidad total de cada producto vendido, agrupando por el nombre del producto.

```sql
SELECT producto, SUM(cantidad) AS total_vendido
  FROM ventas
  GROUP BY producto;
```

Esta consulta agrupa los registros de la tabla "_Ventas_" por la columna "producto" y calcula la suma total de la columna "cantidad" para cada producto. El resultado sería el siguiente:

| producto | total_vendido |
| -------- | ------------- |
| Zapatos  | 7             |
| Camisas  | 10            |
| Pantalón | 4             |

Como puedes ver, la cláusula _GROUP BY_ es muy útil para realizar operaciones de agregación, como contar, sumar o promediar valores, en diferentes grupos de registros.


<!-- 
Creamos la tabla vehiculos

| vehiculo_id | matricula | clase/tipo | marca   | modelo | año  | transmision  | dirección     | sistema_combustión | color  | chasis/serial | combustible | aceite  | Fecha_creacion/fecha de ingreso |
|-------------|-----------|------------|---------|--------|------|--------------|---------------|---------------------|--------|---------------|-------------|---------|-------------------------------|
| 1           | ABC-123   | Sedan      | Toyota  | Corolla| 2015 | Automática   | Hidráulica    | Inyección           | Blanco | 1234567890    | Gasolina    | 10W-40  | 2024-01-15                   |
| 2           | DEF-456   | Camioneta  | Nissan  | Frontier| 2018 | Mecánica     | Mecánica      | Turbo Inyección     | Negro  | 0987654321    | Diesel      | 15W-40  | 2024-02-20                   |
| 3           | GHI-789   | Sedan      | Honda   | Civic  | 2017 | Automática   | No disponible | Carburado           | Azul   | 2345678901    | Gasolina    | 5W-30   | 2024-03-10                   |
| 4           | JKL-012   | Camioneta  | Ford    | Ranger | 2020 | Mecánica     | Otro          | Inyección           | Rojo   | 3456789012    | Diesel      | 15W-40  | 2024-04-05                   |
| 5           | MNO-345   | Sedan      | Chevrolet| Malibu| 2019 | Automática   | Hidráulica    | Turbo Carburado     | Verde  | 4567890123    | Gasolina    | 10W-30  | 2024-05-18                   |
| 6           | PQR-678   | Camioneta  | Mitsubishi|L200  | 2016 | Mecánica     | Mecánica      | Inyección           | Gris   | 5678901234    | Diesel      | 15W-40  | 2024-06-25                   |
| 7           | STU-901   | Sedan      | Hyundai | Elantra| 2021 | Automática   | Hidráulica    | Inyección           | Blanco | 6789012345    | Gasolina    | 10W-40  | 2024-07-12                   |
 -->

### HAVING

La cláusula _HAVING_ se utiliza en _SQL_ para filtrar los resultados de una consulta que utiliza la cláusula _GROUP BY_. 

Supongamos que tenemos una tabla llamada "_Ventas_" que contiene información sobre las ventas de una empresa:

| id  | producto | cantidad | fecha      |
| --- | -------- | -------- | ---------- |
| 1   | A        | 10       | 2022-01-01 |
| 2   | B        | 15       | 2022-01-02 |
| 3   | C        | 20       | 2022-01-02 |
| 4   | A        | 5        | 2022-01-03 |
| 5   | B        | 8        | 2022-01-03 |
| 6   | C        | 12       | 2022-01-04 |

Si queremos obtener la cantidad total de ventas para cada producto, podemos utilizar la cláusula _GROUP BY_ de la siguiente manera:

```sql
SELECT producto, SUM(cantidad) AS total_ventas
  FROM ventas
  GROUP BY producto;
  -- Lo primero que hace es agrupar GROUP BY despues SUMA  y así.
```

Esta consulta devuelve el siguiente resultado:

| producto | total_ventas |
| -------- | ------------ |
| A        | 15           |
| B        | 23           |
| C        | 32           |

Ahora, supongamos que queremos obtener solamente los productos que han tenido un total de ventas mayor a 20. Para ello, podemos utilizar la cláusula _HAVING_ de la siguiente manera:

```sql
SELECT producto, SUM(cantidad) AS total_ventas
  FROM ventas
  GROUP BY producto
  HAVING SUM(cantidad) > 20;
```

Esta consulta devuelve el siguiente resultado:

| producto | total_ventas |
| -------- | ------------ |
| B        | 23           |
| C        | 32           |

Como puedes ver, la cláusula _HAVING_ nos permite filtrar los resultados de una consulta que utiliza GROUP BY, basándonos en una condición que se aplica a los resultados agrupados. En este caso, hemos filtrado los productos que han tenido un total de ventas mayor a 20.

El HAVING es como la cláusula WHERE pero de las columnas calculadas

### DISTINCT

La cláusula _DISTINCT_ se utiliza en _SQL_ para eliminar las filas duplicadas de un conjunto de resultados.

Supongamos que tenemos la siguiente tabla llamada "_Clientes_":

| id  | nombre | apellido  |
| --- | ------ | --------- |
| 1   | Juan   | Perez     |
| 2   | Ana    | Garcia    |
| 3   | Juan   | Martinez  |
| 4   | Maria  | Rodriguez |
| 5   | Ana    | Jimenez   |

Si queremos obtener la lista de nombres únicos de los clientes, podemos utilizar la cláusula DISTINCT de la siguiente manera:

```sql
SELECT DISTINCT nombre
  FROM Clientes;
```

Esta consulta devuelve los nombres únicos de los clientes de la tabla "_Clientes_", sin importar si tienen apellidos diferentes. El resultado sería el siguiente:

| nombre |
| ------ |
| Juan   |
| Ana    |
| Maria  |

Como puedes ver, la cláusula _DISTINCT_ nos permite obtener resultados únicos y reducir la cantidad de datos redundantes en las consultas _SQL_.


### _ORDER BY_


La cláusula _ORDER BY_ en _SQL_ se utiliza para ordenar los resultados de una consulta en un orden específico. Se puede ordenar por una o varias columnas y en orden ascendente (_ASC_) o descendente (_DESC_).

Por ejemplo, si tenemos una tabla "_empleados_" con las columnas "nombre", "apellido" y "salario", podemos ordenar los registros por el salario de forma ascendente con la siguiente consulta:

```sql
SELECT * FROM empleados ORDER BY salario ASC;
```

Esto nos devolvería todos los registros de la tabla "_empleados_" ordenados por el salario de forma ascendente. Si quisiéramos ordenarlos de forma descendente, cambiaríamos "_ASC_" por "_DESC_":

```sql
SELECT * FROM empleados ORDER BY salario DESC;


-- La consulta siempre nos va a arojar enbase al orden que se ha insertado los registos 

-- primero ordena MARCA despues ordena por MODELO, esto se nota en campos repetidos el cual si tienen el mismo nombre, lo va ordenar respetando el ID
select nombre, precio, max(precio) as precio_máximo from productos group by precio, nombre having precio_máximo > 10000 order by nombre;

-- La cláusula ORDER BY es la que tiene que ir al final, esto por el orden de ejecucion
```

De esta manera, se pueden ordenar los resultados de una consulta de acuerdo a un criterio específico.


### FUNCIONES DE CADENAS DE TEXTO.

```sql


-- estas funciones nos puede ayudar a transformar la información para un reporte.

select ('hola mundo');
-- convierte todo a minisculas
select lower('hola mundo');
select lcase('hola mundo');
-- Convierte todo a mayuscula
select ucase('hola mundo');
select upper('hola mundo');
-- extraer pedazos de una cadena
select left('hola mundo', 3);
select right ('hola mundo', 3);
-- obteniendo la longitud del caracter
select length ('hola mundo');
-- repetir
select repeat('hola mundo', 2);
-- invirtiendo cadena de texto
select reverse('hola mundo');
-- remplazo de caracteres
select replace('hola mundo', 'o', 'x');
-- cuando el usuario deja espacios en blanco adelante o atras
select ltrim('     hola mundo');
select rtrim('hola mundo     ');
select trim('       hola mundo     ');
-- para conatenar y para crear url amigable
select concat('hola mundo', ' desde',' bolivia');
select concat_ws('-', 'hola','mundo','desde','Bolivia');
select upper('hola mundo');
select upper('hola mundo');
select upper('hola mundo');
select upper('hola mundo');
select upper('hola mundo');

select upper(nombre), lower(descripcion), precio from productos;
```


### _LIMIT_

La cláusula _LIMIT_ se utiliza en _SQL_ para limitar el número de resultados devueltos en una consulta. Permite especificar el número de filas que se deben recuperar desde la tabla, lo que puede ser útil en consultas que devuelven grandes cantidades de datos.

La sintaxis básica de la cláusula _LIMIT_ es la siguiente:

```sql
SELECT columna_1, columna_2, ..., colunmna_n
  FROM tabla
  LIMIT cantidad_de_filas;
```

Donde **cantidad_de_filas** es el número máximo de filas que se deben devolver en la consulta.

También es posible especificar un punto de inicio desde el cual se deben recuperar las filas, lo que se logra utilizando dos valores separados por una coma. El primer valor especifica el índice de la primera fila que se debe devolver, y el segundo valor especifica el número máximo de filas que se deben devolver.

```sql
SELECT columna_1, columna_2, ..., columna_n
  FROM tabla
  LIMIT indice_inicio, cantidad_de_filas;
```

Donde **indice_inicio** es el índice de la primera fila que se debe devolver, y **cantidad_de_filas** es el número máximo de filas que se deben devolver a partir de la fila de inicio.

Por ejemplo, la siguiente consulta devuelve los primeros 10 registros de la tabla "_clientes_":

```sql
SELECT * FROM clientes
  LIMIT 10;
```

Y la siguiente consulta devuelve los registros 11 al 20 de la tabla "_clientes_":

```sql
SELECT * FROM clientes
  LIMIT 10, 10;
```

Es importante tener en cuenta que el uso de la cláusula _LIMIT_ puede afectar el rendimiento de la consulta, especialmente cuando se utiliza con tablas grandes.

## Sintaxis SQL Avanzada

### Índices

Haciendo metáfora a un indice del libro, es similar.
El declarar indices en nuestra base de datos nos puede mejorar la velocidad a la que nosotros hacemos búsquedas.
No va ser lo mismo a la velocidad a la que se ejecute un query con la llave primaria, que a la que se ejecute con cualquiera de los otros campos que no son un indice.
Ocupan espacio de almacenamiento en el disco duro de la base de datos. 

En _SQL_ existen varios tipos de índices, los principales son:

- Índice único (_**UNIQUE**_): asegura que los valores de la columna indexada sean únicos en la tabla.
- Índice primario (_**PRIMARY KEY**_): es un tipo especial de índice único que identifica de forma única cada fila de una tabla.
- Índice secundario (_**INDEX**_): es un índice que no tiene restricciones de unicidad y se utiliza para mejorar el rendimiento de consultas que involucran la columna indexada.
- Índice de texto completo (_**FULLTEXT**_): se utiliza para hacer búsquedas de texto completo en columnas de texto grandes, como _VARCHAR_ y _TEXT_.

#### Ejemplo

```sql

-- primary key y UNIQUE son dos de los inices especiales que al momento de ponerlo a un campo, pues en ese momento se vuelve un indice.
-- Pero nosotros podemos generar nuestros propios indices de manera personalizada  y eso se dá en la difinición de nuestra tabla.

CREATE TABLE una_tabla(
  campo_id INTEGER UNSIGNED PRIMARY KEY,
  campo_unico VARCHAR(80) UNIQUE,
  campo_index VARCHAR(80),
  campo_3 VARCHAR(80),
  campo_4 VARCHAR(80),
  INDEX i_campo_index(campo_index)
  INDEX nombre_tabla (campo_3, campo_4)
  FULLTEXT INDEX fi_campo_fulltext(campo_3, campo_4)
);
-- El indice full text lo denominé "indice tipo busqueda Google"
-- Yo puedo crear un solo indice pero hacer una referencia a cada uno de los campos
-- Si quieres hacer un query de tipo buscador en varios campos precedidos del indice FULLTEXT 

```

Ejecutando una consulta de tipo _FULLTEXT_

```sql
SELECT * FROM una_tabla
  WHERE MATCH(campo_3, campo_4)
  AGAINST('una_búsqueda' IN BOOLEAN MODE);
  -- tienes que mencionar a todo los cmapos indexados con fulltext
-- El fulltext es ideal cuando vas a buscar en una tabla, yo no lo usaria en tablas relacionadas
```
### MODIFICACIÓN DE INICES 

¿Cómo agregar o eliminar indices, Campos únicos  e inclusso llaves principales sin eliminar la tabla?
```sql
-- creamos una tabla "sin llave primaria"
CREATE TABLE conductores ( 
conductor_id INT unsigned, 
nombre VARCHAR(50), 
apellidos VARCHAR(50), 
ci VARCHAR(20), 
calle VARCHAR(100), 
municipio VARCHAR(50), 
celular VARCHAR(15), 
email VARCHAR(100), 
categoria_licencia CHAR(1), 
dependencia VARCHAR(100), 
observaciones TEXT
);

select * from conductores;

show index from conductores

alter table conductores add constraint pk_conductor_id primary key (conductor_id);
-- le debemos dar un alias a esa llave principal en este caso "pk_conductor_id", 
-- si una tabla no tien primary key no puees poner el "AUTO_INCREMENT" (no es buena práctica eliminar el primary key)
alter table conductores modify column conductor_id INT  auto_increment;
-- añadiendo el UNIQUE al campo de la tabla
alter table conductores add constraint up_ci unique (ci);
alter table conductores drop constraint up_ci;
-- Añadiendo un index normal
alter table conductores add index i_apellidos (apellidos);
alter table conductores drop index i_apellidos;
-- añadiendo varios inices.
alter table conductores add index i__email_categoria_licencia (email, categoria_licencia);
alter table conductores drop index i__email_categoria_licencia;

-- Añadiendo full text.
alter table conductores add fulltext index fi_search (celular, dependencia);
-- Eliminado un inice
alter table conductores drop index fi_search;
```

### _Foreign Keys_

En _SQL_, una llave foránea (_Foreign Key_) es un campo o conjunto de campos en una tabla que hacen referencia a una clave única en otra tabla, estableciendo así una relación entre ambas tablas. Se utilizan para mantener la integridad referencial de los datos, lo que significa que garantizan que los datos en las tablas relacionadas sean coherentes y precisos.

#### Sintaxis

Se define dentro de una tabla de la siguiente forma:

```sql
FOREIGN KEY (nombre_campo) REFERENCES tabla_referencia(campo_referencia)
```

#### Ejemplo

```sql
CREATE TABLE lenguajes (
  lenguaje_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  lenguaje VARCHAR(30) NOT NULL
);

CREATE TABLE entornos (
  entorno_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  entorno VARCHAR(30) NOT NULL
);

CREATE TABLE frameworks (
  framework_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  framework VARCHAR(30) NOT NULL,
  lenguaje INT UNSIGNED,
  entorno INT UNSIGNED,
  FOREIGN KEY (lenguaje) REFERENCES lenguajes(lenguaje_id),
  FOREIGN KEY (entorno) REFERENCES entornos(entorno_id)
);
```

### JOINS

4:24

