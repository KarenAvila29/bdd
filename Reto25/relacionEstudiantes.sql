select * from estudiantes
select * from profesor

delete from estudiantes

alter table estudiantes
add column codigo_profesor int 

create table profesor(
	codigo  int, 
	nombre varchar(50) not null,
	
	constraint id_codigo_profesor_pk primary key(codigo)
)

alter table estudiantes
add constraint estudiantes_profesor_fk
foreign key (codigo_profesor)
references profesor(codigo)


insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values (1235476801,'Raul','Martínez','raumart01@gmail.com','04/02/2003');
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1735476802,'Mario','Guaman','MarioG25@gmail.com', '08/12/2000',0021);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1235476803,'Roberto','Quishpe','RobQuishpe64@gmail.com','29/06/2005',0022);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1735476804,'Paul','Noguera','PaulNog55@gmail.com','22/07/2002',0023);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1235476805,'Marcelo','Ramos','MarceloR72@gmail.com','15/08/2008',0024);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1735476806,'Anthony','Agual','KAgual22@gmail.com','25/03/2002',0024);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1235476807,'Paula','Celi','PauCeli31@gmail.com','30/09/2010' ,0021);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1735476808,'Mónica','Martínez','MoniMar15@gmail.com','22/01/2001',0022);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1235476809,'Anabel','Perlaza','WPerlaza18@gmail.com','12/04/2000',0023);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values (1735476810,'Sofía','Jimenez','SofiJz22@gmail.com','22/01/2001',0024);



insert into profesor (codigo,nombre)
values (0021,'Francisco');
insert into profesor (codigo,nombre)
values (0022,'Marcos');
insert into profesor (codigo,nombre)
values (0023,'Andres');
insert into profesor (codigo,nombre)
values (0024,'Francia');


--RETO24--
select pr.codigo,es.nombre,es.apellido from
estudiantes es ,profesor pr
where
	es.codigo_profesor = pr.codigo
 and es.nombre like '%n%' 
or es.apellido like '%n%'

select es.cedula,es.nombre,es.apellido,es.email,pr.codigo from
estudiantes es ,profesor pr
where
	es.codigo_profesor = pr.codigo
 and pr.nombre = 'Francisco' 

 --RETO25-

 select codigo_profesor, count(*) as total_estudiantes
 from estudiantes
group by codigo_profesor


select 
    ROUND(AVG(EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM fecha_nacimiento))
    ) AS edad_promedio
FROM estudiantes;

