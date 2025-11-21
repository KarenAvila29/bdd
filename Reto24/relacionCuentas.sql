create table usuario(
	cedula  char(5), 
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	tipo_cuenta varchar(20),
	limite_credito decimal(10,5),
	constraint cedula_usuario_pk primary key(cedula)
)

select * from cuentas
select * from usuario

delete from cuentas

alter table cuentas
add constraint usuario_cuentas_fk 
foreign key (cedula_propietario)
references usuario(cedula)

insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (17504,'Karen','Avila','Ahorro','999');
insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (17500,'Karen2','Avila','Credito','999');
insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (17501,'Karen3','Avila','Ahorro','999');
insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (17508,'Karen4','Avila','Credito','999');
insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (17509,'Karen5','Avila','Ahorro','999');
insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (17510,'Karen6','Avila','Credito','997');
insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (17507,'Karen7','Avila','Ahorro','997');
insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (17515,'Karen8','Avila','Credito','998');
insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (17512,'Karen9','Avila','Ahorro','1000');
insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (17503,'Karen10','Avila','Credito','777');




insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25569,17504,'21/08/2022',100);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25570,17500,'21/09/2022',200);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25571,17501,'21/10/2022',300);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25572,17508,'22/11/2022',400);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25573,17509,'25/12/2022',500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25574,17510,'21/01/2023',600);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25575,17507,'27/02/2023',700);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25576,17515,'21/03/2023',800);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25577,17512,'27/09/2023',900);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25578,17503,'15/08/2013',1000);


