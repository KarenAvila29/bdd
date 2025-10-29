-- creacion tabla cuentas
create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key (numero_cuenta) 
)
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12345','56847','21/10/2025',100.23)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('25478','45715','20/9/2024',523.23)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('35478','45615','19/9/2023',723.23)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('45478','55715','19/9/2024',758.73)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('55478','75715','10/9/2024',100.23)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('65214','67514','10/5/2023',223.23)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('75214','67714','10/5/2023',223.23)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('85214','67513','10/5/2023',223.23)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('95214','67517','10/5/2023',223.23)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('05214','67515','10/5/2023',223.23)

select * from cuentas

--crear un select que traiga el numero de cuenta y el saldo de todas las ceuntas
select numero_cuenta,saldo from cuentas

--crear select que traiga los registros entre el dia de hoy hasta 2 meses antes
select * from cuentas where fecha_creacion between '28/8/2025' and '28/10/2025'

--crear un select que traiga el numero de ceunta y el saldo de la cuenta desde 
--el dia de hoy hasta 2 meses antes
select numero_cuenta,saldo from cuentas where fecha_creacion between '28/8/2025' and '28/10/2025'



--RETO 5
--Actualizar el saldo a 10 de las cuentas cuya cedula_propietario empiece con 17
update cuentas set saldo = 10 where cedula_propietario like '17%'

