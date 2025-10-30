--creacion tabla estudiantes

create table estudiantes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date not null,
	constraint estudiantes_pk primary key(cedula)
)

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1725478135','Maria','Perez','maria@gmail.com','20/10/2000')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1254785314','Rocio','Robles','rocio@gmail.com','20/10/2001')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('2564781583','Karen','Avila','avila@gmail.com','20/10/1993')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('5697452158','Belen','Guaman','belen@gmail.com','20/10/2002')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1725471452','Maritza','Aguilar','maritza@gmail.com','20/10/1995')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('5741258412','Make','Paz','make@gmail.com','20/10/2000')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('5478541254','Santa','Aguilar','santa@gmail.com','20/10/2000')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1725478854','Luli','Paz','luli@gmail.com','20/10/2000')

select * from estudiantes

--crear un select que traiga el nombre y cedula de los estudiantes
select nombre,cedula from estudiantes

--crear un select que traiga los nombres de todos los estudiantes cuya cedula empieze
--con 17
select nombre from estudiantes where cedula like '17%'

--crear un select que traiga los nombres completos de todos los estudiantes cuyo nombre
--empieze con A
select nombre,apellido from estudiantes where nombre like 'A%'

--RETO 5
--Actualizar el apellido por Hernandez a todos los estudiantes que tengan una cedula 
--que empiece por 17
update estudiantes set apellido='Hernandez' where cedula like '17%'

--RETO6
--Elimina todos los estudiantes que tengan una cedula que termina por 05
delete from estudiantes where cedula like '%05'

--INSERTAR DATOS
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476801,'Raul','Martínez','raumart01@gmail.com','04/02/2003');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476802,'Mario','Guaman','MarioG25@gmail.com', '08/12/2000');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476803,'Roberto','Quishpe','RobQuishpe64@gmail.com','29/06/2005');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476804,'Paul','Noguera','PaulNog55@gmail.com','22/07/2002');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476805,'Marcelo','Ramos','MarceloR72@gmail.com','15/08/2008');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476806,'Anthony','Agual','KAgual22@gmail.com','25/03/2002');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476807,'Paula','Celi','PauCeli31@gmail.com','30/09/2010' );
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476808,'Mónica','Martínez','MoniMar15@gmail.com','22/01/2001');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476809,'Anabel','Perlaza','WPerlaza18@gmail.com','12/04/2000');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1735476810,'Sofía','Jimenez','SofiJz22@gmail.com','22/01/2001');

--	---------------------------RETO 7----------------------------------------
--Seleccionar el nombre y apellido de los estudiantes cuyos nombres empiecen 
--con M o si su apellido termina en Z
select nombre,apellido from estudiantes where nombre like 'M%' or apellido like '%Z'
--Crear un select que traiga los nombres de todos los estudiantes que tenga un número 32 
--y empiece con 18 en alguna parte de su cedula
select nombre,cedula from estudiantes where cedula like '%32%' and cedula like '18%'
--Crear un select que traiga los nombres completos de todos los estudiantes cuya
--cedula termine en 06 o empiece con 17
select nombre,apellido,cedula from estudiantes where cedula like '%06' or cedula like '17%'
