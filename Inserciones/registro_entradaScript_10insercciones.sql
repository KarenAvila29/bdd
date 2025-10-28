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


