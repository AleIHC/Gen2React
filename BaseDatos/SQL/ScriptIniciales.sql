-- query para la insercion de un registro
INSERT INTO generationc2.estudiante (nombre,id,apellido) 
VALUES ('Ayun',5,'Loren');


-- query para eliminar un registro
DELETE FROM generationc2.estudiante
WHERE id=1 AND nombre='Jhon' AND apellido='Doe';


-- creacion de usuario
CREATE USER 'alejandro'@'localhost' IDENTIFIED BY 'Admin1234*';
-- permisos de acceso
GRANT ALL PRIVILEGES ON *.* TO 'alejandro'@'localhost' WITH GRANT OPTION;


-- creacion de usuario para acceso remoto
CREATE USER 'alejandro'@'%' IDENTIFIED BY 'Admin1234*';

GRANT ALL PRIVILEGES ON *.* TO 'alejandro'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;