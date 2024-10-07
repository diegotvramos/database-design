


# Area de Mantenimiento del Parque Automotor "A.M.P.A."

## Sistema Integral de Gestión de Taller Mecánico basado en Tecnologías Web

> Debemos estár concientes de los atributos que queremos almacenar de cada entidad

## Listado de entidades:

### CONDUCTORES

- conductor_id **(PK)**
- nombre
- apellidos
- ci
- Calle
- Municipio
- Celular
- email
- LicenciaConducir
- dependencia
- Observaciones

### VEHICULOS

- vehiculo_id **(PK)**
- matricula
- clase/tipo (camioneta, sedan) 
- marca    () (Catálogo)
- modelo  () (es una entidad de tipo catálogo)
- año ()
- transmision (automática,sincronica/mecánica)
- dirección (Hidraulica, Mecánica, No disponible, Otro)
- sistema_combustión (Carburado, Inyeccion, No disponible, Otro, Turbo Carburado, Turbo Inyeccion)
- color
- chasis/serial
- combustible (diesel, gas, gasolina, no disponible, otro)
- aceite
- Fecha_creacion/fecha de ingreso


> el logo cambia segun la marca que estamos escogiendo **marca** y **modelo** son listas

### Estados
- estado_Id **(PK)**
- kilometraje
- nivel_combustible
- descripcion general
- observaciones
- inventario_vehiculo( es un checklist: antenas, botiquin, gata, herramientas, extintor)
- foto
- inspeccion_id **(FK)**

### Inspeciones
- inspeccion_id **(PK)**
- superior
- Parte Delantera
- Lado Derecho
- Lado Izquierdo
- Parte Trasera

### Insumos/Productos/repuesto (catálogo)

- producto_id **(PK)**
- nombre
- cantidad
- categoria(lubricante,repuesto, pieza de recambio) 


 > maneja inventario

### Servicios/mano de obra (catálogo)

- servicio_id **(PK)**
- nombre

### MECÁNICOS

- mecanico_id **(PK)**
- nombre
- apellidos
- ci
- especialidad
- teléfono
- correo_electronico
- fecha_ingreso
- estado (activo e inactivo)
- direccion
- ciudad
- ocupacion (pintor, lijador, ayudante, mecánico, soldaror...)
- observaciones


### Roles/Administradores? (catálogo)

- rol_id **(PK)**
- nombre
- estado
- fecha_registro
una persona puede tener varior vehiculos, Observa eso. y un vehiculo puede tener varios dueños a lo largo de su vida, pero solo uno.

### Usuarios

- usuario_id **(PK)**
- nombre
- apellidos
- ci
- teléfono
- correo_electronico
- fecha_ingreso
- estado (activo e inactivo)
- direccion
- ciudad
- rol_id **(FK)**

### ORDENES (trabajo o salida)

- orden_id **(PK)**
- cliente_id **(FK)** (si ya lo tengo solo busco "¿Ya es cliente?")
- vehiculo_id **(FK)** (te pide la placa)
- mecanico_id **(FK)**
- fecha_entrada
- fecha_salida (yo doy un estimado, solo cuando se le entrega el impreso va ser con la fecha actual)
- requerimiento(Reparación/Mantenimiento/Ambos)
- descripción
- servicio_id **(FK)**
- producto-id **(FK)**
- estado (Pendient, en proceso, finalizado, entregado, cancelado)

### MOTIVOS-INGRESO (catálogo)

- motivos_id **(PK)**
- descripcion (Cargamos una list de textos predefinidos  )

### TALLERES

- taller_id **(PK)**
- nombre-oficial (ampa)
- nombre-comercial (este nombre va salir en las impreciones)
- dirección
- ciudad
- teléfono
- email

## Relaciones

1. Un **Conductor** tiene varios **vehiculos**. (_1 a m_)
1. Un **Vehiculo** pertenece a solo un **conductor**. (_1 a 1_)
1. Un **Vehiculo** puede tener multiples **ordenes** de trabajo. (_1 a m_)
1. Un **Cliente** puede tener multiples **ordenes** de trabajo. (_1 a m_)
1. Un **Mecánico** puede trabajar en multiples **ordenes** de trabajo (_1 a m_)
1. 
 


> CSS utiliza separador medio
> JavaScrip tarbaja con el CamelCase
> PHP trabaja con el snapeCase
> En las bases de datos usaremos _SnepeCase_(la separación por el guin bajo)
> El nombre de las entidades van el plural y los atributos en singular