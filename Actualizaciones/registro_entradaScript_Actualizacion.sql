--creacion tabla registros_entradas

create table registros_entradas(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint registros_entradas_pk primary key (codigo_registro)
)
insert into registros_entradas(codigo_registro,cedula_empleado,fecha,hora)
values('01','1725145872','21/10/2025','10:20')

insert into registros_entradas(codigo_registro,cedula_empleado,fecha,hora)
values('02','1725785872','22/10/2025','10:22')

insert into registros_entradas(codigo_registro,cedula_empleado,fecha,hora)
values('03','1725145874','23/10/2025','10:23')

insert into registros_entradas(codigo_registro,cedula_empleado,fecha,hora)
values('04','1725145772','24/10/2025','10:24')

insert into registros_entradas(codigo_registro,cedula_empleado,fecha,hora)
values('05','1725178872','21/10/2025','10:25')

insert into registros_entradas(codigo_registro,cedula_empleado,fecha,hora)
values('06','1725745872','21/10/2025','10:20')

insert into registros_entradas(codigo_registro,cedula_empleado,fecha,hora)
values('07','1725145878','21/10/2025','10:20')

insert into registros_entradas(codigo_registro,cedula_empleado,fecha,hora)
values('08','1725174872','21/10/2025','10:20')

insert into registros_entradas(codigo_registro,cedula_empleado,fecha,hora)
values('09','1725145845','21/10/2025','10:20')

insert into registros_entradas(codigo_registro,cedula_empleado,fecha,hora)
values('10','1425145872','21/10/2025','10:20')

select * from registros_entradas

--seleccionar todas las cedulas de empleado y fecha y hora de los registros de entrada
select cedula_empleado,fecha,hora from registros_entradas

--seleccionar los registros de entrada que esten entre 7:00 y 14:00
select * from registros_entradas where hora between '7:00' and '14:00'

--seleccionar los registros que tengan hora superiores a 8:00
select * from registros_entradas where hora >'8:00'

--RETO 5
--actualiza todas las cedulas de registro_entrada por"082345679" para todos los registros
--del mes de agosto

update registros_entradas set cedula_empleado='082345679' where fecha between '01/08/2025' and '31/08/2025'


