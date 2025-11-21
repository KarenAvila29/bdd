create table persona(
	cedula  char(10) not null, 
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura decimal (10,2),
	fecha_nacimiento date not null,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint cedula_persona_pk primary key(cedula)
)



create table prestamo(
	cedula  char(10) , 
	monto money,
	fecha_prestamo date ,
	hora_prestamo time,
	garante varchar(40),
	constraint codigo_prestamo_pk primary key(cedula)
)

delete from persona
delete from prestamo

alter table prestamo
add constraint prestamo_persona_fk
foreign key (cedula)
references persona(cedula)


select * from prestamo
select * from persona

insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1725168130',500.20 ,'18/08/2023', '8:00','Pedro');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1725168131',3050.5 ,'18/08/2023', '9:00','Maria');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1725168132',3050.5 ,'18/08/2023', '9:00','Pedro');

insert into persona(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values('1725168130','Karen','Avila', 1.49,'29/08/1993','10:45',350.00,0);
insert into persona(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values('1725168131','Karen','Avila', 1.50,'29/08/1994','10:45',350.001,0);
insert into persona(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values('1725168132','Sean','Avila', 1.41,'29/08/1995','10:45',350.00,2);
insert into persona(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values('1725168133','Karen2','Avila', 1.51,'29/08/1980','10:45',350.00,3);
insert into persona(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values('1725168134','Karen3','Avila', 1.52,'29/08/1981','10:45',350.00,4);
insert into persona(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values('1725168135','Karen4','Avila', 1.53,'29/08/1982','10:45',350.00,5);
insert into persona(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values('1725168136','Karen5','Avila', 1.54,'29/08/1983','10:45',350.00,6);
insert into persona(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values('1725168137','Karen6','Avila', 1.55,'29/08/1984','10:45',350.00,7);
insert into persona(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values('1725168138','Karen7','Avila', 1.56,'29/08/1985','10:45',350.00,8);
insert into persona(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values('1725168139','Karen8','Avila', 1.57,'29/08/1993','10:45',350.00,0);
insert into persona(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values('1725168140','Karen9','Avila', 1.48,'29/08/1993','10:45',350.00,0);



--RETO24----
select pe.cantidad_ahorrada,pm.monto,pm.garante from
persona pe ,prestamo pm
where
pe.cedula=pm.cedula
and pm.monto between '100' and '1000'

select * from
persona pe ,prestamo pm
where
pm.cedula =pe.cedula
and pe.nombre = 'Sean';

--RETO 25--
select cedula, sum(monto) as monto_total_prestamo from prestamo
group by cedula

select persona , count(numero_hijos) 
from persona 
where cm.cedula=cl.cedula
 and  fecha_compra='01/10/2015'
 group by fecha_compra


select  count(*) as total_personas
from persona
where numero_hijos  > 1;