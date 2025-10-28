-- creacion de tabla productos
create table productos(
	codigo int,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)

insert into productos(codigo,nombre,precio,stock)
values ('06','Sosten', 2.50, 10)

insert into productos(codigo,nombre,precio,stock)
values ('07','Pantalones', 6.30, 9)

insert into productos(codigo,nombre,precio,stock)
values ('08','Camisas', 25.50, 10)

select * from productos
