

# Sait Seiya

## Listado de entidades

### Personajes **(ED)**

- personaje_id **(PK)**
- nombre
- armadura **(FK)**
- signo_id **(FK)**
- nacimiento
- pais **(FK)**
- entrenamiento **(FK)** (va hacer referencia a la entidad pais 😯)
- maestro **(FK)** (llave foranea de la misma entidad, es como una llave recursiva)
- ejercito **(FK)**
- rango **(FK)**
- foto

### armaduras **(ED | EC)**

- armadura_id
- armadura
- armadura_tipo **(FK)**

### armaduras_tipos **(EC)**

- armadura_tipo_id **(FK)**
- armadura_tipo


### armaduras_versiones **(EC | EP)**

- armadura_version_id **(PK)**
- armadura_id **(FK)**
- version
- foto


### signos **(EC)**

- signo_id **(FK)** 
- signo

### paises **(EC)**

- pais_id **(FK)** 
- pais

### ejercitos **(EC)**

- ejercito_id **(FK)** 
- ejercito

### rangos **(EC)**

- rango_id **(FK)** 
- rango

