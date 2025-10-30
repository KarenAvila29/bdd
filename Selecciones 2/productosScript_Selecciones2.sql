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


--RETO 6
--Eliminar todos los productos donde la descripcion sea null
delete from productos where descripcion is null 

--INSERTA DATOS
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (11,'Jabón','Lava todo',3.50,10);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (12,'Shampoo','Savital',2.50,20);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (13,'Deja','Deja',1.50,30);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (14,'Pasta dental','Fortident',3.0,40);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (15,'Cera','Cera de piso',2.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (16,'Pan',1.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (17,'Queso',5.50,60);
insert into productos(codigo,nombre,precio,stock)
values (18,'Leche',2.50,70);
insert into productos(codigo,nombre,precio,stock)
values (19,'Jamon',1.00,120);
insert into productos(codigo,nombre,precio,stock)
values (20,'Coca Cola',3.50,300);



--	---------------------------RETO 7----------------------------------------
--Seleccionar todos los productos con stock igual a 10 y precio menor a 10
select * from productos where stock = '10' and precio<'10.00'
--Seleccionar los nombre y stocks de todos los productos que tengan un m 
--en su nombre o tenga un espacio en blanco en su descripción
select nombre,stock,descripcion from productos where descripcion like '% %' or nombre like '%m%'
--Seleccionar el nombre de todos los productos que tenga null el campo 
--de descripción o tengan un stock de 0
select * from productos where (descripcion is null or stock = '0')




