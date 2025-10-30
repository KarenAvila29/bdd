--creacion de tabla transacciones

create table transacciones(
	codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date not null,
	hora time not null,
	constraint transacciones_pk primary key(codigo)

)
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values('04','12547',10.20,'C','10/8/2025','10:20')

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
values ('02', '12547', 25.50, 'd', '11/08/2025', '14:35')

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
values ('01', '12547', 10.20, 'c', '10/08/2025', '10:20')

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
values ('03', '12547', 100.00, 'c', '12/08/2025', '09:10')

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
values ('05', '12547', 200.00, 'c', '14/08/2025', '11:45')

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
values ('06', '12547', 15.30, 'd', '15/08/2025', '16:10')

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
values ('07', '12547', 75.00, 'c', '16/08/2025', '08:55')

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
values ('08', '12547', 30.25, 'd', '17/08/2025', '19:40')

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
values ('09', '12547', 500.00, 'c', '18/08/2025', '12:05')

insert into transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
values ('10', '12547', 60.80, 'd', '19/08/2025', '15:15')


select * from transacciones

--seleccionar todas las transacciones realizadas con tipo d
select * from transacciones where tipo ='d'

--seleecione las transacciones con montos entre 200 y 2000
select * from transacciones where monto between '200' and '2000'

--seleccionar el codigo ,monto, tipo y fecha de transaccion que tengan un fecha
--diferente de null
select codigo, monto, tipo,fecha from transacciones where fecha <> null

--RETO 5
--actualiza tipo de todos los registros que tengan una transaccion mayor a 100 y menor
--que 500 que se hayan llevado a cabo en el mes de septiembre con horas entre 14:00 y 
--20:00 por "T"
saldo > money(100)

update transacciones set tipo ='T' where monto <money(500) and monto >money(100) and
hora between '14:00' and '20:00'

--RETO 6
--Elimina las transacciones que se hayan hecho entre las 14:00 y 18:00 del mes de 
--agosto del presente año< 
delete from transacciones where hora between '14:00' and '18:00' 
 and   fecha between '01/08/2025' and '31/08/2025'

 --INSERTAR DATOS
 insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78945, '75369', 200, 'C', '20/09/2023', '23:30');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(53147, '32102', 500.65, 'D', '15/06/2022', '17:55');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32548, '21001', 1600, 'C', '17/05/2021', '16:37');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32165, '51437', 1050, 'D', '25/04/2020', '15:48');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78542, '02147', 300, 'D', '20/03/2019', '22:19');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(23210, '32015', 400, 'C','20/03/2019', '13:55');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(35412, '85214', 600, 'D', '07/12/2015', '20:14');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54193, '96325', 800, 'D', '06/11/2012', '11:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(95124, '74125', 900, 'D', '23/10/2002', '9:00');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54143, '85213', 2000, 'C', '11/09/1999', '7:30');

--	---------------------------RETO 7----------------------------------------
--Seleccionar transacciones de tipo C realizadas por los clientes con número
--de cuentas entre 222001 y 22004.
select * from transacciones where tipo ='C' and  
numero_cuenta>'222001' and numero_cuenta<'22004'

--Seleccionar transacciones de tipo D que fueron realizadas el 25 de mayo y
--con el rango de cuenta entre 22007 y 22010.
select * from transacciones where tipo ='D' and fecha='25/04/2025' and
numero_cuenta>'22007' and numero_cuenta<'22010'

--Seleccione todas las transacciones en donde el código sea entre 1 y 5, 
--número de cuenta entre 22002 O 22004 que se hayan realizado los días 26 y 29 de mayo.
select * from transacciones where codigo>'1' and codigo<'5'and 
numero_cuenta>'22002' or numero_cuenta<'22004' and
fecha='25/04/2025' and fecha='29/04/2025'