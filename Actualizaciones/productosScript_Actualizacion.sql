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

insert into productos(codigo,nombre,descripcion,precio,stock)
values ('09','Qedias','color verde', 10.20, 6)

select * from productos

-- crear select que traiga todos los productos que comienzan con Q 
select * from productos where nombre like 'Q%'

-- crear un select que traiga los productos con una descripcion null
select * from productos where descripcion is null

--crear un select que traiga todos los productos con un precio entre 2 y 3
select * from productos where precio between '2,00' and '3,00'

-- RETO 5
--Actualizar el stock a 0 en todos los productos donde la descripcion sea null
update productos set stock=0 where descripcion is null


