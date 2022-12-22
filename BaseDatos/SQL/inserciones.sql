-- insertar datos en tablas
-- INSERT INTO NOMBRE_TABLA (NOMBRE_COL1, NOMBRE_COL2...) VALUES(VALOR1,VALOR2,..);

INSERT into directivos ( id, nombre, apellido) 
values (1,"Maggi","Fernandez");

INSERT into directivos ( id,nombre, apellido) 
values (2,"Rafael","Guerrero");

-- consultar
select * 
FROM directivos
-- where id = 4 -- filtrando
; 

-- insertar mas de un registro
INSERT into directivos ( nombre, apellido) 
values ("Lau","Soto"),("Andrea","Montecinos");

/* Tarea:  crear tabla mascotas, 
 minimo 4 columnas, 
 minimo 4 inserciones, 
 por medio de script
*/

-- MOFIDICAR LA DATA

-- drop database generationc2;

-- eliminar la tabla, tambien eliminamos el contenido, no se puede recuperar
drop table directivos;

-- eliminar el contenido de una tabla, NO ELIMINA LA TABLA
TRUNCATE TABLE directivos;


-- modificar una data en una columna especifica

UPDATE nombre_tabla SET nombre_columna= el_nuevo_dato WHERE CONDICION


UPDATE directivos SET nombre = "Laura" 
WHERE id = 3;


select * FROM directivos;

-- mostrar columnas especificas
SELECT nombre, id
from directivos;

-- alias
SELECT d.nombre as gato, d.id as rut
from directivos d;

-- FILTRAR
INSERT into directivos ( nombre, apellido) 
values ("Andrea","Soto"),("Andrea","Palma");

select d.id,d.nombre,d.apellido
FROM directivos d
where d.nombre = "andrea";-- d.id = 5; -- 

select d.nombre,d.apellido, d.id
FROM directivos d
where d.nombre = "andrea"
and d.apellido = "montecinos";

-- filtrar por parte de palabra/numero; LIKE coincidencias
INSERT into directivos ( nombre, apellido) 
values ("Andres","Soto"),("Ana","Rubio");

select d.nombre,d.apellido, d.id
FROM directivos d
where d.nombre LIKE 'an%';-- anne, andrea, andres..

-- comienza por cualquier texto, pero finaliza por 
select d.nombre,d.apellido, d.id
FROM directivos d
where d.nombre LIKE '%el';

-- busca la coincidencia en cualquier parte de la palabra
select d.nombre,d.apellido, d.id
FROM directivos d
where d.apellido LIKE '%o'
and d.nombre like 'a%';


-- insert tabla cursos

INSERT INTO cursos
(nombre,cant_alumnos,especialidad)
value ("Cohorte 1",30,"Java"),
("Cohorte 2",34,"Java"),
("Cohorte 3",35,"Java");

select * from cursos;

-- agregar la fk a estudiantes

-- 1.- creacion columna
ALTER TABLE estudiante
ADD cursoId INT;

-- 2.- relacionen las tablas
ALTER TABLE estudiante
ADD FOREIGN KEY(cursoId) REFERENCES cursos(id);

ALTER TABLE generationc2.mis_pokemones ADD id int primary key auto_increment NOT NULL;

INSERT into estudiante 
(nombre,apellido,cursoId)
values ("Jhon","Doe",1),
("Jane","Doe",2),
("Ayun","Doe",2),
("Zoe","Doe",3);

select * from estudiante;
