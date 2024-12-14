-- Índices

-- haciendo metáfora a un indice del libro, es similar.
-- El declarar indices en nuestra base de datos nos puede mejorar la velocidad a la que nosotros hacemos búsquedas
-- No va ser lo mismo a la velocidad a la que se ejecute un query con la llave primaria, que a la que se ejecute
-- con cualquiera de los otros campos que no son un indice.
-- ocupan espacio de almacenamiento en el disco duro de la base de datos 


-- ¿Cómo podemos ver los inices de una tabla?

use curso_sql;
show index from vehiculos;
show index from usuarios;


-- primary key y UNIQUE son dos de los inices especiales que al momento de ponerlo a un campo, pues en ese momento se vuelve un indice.
-- Pero nosotros podemos generar nuestros propios indices de manera personalizada  y eso se dá en la difinición de nuestra tabla.


create table usuarios(
	usuario_id INT unsigned auto_increment primary key,
	nombre varchar(30) not null,
	apellidos varchar(30) not null,
	correo varchar(50) unique,
	
	edad int default 0
);

insert into usuarios (nombre,apellidos, correo, edad) values
					("diego", "villacorta", "diegotvramos@gmail.com", 27),
					("allie", "sherlock", "allie@gmail.com", 20),
					("vadim", "cavalera", vadim@gmail.com, 35)
					("casilda", "tintaya", "casilda@gmail.com", 29),
					("hugo", "castañeta", "hugo@gmail.com", 31),
					("dognara", "garcia", "dognara@gmail.com", 52);
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

CREATE TABLE conductores ( 
conductor_id INT unsigned auto_increment PRIMARY KEY, 
nombre VARCHAR(50), 
apellidos VARCHAR(50), 
ci VARCHAR(20) UNIQUE, 
calle VARCHAR(100), 
municipio VARCHAR(50), 
celular VARCHAR(15), 
email VARCHAR(100) UNIQUE, 
categoria_licencia CHAR(1), 
dependencia VARCHAR(100), 
observaciones TEXT,
index i_ci (ci),
index i_email(email), 
index i_conductores (nombre, apellidos, ci, calle , municipio, celular, email, categoria_licencia)
);

CREATE TABLE conductores ( 
conductor_id INT unsigned auto_increment PRIMARY KEY, 
nombre VARCHAR(50), 
apellidos VARCHAR(50), 
ci VARCHAR(20) UNIQUE, 
calle VARCHAR(100), 
municipio VARCHAR(50), 
celular VARCHAR(15), 
email VARCHAR(100) UNIQUE, 
categoria_licencia CHAR(1), 
dependencia VARCHAR(100), 
observaciones TEXT,
fulltext index fi_search(apellidos, celular, ci)
);

INSERT INTO conductores (conductor_id, nombre, apellidos, ci, calle, municipio, celular, email, categoria_licencia, dependencia, observaciones)
VALUES
(1, 'Juan', 'Pérez', '4567890 LP', 'Calle de las Flores', 'La Paz', '61234567', 'juan.perez@example.com', 'A', 'Empresa X', 'Ninguna'),
(2, 'María', 'García', '1234567 LP', 'Av. Arce', 'La Paz', '61234568', 'maria.garcia@example.com', 'B', 'Empresa Y', 'Ninguna'),
(3, 'Carlos', 'Sánchez', '2345678 LP', 'Calle 21 de Calacoto', 'La Paz', '61234569', 'carlos.sanchez@example.com', 'C', 'Independiente', 'Ninguna'),
(4, 'Ana', 'López', '3456789 LP', 'Av. Illimani', 'La Paz', '61234570', 'ana.lopez@example.com', 'A', 'Empresa Z', 'Ninguna'),
(5, 'Pedro', 'Ramírez', '4567891 LP', 'Calle Sagárnaga', 'La Paz', '61234571', 'pedro.ramirez@example.com', 'B', 'Independiente', 'Ninguna'),
(6, 'Laura', 'Torres', '5678902 LP', 'Calle Jaén', 'La Paz', '61234572', 'laura.torres@example.com', 'C', 'Empresa X', 'Ninguna'),
(7, 'José', 'Fernández', '6789013 LP', 'Av. Camacho', 'La Paz', '61234573', 'jose.fernandez@example.com', 'A', 'Empresa Y', 'Ninguna'),
(8, 'Lucía', 'Gómez', '7890124 LP', 'Calle Murillo', 'La Paz', '61234574', 'lucia.gomez@example.com', 'B', 'Independiente', 'Ninguna'),
(9, 'Fernando', 'Ruiz', '8901235 LP', 'Av. Montes', 'La Paz', '61234575', 'fernando.ruiz@example.com', 'C', 'Empresa Z', 'Ninguna'),
(10, 'Elena', 'Rojas', '9012346 LP', 'Calle Comercio', 'La Paz', '61234576', 'elena.rojas@example.com', 'A', 'Independiente', 'Ninguna');

drop table conductores;
truncate table conductores;

show index from conductores;

select * from conductores where apellidos = "torres";
select * from conductores;


-- El indice se crea al momento de crar la tabla, si ya lo tienes lo que debes hacer es eliminarla y truncarla
-- No todo tus campos pueden ser inices
-- 

-- TIPO DE INDICE "Busqueda Google FULLTEXT"
-- Crea un inice a partir de varios campos y entonces puedes hacer un select especial en el cual puedas hacer una busquda
-- hacia varios campos este tipo de ince demanda más tiempo al motor de base de datos 

CREATE TABLE conductores ( 
conductor_id INT unsigned auto_increment PRIMARY KEY, 
nombre VARCHAR(50), 
apellidos VARCHAR(50), 
ci VARCHAR(20) UNIQUE, 
calle VARCHAR(100), 
municipio VARCHAR(50), 
celular VARCHAR(15), 
email VARCHAR(100) UNIQUE, 
categoria_licencia CHAR(1), 
dependencia VARCHAR(100), 
observaciones TEXT,
fulltext index fi_search(apellidos, celular, ci)
);

INSERT INTO conductores (conductor_id, nombre, apellidos, ci, calle, municipio, celular, email, categoria_licencia, dependencia, observaciones)
VALUES
(1, 'Juan', 'Pérez', '4567890 LP', 'Calle de las Flores', 'La Paz', '61234567', 'juan.perez@example.com', 'A', 'Empresa X', 'Ninguna'),
(2, 'María', 'García', '1234567 LP', 'Av. Arce', 'La Paz', '61234568', 'maria.garcia@example.com', 'B', 'Empresa Y', 'Ninguna'),
(3, 'Carlos', 'Sánchez', '2345678 LP', 'Calle 21 de Calacoto', 'La Paz', '61234569', 'carlos.sanchez@example.com', 'C', 'Independiente', 'Ninguna'),
(4, 'Ana', 'López', '3456789 LP', 'Av. Illimani', 'La Paz', '61234570', 'ana.lopez@example.com', 'A', 'Empresa Z', 'Ninguna'),
(5, 'Pedro', 'Ramírez', '4567891 LP', 'Calle Sagárnaga', 'La Paz', '61234571', 'pedro.ramirez@example.com', 'B', 'Independiente', 'Ninguna'),
(6, 'Laura', 'Torres', '5678902 LP', 'Calle Jaén', 'La Paz', '61234572', 'laura.torres@example.com', 'C', 'Empresa X', 'Ninguna'),
(7, 'José', 'Fernández', '6789013 LP', 'Av. Camacho', 'La Paz', '61234573', 'jose.fernandez@example.com', 'A', 'Empresa Y', 'Ninguna'),
(8, 'Lucía', 'Gómez', '7890124 LP', 'Calle Murillo', 'La Paz', '61234574', 'lucia.gomez@example.com', 'B', 'Independiente', 'Ninguna'),
(9, 'Fernando', 'Ruiz', '8901235 LP', 'Av. Montes', 'La Paz', '61234575', 'fernando.ruiz@example.com', 'C', 'Empresa Z', 'Ninguna'),
(10, 'Elena', 'Rojas', '9012346 LP', 'Calle Comercio', 'La Paz', '61234576', 'elena.rojas@example.com', 'A', 'Independiente', 'Ninguna');

-- Yo puedo crear un solo indice pero hacer una referencia a cada uno de los campos
-- Si quieres hacer un query de tipo buscador en varios campos precedidos del indice FULLTEXT 

select * from conductores
where match (apellidos, celular, ci)
against('Lopez' in boolean mode);

-- tienes que mencionar a todo los cmapos indexados con fulltext
-- El fulltext es ideal cuando vas a buscar en una tabla, yo no lo usaria en tablas relacionadas

-- MODIFICACIÓN DE INICES.
-- 	¿Cómo agregar o eliminar indices, Campos únicos  e inclusso llaves principales?


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

-- le debemos dar un alias a esa llave principal, 






