create table ciudad(
	id int,
	nombre varchar(45) not null,
	constraint ciudad_pk primary key(id)
)

create table municipio(
	id int,
	nombre varchar(45),
	ciudad_id int,
	constraint municipio_ciudad_fk foreign key(ciudad_id) references ciudad(id),
	constraint municipio_pk primary key(id)
)

create table proyecto(
	id int,
	proyecto varchar(45) not null,
	monto money not null,
	fecha_inicio date,
	fecha_entrega date,
	constraint proyecto_id_fk primary key(id) 
)

create table proyecto_municipio(
	municipio_id int,
	proyecto_id int,
	constraint municipio_fk foreign key(municipio_id) references municipio(id),
	constraint proyecto_fk foreign key(proyecto_id) references proyecto(id),
	constraint proyecto_municipio_pk primary key(municipio_id,proyecto_id) 
)

insert into ciudad values   (1,'Quito'),
							(2,'Ambato'),
							(3,'Guayaquil'),
							(4,'Machala'),
							(5,'Manta'),
							(6,'Loja'),
							(7,'Otavalo'),
							(8,'Cuenca'),
							(9,'Latacunga'),
							(10,'Tena');


insert into municipio values (1,'GAD MUNICIPAL QUITO',1),
							 (2,'GAD MUNICIPAL DE CUENCA',8),
							 (3,'GAD MUNICIPALIDAD DE AMBATO',2),
							 (4,'MUNICIPALIDAD DE MACAHALA ',4),
							 (5,'MUNIUCIPIO DE GUAYAQUIL',3),
							 (6,'MUNICIPIO DE OTAVALO',7),
							 (7,'MUNICIPIO DE LOJA',6),
							 (8,'MUNICIPIO DE MANTA',5),
							 (9,'MUNICIPIO DE LATACUNGA',9),
							 (10,'MUNICIPIO DE TENA',10);


insert into proyecto values (1,'Proyectos de Gestión Ambiental',9543.327,'10/02/2022','10/02/2023'),
							(2,'Proyectos en Fomento y Desarrollo Productivo',26553.264,'25/06/2022','10/08/2022'),
							(3,'Proyectos en Cambio Climático',1292.194,'01/02/2021','10/12/2023');
							

insert into proyecto_municipio values (5,1),
									  (5,3),
									  (2,1),
									  (1,2),
									  (4,1),
									  (9,2),
									  (10,1),
									  (6,3),
									  (3,1),
									  (7,2);

--1
select mu.nombre as municipio ,p.proyecto as proyecto
from municipio mu,proyecto p,proyecto_municipio pm
--estrablecer relacion de claves 
where mu.id=pm.municipio_id
and p.id=pm.proyecto_id	
--2
select proyecto from proyecto
where id in(select proyecto_id from proyecto_municipio where municipio_id=1)

--3
select mu.nombre as municipio, count (pm.proyecto_id) as cantidad 
from municipio mu,proyecto_municipio pm
where mu.id=pm.municipio_id
 group by mu.nombre;
 
 --4
 select mu.nombre as municipio ,p.proyecto as proyecto
from municipio mu,proyecto p,proyecto_municipio pm
--estrablecer relacion de claves 
where mu.id=pm.municipio_id
and p.id=pm.proyecto_id
and mu.nombre like '%GAD%'

--5
select mu.nombre as municipio, min (pm.proyecto_id) as cantidad 
from municipio mu,proyecto_municipio pm
where mu.id=pm.municipio_id
 group by mu.nombre;

--6
select mu.nombre municipio, c.nombre as ciudad 
from municipio mu,ciudad c
--estrablecer relacion de claves 
where c.id=mu.ciudad_id
--7
select proyecto from proyecto
where id in(select proyecto_id from proyecto_municipio where municipio_id=3)
--8
select mu.nombre as municipio, max (pm.proyecto_id) as cantidad 
from municipio mu,proyecto_municipio pm
where mu.id=pm.municipio_id
 group by mu.nombre;