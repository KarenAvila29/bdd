select * from productos
select * from ventas

create table ventas(
	id_venta  int, 
	codigo_producto int not null,
	fecha_venta date not null,
	cantidad int,
	constraint id_venta_pk primary key(id_venta)
)

delete from productos

alter table ventas
add constraint ventas_compras_fk
foreign key (codigo_producto)
references productos(codigo)

insert into productos(codigo,nombre,descripcion,precio,stock) 
values (1,'Jabón','Lava todo',3.50,10);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (2,'Shampoo','Savital',2.50,20);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (3,'Deja','Deja',1.50,30);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (4,'Pasta dental','Fortident',3.0,40);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (5,'Cera','Cera de piso',2.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (6,'Pampita',1.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (7,'Queso',5.50,60);
insert into productos(codigo,nombre,precio,stock)
values (8,'Leche',2.50,70);
insert into productos(codigo,nombre,precio,stock)
values (9,'Jamon',1.00,120);
insert into productos(codigo,nombre,precio,stock)
values (10,'Coca Cola',3.50,300);



insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values (01,1,'10/10/2025',5);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values (02,10,'10/11/2025',10);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values (03,3,'10/12/2025',3);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values (04,9,'10/02/2025',4);
