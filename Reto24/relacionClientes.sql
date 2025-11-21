select * from clientes
select * from compras

create table compras(
	id_compra  int, 
	cedula char(10)not null,
	fecha_compra date not null,
	monto decimal(10,2) not null,
	constraint id_compra_pk primary key(id_compra)
)

alter table compras
add constraint clientes_compras_fk
foreign key (cedula)
references clientes(cedula)

insert into clientes (cedula,nombre,apellido,edad)
values ('1725168130','Karen','Avila','30');
insert into clientes (cedula,nombre,apellido,edad)
values ('1725168131','Monica','Avila','31');
insert into clientes (cedula,nombre,apellido,edad)
values ('1725168132','Karen','Avila','32');
insert into clientes (cedula,nombre,apellido,edad)
values ('1725168133','Karen','Avila','33');
insert into clientes (cedula,nombre,apellido,edad)
values ('1725168134','Karen','Avila','34');
insert into clientes (cedula,nombre,apellido,edad)
values ('1725168135','Karen','Avila','35');
insert into clientes (cedula,nombre,apellido,edad)
values ('1725168136','Karen','Avila','36');
insert into clientes (cedula,nombre,apellido,edad)
values ('1725168137','Karen','Avila','37');
insert into clientes (cedula,nombre,apellido,edad)
values ('1725168138','Karen','Avila','38');
insert into clientes (cedula,nombre,apellido,edad)
values ('1725168139','Karen','Avila','39');

insert into compras (id_compra,cedula,fecha_compra,monto)
values (01,'1725168139','01/10/2015',30);