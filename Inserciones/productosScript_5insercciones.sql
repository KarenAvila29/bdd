-- creacion de tabla productos
create table productos(
	codigo int,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)

insert into productos(codigo,nombre,descripcion,precio,stock)
values ('01','Chaquetas','color cafe', 3.60, 5)

insert into productos(codigo,nombre,descripcion,precio,stock)
values ('02','Pantalones','De tela color cafe', 6.30, 9)

insert into productos(codigo,nombre,descripcion,precio,stock)
values ('03','Camisas','con cuello marka polo', 25.50, 10)

insert into productos(codigo,nombre,descripcion,precio,stock)
values ('04','Blusas','blancas sin estampados', 2.50, 3)

insert into productos(codigo,nombre,descripcion,precio,stock)
values ('05','Medias','color verde', 10.20, 6)

select * from productos
