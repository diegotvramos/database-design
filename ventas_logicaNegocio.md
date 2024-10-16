




# VENTAS

## Listado de entidades

### Clientes  **(ED) entidad de datos**
- cliente_id **PK**
- nombre
- apellidos
- telefono **(UQ)**
- email **(UQ)**
- dirección
- municipio
- ciudad
- pais_id **(FK)** 


### Productos  **(ED/|EC)**
- producto_id **PK**
- nombre
- descripcion
- foto
- precio
- stock  _me refiero al stock_


### Ventas **(ED)**
- venta_id **(PK)**
- fecha 
- monto
- cliente_id **(FK)**

### Detalle_ventas **(EP)**
- detalle_id **(PK)**
- cantidad
- precio_unitario
- venta_id **(FK)**
- producto_id **(FK)**

### Paises **(Entidad Catálogo EC)**

- pais_id **(PK)**
- nombre
- dominio **(UQ)**


> si tu vendes ropa tendrás que agregar 'tallas' entonces si vendes otros productos tendras que identificar sus atributos.

## Relaciones   

> Miremos siempre desde la perspectiva del cliente y no desde la perspectiva del pais.

1. Un **cliente** pertenece a un **pais** (_1 a 1_)
1. Un **cliente** genera muchas **ventas**  (_1 a m_)
1. Una **venta** tiene **detalle_ventas** (_1 a m_)
1. un **detalle_venta** es un **produto** (_1 a 1_)
1. 
1. 


### MODELO RELACIONAL DE LA BASE DE DATOS: SISTEMA DE VENTAS

![foto](Ventas2.drawio.png)







PAISES

| PaisID | Nombre           | Dominio  |
|--------|-------------------|----------|
| 1      | Bolivia           | .bo      |
| 2      | Argentina         | .ar      |
| 3      | Brasil            | .br      |
| 4      | Chile             | .cl      |
| 5      | Colombia          | .co      |
| 6      | Perú              | .pe      |
| 7      | México            | .mx      |
| 8      | España            | .es      |
| 9      | Estados Unidos    | .us      |
| 10     | Canadá            | .ca      |
| 11     | Francia           | .fr      |
| 12     | Alemania          | .de      |
| 13     | Italia            | .it      |
| 14     | Japón             | .jp      |
| 15     | Corea del Sur     | .kr      |
| 16     | India             | .in      |
| 17     | China             | .cn      |
| 18     | Rusia             | .ru      |
| 19     | Sudáfrica         | .za      |
| 20     | Australia         | .au      |


CLIENTES

| ClienteID | Nombre         | Apellidos         | Telefono     | Email                        | Direccion                    | Municipio     | Departamento | PaisID |
|-----------|----------------|-------------------|--------------|----------------------        |-------------------------     |---------------|--------------|--------|
| 1         | Juan           | Pérez             | 601234567    | juan.perez@gmail.com         | Av. 16 de Julio 123          | Viacha        | La Paz       | 1      |
| 2         | María          | Sánchez           | 602345678    | maria.sanchez@yahoo.com      | C. Los Andes 456             | El Alto       | La Paz       | 1      |
| 3         | Carlos         | Fernández         | 603456789    | carlos.fernandez@hotmail.com | Av. Ballivián 789            | La Paz        | La Paz       | 1      |
| 4         | Ana            | Rodríguez         | 604567890    | ana.rodriguez@outlook.com    | C. Juan de la Riva 101       | El Alto       | La Paz       | 1      |
| 5         | Luis           | García            | 605678901    | luis.garcia@gmail.com        | C. Murillo 202               | Viacha        | La Paz       | 1      |
