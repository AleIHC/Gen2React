-- relaciones

CREATE table proveedores(
	id INT primary key not null auto_increment,
	nombre varchar(100) not null,
	rut varchar(100) not null
);
/*
 * 	Proveedor	
id	nombre	rut
1	Fran SPA	01-sept
 * 
 */

create table direcciones(
	id INT primary key not null auto_increment,
	calle varchar(100) not null,
	numero int not null,
	sector varchar(100) not null,
	ciudad varchar(100) not null,
	region varchar(100) not null,
	codigo_postal int,
	proveedor_id int not null
);
/*
 * id	calle	numero	sector_comuna	ciudad	region	codigo_postal	proveedor_id
 */

ALTER TABLE direcciones
ADD CONSTRAINT fk_proveedor_id
FOREIGN KEY (proveedor_id) REFERENCES proveedores(id);


-- insert 
insert into proveedores 
(nombre,rut)values("micro","987654"),("mac","754635241"),("linux","213546643");

insert into direcciones
(calle,numero,sector,ciudad,region,codigo_postal,proveedor_id)
values("dire1",54321,"sector1","ciudad1","region1",532413,1),
("dire2",1245,"sector2","ciudad2","region2",7652345,1),
("dire3",54325,"sector3","ciudad3","region1",512345,3),
("dire4",75465,"sector4","ciudad4","region2",1346713,2);




insert into proveedores (nombre,rut)
values("ayun","77777777-7");

SELECT * from proveedores;

select * from direcciones;

-- SQL JOINs
SELECT * from proveedores p 
INNER JOIN direcciones d 
ON p.id = d.proveedor_id
;

SELECT * 
from proveedores p 
INNER JOIN direcciones d 
ON p.id = d.proveedor_id
-- where p.id = 1 -- filtro
;

SELECT p.* 
from proveedores p 
INNER JOIN direcciones d 
ON p.id = d.proveedor_id
where p.id = 1 -- filtro
;

SELECT d.id,d.calle,d.numero 
from proveedores p 
INNER JOIN direcciones d 
ON p.id = d.proveedor_id
where p.id = 1 -- filtro
;

SELECT d.id,d.calle,d.numero , p.nombre 
from proveedores p 
INNER JOIN direcciones d 
ON p.id = d.proveedor_id
where d.id = 1 -- filtro
;

-- left join
SELECT * -- d.id,d.calle,d.numero , p.nombre 
from proveedores p 
LEFT JOIN direcciones d 
ON p.id = d.proveedor_id
;

-- left join
SELECT * -- d.id,d.calle,d.numero , p.nombre 
from proveedores p 
Right JOIN direcciones d 
ON p.id = d.proveedor_id
;


alter table pokemonesKanto 
add primary key(pokedex);


TRUNCATE mis_pokemones ;

ALTER TABLE mis_pokemones 
ADD FOREIGN KEY(pokedex) REFERENCES pokemonesKanto(pokedex);