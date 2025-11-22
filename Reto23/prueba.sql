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

insert into personas(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos,estado_civil_codigo)
values('1306563428','Pepe','Aguilar',1.50,'12/12/1993','12:50',500.20,'0','U')
insert into personas(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos,estado_civil_codigo)
values('1306573428','Sandra','Almeida',1.80,'12/10/1980','13:50',1000.20,'0','C')

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



--AGREGACION 
--OPERACIONES SOBRE UN CONJUNTO DE RESULTADOS
--COUT

select *
from personas per,estado_civil ec
where per.estado_civil_codigo=ec.codigo
and estado_civil_codigo='U'


select count(ec.cedula)
from personas
where estado_civil_codigo = 'U'

--calcular el promedio AVG  //ESPECIFICAR COLUMNA
select AVG(cast( cantidad_ahorrada as numeric))
from personas per,estado_civil ec
where per.estado_civil_codigo=ec.codigo
and estado_civil_codigo='U'

--MAX-MIN-SUM
select MIN(cast( cantidad_ahorrada as numeric))
from personas per,estado_civil ec
where per.estado_civil_codigo=ec.codigo
and estado_civil_codigo='C'

--GROUP BY AGRUPA POR GRUPO SOBRE UN CRITERIO
select estado_civil_codigo, count(*) from personas
group by estado_civil_codigo

select estado_civil_codigo, sum(numero_hijos) from personas
group by estado_civil_codigo
