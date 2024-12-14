-- Comentario en una linea en SQL 

/*
 * Este es un comentario
 * de
 * varias lineas
 * 
 * */


show databases;

show databases;

create database curso_sql;

drop database curso_sql;

-- Podemos agregar condicionales para que estos erores no salga
-- Estos condicionales no solo te sirven en la creación de base de datos
-- sinó en todo tipo de objetos, bases de datos, store procedures, tablas, usuarios, vistas, etc
-- 

create database if not exists curso_sql;

drop database if exists curso_sql


create database if not exists para_diego;

create user 'diegotv'@'localhost' identified by 'qwerty';

use curso_sql;
-- indica al gestor de base de datos cual de las bases de datos disponibles es con la que vamos a trabajar.
-- este comando sirve para usar una base de datos, esto te permitirá ejecutar distintas sentencias SQL.

show tables;


grant all privileges on para_diego to 'diegotv'@'localhost';
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

use curso_sql;
-- sirve para seleccionar una base de datos y en ella trabajar

show tables;
-- muestra las tablas de una base de datos

describe usuarios;
-- describe las caracteristicas de una tabla

create table usuarios(
nombre varchar (50),
correo varchar (50)
);

alter table usuarios  add column cumpleaños varchar(15);
-- agremamos una nueva columna.


alter table usuarios modify cumpleaños date;
-- modificando el tipo de dato  de algun atributo


alter table usuarios rename column cumpleaños to nacimiento;
-- para renombrar la columna de una tabla

alter table usuarios drop column nacimiento;
-- Eliminando una columna

drop table usuarios;
-- Para eliminar una tabla


create table usuarios(
	usuario_id INT unsigned auto_increment primary key,
	nombre varchar(30) not null,
	apellidos varchar(30) not null,
	correo varchar(50) unique,
	direccion varchar(100) default "Sin dirección",
	edad int default 0
);


-- "unsigned" no va permitir la inserción de un valor negativo
-- Al no especificarle "NOT NULL" ese campo se vuelve opcional, no pongas "NULL"
-- "DEFAULT "sin dirección""En lugar de que aparesca un lugar vacio establecemos un valor por defecto


-- CRUD

-- Hay por lo menos tres formas de insertar en una tabla

insert into usuarios values (0, "diego", "villacorta", "diegotvramos@gmail.com", "zona villa ingenio calle teresa bustos numero 4024", 27);

-- Esto se considera mala práctica pero lo hacemos con fines educativos.
-- por que al no especificar estas obligado a poner en el orden que han sido definidas los campos de las tablas


insert into usuarios (apellidos, edad, nombre) values("sherlock", "20", "allie");

-- Esta forma te dá mayor control de inserción de datos.
-- Recuerda, no es necesario poner el ID por que es autoincremental.

insert into usuarios set nombre = "vadim", apellidos = "cavalera", edad = "35";

-- es otra forma de insertár.
-- Estas tres sintaxis son para insertar un valor, pero tambien podemos insertar de diferentes valores.

insert into usuarios (nombre,apellidos, correo, edad) values
					("casilda", "tintaya", "casilda@gmail.com", 29),
						("hugo", "castañeta", "hugo@gmail.com", 31),
							("dognara", "garcia", "dognara@gmail.com", 52);
					

select * from usuarios;

select  nombre, edad, usuario_id from usuarios;

select count(*) from usuarios;

select count(*) as total_usuarios from usuarios;
-- podemos colocar un alias


select * from usuarios where nombre = "allie";

select * from usuarios where nombre in ("allie", "diego", "hugo");
-- Sirve para buscar multiples registros.

-- LIKE es una clausula

select * from usuarios where apellidos like 'v%';

select * from usuarios where correo like '%gmail.com';

select * from usuarios where nombre like '%ie%';

-- NOT operador

select * from usuarios where apellidos not like 'v%';

select * from usuarios where correo not like '%gmail.com';
-- dos usuarios no tienen correo y su valor es null por eso no muestra, es mejor no tener valores nulos.

select * from usuarios where nombre not like '%ie%';

-- Operadore relacionales


select * from usuarios where edad != 29;
-- donde la edad sea distinto de 29

select * from usuarios where edad <> 29;
-- otra forma del operador "distinto"

select * from usuarios where edad >= 30;

select * from usuarios where edad < 29;

select * from usuarios where edad <= 29;


-- Operadore Lógicos

select * from usuarios where not  direccion ="Sin dirección";

select * from usuarios where not  direccion ="Sin dirección" and edad > 10 and nombre = "diego";
-- significa que toda las condiciones se tienen que cumplir

select * from usuarios where direccion != "Sin dirección" or edad >=20;


-- UPDATE

update usuarios set correo = "allie@gmail.com", direccion = "islandia" where usuario_id = 2;

-- Es muy importante que toda clausula UPDATE o DELETE lleve una clausula WHERE, por que si tu lo haces sin esta clausula vas a actualizar todo los registros de la tabla.


select * from usuarios;

update usuarios set direccion =  "nueva dirección";
-- es una consulta muy peligrosa.

-- DELETE

delete from usuarios where usuario_id = 6;

-- ¿Cómo resetear una tabla? ya que el ID es autoincremental apesar de los registros eliminados

truncate table usuarios;
























