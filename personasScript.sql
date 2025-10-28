--crear tabla personas
create table personas (
	cedula char (10) not null,
	nombre char(50) not null,
	apellido char(50) not null,
	estatura decimal,
	fecha_nacimiento date,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint personas_dk primary key(cedula)
)
insert into personas(cedula,nombre,apellido)
values('1725168130','Karen','Avila')

insert into personas(cedula,nombre,apellido,estatura)
values('1717270472','Maritza','Aguilar',1.70)

insert into personas(cedula,nombre,apellido,numero_hijos)
values('1306563428','Viviana','Moreira',3)

insert into personas(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values('1725168112','Belen','Avila',1.50,'28/8/2001','10:10',200.36,1)

select cedula,nombre,numero_hijos,estatura from personas

select * from personas
