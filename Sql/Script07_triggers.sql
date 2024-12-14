-- Sintaxis:

-- vamos a usar un delimitador para ejecutar varias instrucciones simultaneamente. 
-- para el delimitador utilizas cualquier caracter especial ($ o //)

-- para ejecutar de golpe (ALT + X) tenelo en un script limpio
delimiter // -- respeta espacios

create procedure sp_obtener_suscripciones()

	begin
		select * from suscripciones;
	end //
	
delimiter ;

-- ¿Cómo mandamos a llamar un STORAGE PROCEDURE?

call sp_obtener_suscripciones();

-- ¿Cómo puedo listar los STORAGE PROCEDURE de mi base de datos?

show procedure status where db = 'curso_sql';

-- ¿Cómo eliminar un STORAGE PROCEDURE?

drop PROCEDURE sp_obtener_suscripciones; -- no olvides ponerlo en mayuscula y sin parentesis.


-- PARAMETROS DE ENTRADA Y DE SALIDA EN P.A.
-- Estamos hablando de la lógica de negocio.




delimiter // -- respeta espacios

create procedure sp_asignar_servicio(
in i_suscripcion int unsigned,
in i_nombre varchar(30),
in i_correo varchar(50),
in i_tarjeta varchar(16),
out o_repuesta varchar (50)
)

	begin
		
		-- declarando variables
		declare existe_correo int default 0; 
		declare cliente_id int default 0; 
		declare tarjeta_id int default 0; 
		
		start transaction;
			select count(*) into existe_correo
			from clientes
			where correo = i_correo;
		
		if existe_correo <> 0 then
			select 'Tu correo ya ha sido registrado' into o_respuesta;
		else 
			-- significa que es un usuario nuevo
		
			insert into clientes values (0, i_nombre, i_correo);
			-- nos devuelve el ultimo id que haya sido registrado en la tabla que le indiquemos
			select last_insert_id() into cliente_id;
			
			insert into tarjetas
			values (0, cliente_id, AES_ENCRYPT(i_tarjeta, cliente_id))
			select last_insert_id() into tarjeta_id; 
		
			insert into servicios values (0, cliente_id, tarjeta_id, i_suscripcion);
			select 'Servicio asignado con éxito' into o_respuesta;
		end if;
		commit;
	end //
	
delimiter ;


SELECT * FROM suscripciones;
SELECT * FROM clientes;
SELECT * FROM tarjetas;
SELECT * FROM servicios;
SELECT * FROM actividad_clientes;

-- (i_suscripcion, i_nombre, i_correo, i_tarjeta, o_respuesta)
call sp_asignar_servicio(3, 'beaux', 'beaux@gmail.com', '1234567890123456', @res); -- la respuesta almacenala en la variable 'RES'
call sp_asignar_servicio(2, 'vadym', 'vadym@gmail.com', '1234567890123490', @res); -- la respuesta almacenala en la variable 'RES'

select @res;

-- Ve lo poderoso que puede ser los STORE PROCEDURE para distribuir la lógica de negocio

-- Yo los apoyo, hay gente que no les gusta

-- DISPARADORES O TRIGGERS

-- se ejecuta por un evento.

/*
SINTAXIS TRIGGERS

DELIMITER //
CREATE TRIGGER nombre_disparador
  [BEFORE | AFTER] [INSERT | UPDATE | DELETE]
  ON nombre_tabla
  FOR EACH ROW
BEGIN
END //
DELIMITER ;

*/


-- CUANDO YO CREE UN NUEVO servicio, automáticamente registre a la tabla (actividad_clientes) el LOG.



DELIMITER //

CREATE TRIGGER tg_actividad_clientes
  AFTER INSERT
  ON clientes -- nombre de la tabla ala que va estár vinculado este disparador 
  FOR EACH row -- por cada fila

  BEGIN
    -- NEW guarda el objeto que inicio el evento, NOW devuelve la hora y la fecha actual
    INSERT INTO actividad_clientes VALUES (0, NEW.cliente_id, NOW());
    
  END //

DELIMITER ;

select now();

SHOW TRIGGERS FROM curso_sql;
DROP TRIGGER tg_actividad_clientes;


-- servicios que nos cobran de forma mensual o recurrente utilizan los triggers para cortarte o restringirte el acceso al servicio
-- en caso de que no hayas pagado





