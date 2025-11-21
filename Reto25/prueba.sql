select * from personas

delete from personas

alter table personas
add column estado_civil_codigo char(1) not null

create table estado_civil(
	codigo  char(1) not null,
	descripcion varchar(20) not null,
	constraint estado_civil_pk primary key(codigo)
)

alter table personas
add constraint personas_estado_civil_fk 
foreign key (estado_civil_codigo)
references estado_civil(codigo)

insert into personas(cedula,nombre,apellido,estado_civil_codigo)
values('1725168030','MARIA','Aguilar','U')

select * from estado_civil

insert into estado_civil(codigo,descripcion)
values('U','UNION LIBRE');
insert into estado_civil(codigo,descripcion)
values('C','CASADO');
insert into estado_civil(codigo,descripcion)
values('S','SOLTERO');


select *from
personas pe ,estado_civil ec
where
pe.estado_civil_codigo=ec.codigo

select pe.cedula,pe.nombre,pe.apellido,ec.descripcion from
personas pe ,estado_civil ec
where
pe.estado_civil_codigo=ec.codigo
and nombre like 'K%'
