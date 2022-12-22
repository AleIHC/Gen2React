-- id, nombre , descripcion
-- relacion muchos a muchos
create table productos(
id int primary key not null auto_increment,
nombre varchar(100) not null,
descripcion varchar(100)
);

create table pedidos(
id int primary key not null auto_increment,
fecha date not null,
monto int not null,
cliente_id int
);

--  tabla intermedia o relacional; pedidos_productos
-- id, fk tabla 1, fk tabla2
-- id,pedido_id, producto_id
CREATE table pedidos_productos(
id int primary key not null auto_increment,
pedido_id int not null ,
producto_id int not null,
cant_producto int,
subtotal int,
foreign key(producto_id) references productos(id),
foreign key(pedido_id) references pedidos(id)
);

insert into productos(nombre, descripcion) 
values ("licor_manzana","licor sabor manzana  marca patito")
;

insert into pedidos(fecha,monto) values('2022-11-09 00:00:00',123456);

insert into pedidos_productos (pedido_id,producto_id)
values(1,1),(1,1);


alter table pedidos_productos
add cant_productos int, add subtotal int;

alter table productos 
add valor_unitario int;