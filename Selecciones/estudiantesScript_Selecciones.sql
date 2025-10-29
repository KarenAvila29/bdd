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


