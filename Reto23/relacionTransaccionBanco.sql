select * from transacciones
select * from banco


delete from transacciones

create table banco(
	codigo_banco int,
	codigo_transaccion  int ,
	detalle  varchar(100),
	constraint codigo_banco_pk primary key(codigo_banco)
)



alter table banco
add constraint banco_transacciones_fk 
foreign key (codigo_transaccion)
references transacciones(codigo)


insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(1, '75369', 200, 'C', '20/09/2023', '23:30');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(53147, '22001', 500.65, 'C', '15/06/2022', '17:55');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32548, '21004', 1600, 'C', '17/05/2021', '16:37');

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



insert into banco(codigo_banco,codigo_transaccion,detalle)
values(02, '1', 'PAGO SERVICIO BASICO');


