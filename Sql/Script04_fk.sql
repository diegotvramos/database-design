
use curso_sql;

show tables;



CREATE TABLE piezas_nuevas (
    pieza_id INT unsigned PRIMARY KEY AUTO_INCREMENT,
    tipo_pieza VARCHAR(50),
    marca VARCHAR(50),
    modelo VARCHAR(50),
    año INT,
    descripcion TEXT,
    precio DECIMAL(10, 2),
    cantidad INT,
    fecha_ingreso DATE
);

-- Primero debo crear las tablas "Catálogos"

CREATE TABLE proveedores (
    proveedor_id INT unsigned PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    contacto VARCHAR(100),
    direccion TEXT,
    telefono VARCHAR(15),
    email VARCHAR(100)
);


CREATE TABLE compras(
    compra_id INT unsigned PRIMARY KEY AUTO_INCREMENT,
    proveedor_id INT unsigned,
    pieza_id INT unsigned,
    cantidad INT,
    precio_total DECIMAL(10, 2),
    fecha_compra DATE,
    FOREIGN KEY (proveedor_id) REFERENCES proveedores(proveedor_id),
    FOREIGN KEY (pieza_id) REFERENCES piezas_nuevas(pieza_id)
);

drop table compras;
select * from productos

-- No puedo empesar creando la tabla "comprar" por que hace referencia a llaves foraneas
-- que están en otras tablas
CREATE TABLE ventas (
    venta_id INT unsigned PRIMARY KEY AUTO_INCREMENT,
    pieza_id INT unsigned,
    usuario_id INT unsigned,
    cantidad INT,
    precio_total DECIMAL(10, 2),
    fecha_venta DATE,
    FOREIGN KEY (pieza_id) REFERENCES piezas_nuevas(pieza_id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
);


INSERT INTO piezas_nuevas (tipo_pieza, marca, modelo, año, descripcion, precio, cantidad, fecha_ingreso) VALUES
('Filtro de Aceite', 'Bosch', 'OF4567', 2023, 'Filtro de aceite para motores de gasolina', 10.99, 50, '2024-01-01'),
('Bujías', 'NGK', 'BKR6E', 2023, 'Juego de 4 bujías para motores de gasolina', 15.99, 100, '2024-01-01'),
('Pastillas de Freno', 'Brembo', 'P2314', 2023, 'Pastillas de freno delanteras', 45.99, 75, '2024-01-01'),
('Batería', 'ACDelco', 'ACDB24R', 2023, 'Batería para automóviles', 95.99, 25, '2024-01-01'),
('Amortiguadores', 'Monroe', 'M1276', 2023, 'Amortiguadores delanteros', 65.99, 30, '2024-01-01'),
('Filtro de Aire', 'K&N', 'KN1996', 2023, 'Filtro de aire de alto rendimiento', 29.99, 40, '2024-01-01'),
('Correa de Distribución', 'Gates', 'T4325', 2023, 'Correa de distribución para motores de gasolina', 35.99, 60, '2024-01-01'),
('Radiador', 'Denso', 'D1234', 2023, 'Radiador para sistema de enfriamiento', 120.99, 15, '2024-01-01'),
('Termostato', 'Stant', 'S1957', 2023, 'Termostato para sistema de enfriamiento', 12.99, 80, '2024-01-01'),
('Alternador', 'Bosch', 'AL7463', 2023, 'Alternador para sistema eléctrico', 150.99, 20, '2024-01-01');


INSERT INTO proveedores (nombre, contacto, direccion, telefono, email) VALUES
('AutoParts Co.', 'Carlos Pérez', 'Calle 12, La Paz, Bolivia', '789456123', 'contacto@autoparts.co'),
('Repuestos Bolivianos', 'Ana Gómez', 'Av. Siempre Viva 123, La Paz, Bolivia', '753159846', 'ventas@repuestosbolivianos.com'),
('Distribuidora Mecánica', 'Luis Sánchez', 'Calle Sol 45, La Paz, Bolivia', '741852963', 'info@distribuidoramecanica.com'),
('Importadora Motorparts', 'María Jiménez', 'Av. Principal 789, La Paz, Bolivia', '712345678', 'support@motorparts.com');


INSERT INTO compras (proveedor_id, pieza_id, cantidad, precio_total, fecha_compra) VALUES
(1, 1, 50, 549.50, '2024-01-01'),  -- Filtro de Aceite
(2, 2, 100, 1599.00, '2024-01-01'),  -- Bujías
(3, 3, 75, 3449.25, '2024-01-01'),  -- Pastillas de Freno
(4, 4, 25, 2399.75, '2024-01-01'),  -- Batería
(1, 5, 30, 1979.70, '2024-01-01'),  -- Amortiguadores
(2, 6, 40, 1199.60, '2024-01-01'),  -- Filtro de Aire
(3, 7, 60, 2159.40, '2024-01-01'),  -- Correa de Distribución
(4, 8, 15, 1814.85, '2024-01-01'),  -- Radiador
(1, 9, 80, 1039.20, '2024-01-01'),  -- Termostato
(2, 10, 20, 3019.80, '2024-01-01'); -- Alternador


INSERT INTO ventas (pieza_id, usuario_id, cantidad, precio_total, fecha_venta) VALUES
(1, 1, 5, 54.95, '2024-02-01'),  -- Venta de Filtros de Aceite
(2, 2, 8, 127.92, '2024-02-02'),  -- Venta de Bujías
(3, 3, 4, 183.96, '2024-02-03'),  -- Venta de Pastillas de Freno
(4, 4, 2, 191.98, '2024-02-04'),  -- Venta de Baterías
(5, 5, 3, 197.97, '2024-02-05'),  -- Venta de Amortiguadores
(6, 1, 4, 119.96, '2024-02-06'),  -- Venta de Filtros de Aire
(7, 2, 6, 215.94, '2024-02-07'),  -- Venta de Correas de Distribución
(8, 3, 1, 120.99, '2024-02-08'),  -- Venta de Radiador
(9, 4, 7, 90.93, '2024-02-09'),   -- Venta de Termostato
(10, 5, 2, 301.98, '2024-02-10');  -- Venta de Alternador


select * from piezas_nuevas;
select * from proveedores;
select * from compras;
select * from ventas;
select * from usuarios;

-- JONINS Y UNIONs

select * from compras c
left join proveedores p
on c.proveedor_id = p.proveedor_id;

select * from compras c
right join proveedores p
on c.proveedor_id = p.proveedor_id;
-- trae todo los registros que coinciden en el ID más todo los registros de la tabla DERECHA.

select * from compras c
inner join proveedores p
on c.proveedor_id = p.proveedor_id;

-- No se pude hacer un "FULL JOIN" EN MySql pero se puedes simular uniendo derecha e izquierda
-- pero no se usa mucho

select * from compras c
left join proveedores p
on c.proveedor_id = p.proveedor_id
UNION
select * from compras c
right join proveedores p
on c.proveedor_id = p.proveedor_id;


-- EJERCICIO, RELLENANDO LA TABLA COMPRAS.

select c.compra_id, p.nombre as nombre_proveedor, pzn.tipo_pieza, c.cantidad, c.precio_total, c.fecha_compra  from compras c
inner join proveedores p on c.proveedor_id = p.proveedor_id
inner join piezas_nuevas  pzn on c.pieza_id = pzn.pieza_id;


-- SUBCONSULTAS
-- Es una consulta dentro de otra.
use curso_sql

select tipo_pieza, 
(select sum(vn.cantidad) from ventas vn where vn.pieza_id = pzn.pieza_id)
as cantidad_vendida 
from piezas_nuevas pzn;


-- ¿Cuantos artículos compré de cada proveedor?

select prov.proveedor_id, prov.nombre,
(select count(*) from compras comp where comp.proveedor_id = prov.proveedor_id )
as tipos_de_articulos
from proveedores prov;

-- VISTAS

-- No trates de hacer DELETE o UPDATE a una vista.
-- Si tienes que pegar datos a diferentes tablas  hazlo mediante una transacción 

create view vista_compra_detallada as
select c.compra_id, p.nombre as nombre_proveedor, pzn.tipo_pieza, c.cantidad, c.precio_total, c.fecha_compra  from compras c
inner join proveedores p on c.proveedor_id = p.proveedor_id
inner join piezas_nuevas  pzn on c.pieza_id = pzn.pieza_id;

create view vista_proveedor_piezas as
select prov.proveedor_id, prov.nombre,
(select count(*) from compras comp where comp.proveedor_id = prov.proveedor_id )
as tipos_de_articulos
from proveedores prov;


-- Para ver una vista
select * from vista_compra_detallada;
select * from vista_proveedor_piezas;

-- Para eliminar una vista

drop view vista_compra_detallada;

-- Visualizar toda las vistas

show full tables in curso_sql where table_type like 'VIEW'; -- OJO es en mayuscula lo que está entre comillas
SHOW FULL TABLES IN curso_sql WHERE TABLE_TYPE LIKE 'VIEW';


SELECT *
FROM information_schema.VIEWS
WHERE TABLE_SCHEMA = 'curso_sql';

-- Las Vistas son muy útiles para los reportes el cual será analizada por personas que toman las deciciones













