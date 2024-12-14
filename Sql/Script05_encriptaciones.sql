-- MOTORES DE TABLAS

-- en caso de que tu hosting compartido(GO DADY, HOSTINGER) que no tenga acualizado el MYSQL y siga utilizando el motor antiguo MyIsam 
-- Puedes especificarlo de esta manera:

SHOW TABLE STATUS FROM curso_sql WHERE Name = 'nombre_de_tu_tabla';

use curso_sql;

CREATE TABLE ventas (
    venta_id INT unsigned PRIMARY KEY AUTO_INCREMENT,
    pieza_id INT unsigned,
    usuario_id INT unsigned,
    cantidad INT,
    precio_total DECIMAL(10, 2),
    fecha_venta DATE,
    FOREIGN KEY (pieza_id) REFERENCES piezas_nuevas(pieza_id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
)engine=innoDB;

-- Si deseas ver el motor de almacenamiento de todas las tablas en una base de datos, puedes usar la siguiente consulta:

SELECT TABLE_NAME, ENGINE
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = 'curso_sql';

-- Si estas trabajando con otro sistema gestor de base de datos diferentes a MYSQL
-- Tienes que remitirte a la documentación  del sistema gestor y buscar: "ENGINE TABLES"

-- JUEGO DE CARACTERES

-- A la hora de registrar palabras y a la hora de decodificarla hacia la vista puede marcarte caracteres extraños en:
-- Letras acentuadas, tildes, con dieresis la Ñ,
-- puedes tener el juego de caracteres en UTF-8 EN html pero la base de datos tambien tiene su juego de caracteres
-- Para que no tengas problemas con los caracteres ajenos al idioma ingles asi:

CREATE TABLE ventas (
    venta_id INT unsigned PRIMARY KEY AUTO_INCREMENT,
    pieza_id INT unsigned,
    usuario_id INT unsigned,
    cantidad INT,
    precio_total DECIMAL(10, 2),
    fecha_venta DATE,
    FOREIGN KEY (pieza_id) REFERENCES piezas_nuevas(pieza_id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
)engine=innoDB charset=utf8mb4;

-- Consulta para el Conjunto de Caracteres de la Base de Datos
SELECT 
    SCHEMA_NAME, 
    DEFAULT_CHARACTER_SET_NAME 
FROM 
    information_schema.SCHEMATA
WHERE 
    SCHEMA_NAME = 'curso_sql';


-- Consulta para el Conjunto de Caracteres de las Tablas

SELECT 
    TABLE_NAME, 
    TABLE_COLLATION 
FROM 
    information_schema.TABLES
WHERE 
    TABLE_SCHEMA = 'curso_sql';
-- en las verciones modernas de MYSQL como la 7 u 8  no es necesario ejecutar esto: "engine=innoDB charset=utf8mb4;"

-- RESTRICCIONES.
   
 -- Vé que no puedes eliminar una tabla ya relacionada. Esto pasa tanto en las operaciones de Actualizacion y Eliminación.
 
   use curso_sql;
  
   CREATE TABLE lenguajes (
  lenguaje_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  lenguaje VARCHAR(30) NOT NULL
);

insert into lenguajes (lenguaje) values
	("javaScript"),
	("PHP"),
	("Python"),
	("Ruby"),
	("JAVA");
-- LENGUAJES es una endidad tipo catálogo no es necesario modificarla.	

CREATE TABLE entornos (
  entorno_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  entorno VARCHAR(30) NOT NULL
);

INSERT INTO entornos (entorno) VALUES
  ("Frontend"),
  ("Backend");

CREATE TABLE frameworks (
  framework_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  framework VARCHAR(30) NOT NULL,
  lenguaje INT UNSIGNED,
  FOREIGN KEY (lenguaje) REFERENCES lenguajes(lenguaje_id)
);	


--
CREATE TABLE frameworks (
  framework_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  framework VARCHAR(30) NOT NULL,
  lenguaje INT UNSIGNED,
  FOREIGN KEY (lenguaje) REFERENCES lenguajes(lenguaje_id)
  on delete restrict on update cascade 
  -- Con esto estamos restringiendo la "Eliminacion(delete)" pero estamos permitiendo la actualización (update)
  -- Al actualizar en cascada tambien lo actualiza en otras tablas el valor.
);

CREATE TABLE frameworks (
  framework_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  framework VARCHAR(30) NOT NULL,
  lenguaje INT UNSIGNED,
  FOREIGN KEY (lenguaje) REFERENCES lenguajes(lenguaje_id)
  on delete set null on update cascade 
  -- Cuano se elimina iguala los valores a NULO
  -- Y al ejecutar inner join pues ya no muestra por que ya no hay coincidencias pero están ahi por separado.
);	

-- RESTRISCCIONES MULTIPLES
-- Las restricciones es por cada llave foranea (para update y delete el valor por defecto es RESTRIC)
-- FORMULA GANADORA
-- En eliminar Restringimos y en actualizar aplicamos CASCADA.

CREATE TABLE frameworks (
  framework_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  framework VARCHAR(30) NOT NULL,
  lenguaje INT UNSIGNED,
  entorno INT UNSIGNED,
  FOREIGN KEY (lenguaje) 
  REFERENCES lenguajes(lenguaje_id)
  on delete restrict 
  on update cascade, 
  FOREIGN KEY (entorno) REFERENCES entornos(entorno_id)
  on delete restrict 
  on update cascade 

);	

INSERT INTO frameworks (framework, lenguaje, entorno) VALUES
  ("React", 1, 19),
  ("Angular", 1, 19),
  ("Vue", 1, 19),
  ("Svelte", 1, 19),
  ("Laravel", 2, 2),
  ("Symfony", 2, 2),
  ("Flask", 3, 2),
  ("Django", 3, 2),
  ("On Rails", 4, 2);
	
use curso_sql; 
 
 select * from lenguajes;
 select * from frameworks;
 select * from entornos;


select * from frameworks f
inner join lenguajes l on f.lenguaje= l.lenguaje_id;

select * from frameworks f
inner join lenguajes l on f.lenguaje= l.lenguaje_id
inner join entornos e on f.entorno= e.entorno_id;

select * from frameworks f
left join lenguajes l on f.lenguaje= l.lenguaje_id;

delete from lenguajes where lenguaje_id = 3; -- no puedo eliminar por que tengo dependencias en otras tablas
delete from lenguajes where lenguaje_id = 5; -- como no tengo valores relacionados con este ID, lo puedo eliminar.

-- Es importante porque guarda la integridad de los datos 

-- Que pasa si quiero actualizar el ID a uno de esos campos relacionados

update lenguajes set lenguaje_id = 13 where lenguaje_id = 3;
update entornos set entorno_id = 19 where entorno_id = 1;

-- La restriccion la podemos definir a la hora de crear nuestras tablas

drop table lenguajes;
drop table frameworks;
drop table entornos;
show tables;	

delete from frameworks;


/*TRANSACCIONES.*/

select * from frameworks;


start transaction;
	update frameworks set framework = "vue.js" where  framework_id = 30;
	delete from frameworks;	
	insert into frameworks values (0, "Spring", 5, 2);
rollback; -- Es como una banderita
commit; 

-- ROLLBACK echar para atras una transaccion 
-- COMMIT confirma la transacción 
-- Se puede hacer una especie de TRY CATCH para el manejo de errores pero esto se hace con el código BACKEND (php)
-- En MySQL todavia no soporta TRY CATCH
-- Actualmente, MySQL no tiene una estructura TRY...CATCH

-- IMPORTANTE Cuando estas trabajando con un modelo relacional donde una operación
/*implica afectar a varias tablas te conviene hacer "TRANSACCIÓNES"
 por que si te quedas en un punto intermedio y no lograste hacer la transacción, pues vas a tener que ir a 
 depurar los datos manualmente 
*/

-- LIMIT 

-- Limita el número de registros que te va devolver  la base de datos
-- Imagina que estás construyendo en la página web una paginación 

select * from frameworks;
select * from frameworks limit 2; -- (muestra los primeros dos)
select * from frameworks limit 2, 2; -- (muestra entre rangos apartir del segundo y el segundo valor indica cuantos más voy a mostrar)
select * from frameworks limit 4, 2;
select * from frameworks limit 6, 2;
select * from frameworks limit 8, 2;
select * from frameworks limit 10, 2;

-- FUNCIONES DE ENCRIPTACIÓN

use curso_sql;
select md5('beaux123');
select sha1('beaux123'); -- 160bits
select sha2('beaux123', 256);

select aes_encrypt('beaux123','llave_secreta'); -- es como el doble factor de autenticación
select aes_decrypt(nombre_campo,'llave_secreta'); -- es como el doble factor de autenticación


CREATE TABLE pagos_recurrentes(
  cuenta VARCHAR(8) PRIMARY KEY, -- 'varchar' por que no se va a realizar ninguana operación aritmética.
  nombre VARCHAR(50) NOT NULL,
  tarjeta BLOB -- sirve para almacenar datos encriptados(datos binarios no texto plano) o ficheros binarios(no es optimo)
);

INSERT INTO pagos_recurrentes values
-- toman algun valor de  campo único (correo, telefono...) Como segundo parametro de la "llave secreta"
  ('12345678', 'Jon', AES_ENCRYPT('1234567890123488', '12345678')),
  ('12345677', 'Irma', AES_ENCRYPT('1234567890123477', '12345677')),
  ('12345676', 'Kenai', AES_ENCRYPT('1234567890123466', '12345676')),
  -- PARA MÍ no ES ético
  ('12345674', 'Kala', AES_ENCRYPT('1234567890123455', 'super_llave')), 
  ('12345673', 'Miguel', AES_ENCRYPT('1234567890123444', 'super_llave'));
 
 -- No puedes almacenar los digitos de las targetas

SELECT * FROM pagos_recurrentes;
	
-- EJEMPLO: al abrir un documento o fichero PDF con un editor de texto plano
/*
 * Un documento PDF es un fichero binario.
 * Hay dos tipos de archivos que lee una computadora UNO los archivos de texto plano (.txt, .html, .css)
 * Y están los ficheros especializados a cierto tipo de documento (PDF, WORD, )
 * 
 * PARA ESO ME SIRVE EL tipo de dato BLOB
 * */	

-- PARA DESENCRIPTAR

select cast(data as char) as tarjeta from pagos_recurrentes;
-- para cambiar de valor a una variable en otros lenguajes se usa el casteo
select cast(aes_decrypt(tarjeta,'12345678') as char) as TDC, nombre 
from pagos_recurrentes;
select cast(aes_decrypt(tarjeta,'super_llave') as char) as TDC, nombre 
from pagos_recurrentes;
select cast(aes_decrypt(tarjeta,'qwerty') as char) as TDC, nombre 
from pagos_recurrentes;
	
-- Cuando vayas a encriptar te sugiero el tipo de dato BLOB	
	
-- INTRODUCCION A PROCEDIMIENTOS ALMACENADOS.


	
	
	
	
	
	

 
   
