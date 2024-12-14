
create database curso_sql;

drop database curos_sql;

use curso_sql;

show tables


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


select * from productos;

select * from usuarios;


drop table usuarios;
drop table productos;

truncate table usuarios;
truncate table productos;


-- Operaciones aritméticas

select 6 + 5 as calculo;
select 6 - 5 as calculo;
select 6 * 5 as calculo;
select 6 / 5 as calculo;
select 6 / 5 as calculo;


-- Funciones aritméticas o matemáticas.

select mod(4,2);
select mod(5,2);

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

-- Columnas calculadas


select nombre, precio, cantidad, (precio * cantidad) as ganancia from productos;

# Funciones de agrupamiento
select max(precio) as precio_máximo  from productos;
select min(precio) as precio_máximo  from productos;
select sum(precio) * sum(cantidad) as ganancia_total from productos;
select avg(precio) as precio_promedio from productos;
select count(*) as productos_total from productos;

-- Clausula GROUP BY

select nombre, precio, max(precio) as precio_máximo from productos group by precio, nombre;

create table vehiculos (
vehiculo_id int unsigned auto_increment primary key, 
matricula varchar (10) not null, 
clase varchar(30), 
marca varchar(10), 
modelo varchar(20), 
año int unsigned,
transmision varchar(50), 
direccion varchar(30), 
sistema_combustion varchar(30), 
color varchar(20), 
chasis varchar(100), 
combustible varchar(30), 
aceite varchar (50), 
fecha_ingreso date);


INSERT INTO vehiculos (vehiculo_id, matricula, clase, marca, modelo, año, transmision, direccion, sistema_combustion, color, chasis, combustible, aceite, fecha_ingreso)
VALUES
(0, '123-ABC', 'Sedan', 'Toyota', 'Corolla', 2015, 'Automática', 'Hidráulica', 'Inyección', 'Blanco', '1234567890', 'Gasolina', '10W-40', '2024-01-15'),
(0, '456-DEF', 'Camioneta', 'Nissan', 'Frontier', 2018, 'Mecánica', 'Mecánica', 'Turbo Inyección', 'Negro', '0987654321', 'Diesel', '15W-40', '2024-02-20'),
(0, '789-GHI', 'Sedan', 'Honda', 'Civic', 2017, 'Automática', 'No disponible', 'Carburado', 'Azul', '2345678901', 'Gasolina', '5W-30', '2024-03-10'),
(0, '012-JKL', 'Camioneta', 'Ford', 'Ranger', 2020, 'Mecánica', 'Otro', 'Inyección', 'Rojo', '3456789012', 'Diesel', '15W-40', '2024-04-05'),
(0, '345-MNO', 'Sedan', 'Chevrolet', 'Malibu', 2019, 'Automática', 'Hidráulica', 'Turbo Carburado', 'Verde', '4567890123', 'Gasolina', '10W-30', '2024-05-18'),
(0, '678-PQR', 'Camioneta', 'Mitsubishi', 'L200', 2016, 'Mecánica', 'Mecánica', 'Inyección', 'Gris', '5678901234', 'Diesel', '15W-40', '2024-06-25'),
(0, '901-STU', 'Sedan', 'Hyundai', 'Elantra', 2021, 'Automática', 'Hidráulica', 'Inyección', 'Blanco', '6789012345', 'Gasolina', '10W-40', '2024-07-12');





select * from vehiculos;

select marca, count(*) as total from vehiculos group by marca; 
select sistema_combustion, count(*) as total from vehiculos group by sistema_combustion;

-- Lo primero que hace es agrupar GROUP BY despues cuenta  y así.


-- HAVING

select sistema_combustion, count(*) as total 
from vehiculos 
where sistema_combustion not like '%urbo%' 
group by sistema_combustion 
having total >= 2;

-- El where es para campos que si existen en la tabla, si necesitas hacer condicionales  con camos generados con estas funcione de agrupamiento (columnas calculadas)
-- para eso vas a usar el HAVING, el having va despues del GROUP BY	

select nombre, precio, max(precio) as precio_máximo from productos group by precio, nombre having precio_máximo > 10000;

-- El HAVING es como la cláusula WHERE pero de las columnas calculadas

-- DISTINCT
-- Elimina los valores repetidos

select * from vehiculos;

select distinct color from vehiculos;
select distinct clase from vehiculos;
select distinct sistema_combustion from vehiculos;


-- ORDER BY
-- La consulta siempre nos va a arojar enbase al orden que se ha insertado los registos 

select * from vehiculos order by marca asc;
select * from vehiculos order by marca desc;
select * from vehiculos order by marca, modelo asc;

-- primero ordena MARCA despues ordena por MODELO, esto se nota en campos repetidos el cual si tienen el mismo nombre, lo va ordenar respetando el ID
select nombre, precio, max(precio) as precio_máximo from productos group by precio, nombre having precio_máximo > 10000 order by nombre;

-- La cláusula ORDER BY es la que tiene que ir al final, esto por el orden de ejecucion

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


-- FUNCIONES DE CADENAS DE TEXTO.

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




/*EJEMPLO DE UNA TABLA

Tablas Requeridas
Tabla piezas_recicladas:

Descripción: Almacena información sobre las piezas recicladas disponibles en el taller.

Campos:

pieza_id: Identificador único de la pieza (clave primaria).

tipo_pieza: Tipo de la pieza (e.g., motor, alternador).

marca: Marca de la pieza.

modelo: Modelo de la pieza.

año: Año de fabricación del vehículo de donde proviene la pieza.

estado: Estado de la pieza (e.g., nuevo, usado, reparado).

descripcion: Descripción detallada de la pieza.

precio: Precio de la pieza.

fecha_reciclaje: Fecha en que la pieza fue reciclada.

disponible: Indicador de si la pieza está disponible (verdadero/falso).*/




CREATE TABLE piezas_recicladas (
    pieza_id INT PRIMARY KEY AUTO_INCREMENT,
    tipo_pieza VARCHAR(50),
    marca VARCHAR(50),
    modelo VARCHAR(50),
    año INT,
    estado VARCHAR(50),
    descripcion TEXT,
    precio DECIMAL(10, 2),
    fecha_reciclaje DATE,
    disponible BOOLEAN DEFAULT TRUE
);










