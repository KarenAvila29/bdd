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


--RETO 6
--Eliminar todos los registros del mes de junio
delete from registros_entradas where fecha between '01/06/2025' and '30/06/2025'

--INSERTAR DATOS
insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora)
values(12345, '1754416489', '18/06/2023', '7:00');

insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora)
values(12355, '1758254591', '03/08/2023', '14:00');

insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora)
values(12346, '1715974492', '25/03/2022', '23:00');

insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora)
values(12347, '1735642583', '28/12/2015', '16:00');

insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora)
values(12389, '1707416984', '16/07/2012', '8:00');

insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora)
values(12349, '1778541235', '17/03/2013', '10:00');

insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora)
values(12310, '1742158637', '14/05/2017', '19:00');

insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora)
values(12311, '1756321784', '15/05/2004', '20:00');

insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora)
values(12358, '1712546328', '07/07/2008', '21:00');

insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora)
values(12378, '1725785413', '02/09/2023', '4:00');

--	---------------------------RETO 7----------------------------------------
--Seleccione los registros del mes de septiembre, o realizados por las cédulas
--de pichincha (que inicien con 17)
select * from registros_entradas where fecha between  '01/09/2025'and '30/09/2025' or cedula_empleado like '17%' 

--Seleccione los registros del mes de agosto, realizados por las cédulas de pichincha (que inicien con 17) 
--y realizados entre las 08:00 a 12:00.
select * from registros_entradas where fecha between  '01/08/2025'and '31/08/2025' and 
cedula_empleado like '17%' and 
hora between '08:00' and '12:00' 

--Seleccione los registros del mes de agosto, realizados por las cédulas de pichincha (que inicien con 17) y 
--realizados entre las 08:00 a 12:00 o los registros del mes de septiembre, 
--realizadas por las cédulas de Esmeraldas (que inicien con 08) y realizadas entre las 09:00 a 13:00.
select * from registros_entradas where fecha between  '01/08/2025'and '31/08/2025' and 
cedula_empleado like '17%' and 
hora between '08:00' and '12:00' or
fecha between  '01/09/2025'and '30/09/2025' and
cedula_empleado like '08%' and 
hora between '09:00' and '13:00'



