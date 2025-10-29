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