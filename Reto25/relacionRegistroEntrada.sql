select * from registros_entradas
select * from empleados

delete from registros_entradas

alter table registros_entradas
add column codigo_empleado int not null 

create table empleado(
	codigo_empleado  int not null, 
	nombre varchar(25) not null,
	fecha date not null,
	hora time not null,
	constraint codigo_empleado_pk primary key(codigo_empleado)
)

alter table registros_entradas
add constraint registros_entradas_empleado_fk
foreign key (codigo_empleado)
references empleado(codigo_empleado)

insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12345, '1754416489', '18/08/2023', '8:00',2201);

insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12355, '1758254591', '03/08/2023', '9:00',2202);

insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12346, '1715974492', '25/09/2023', '10:00',2203);

insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12347, '1735642583', '28/12/2023', '11:00',2204);

insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12389, '1707416984', '16/10/2023', '12:00',2201);

insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12349, '1778541235', '17/11/2023', '13:00',2202);

insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12310, '1742158637', '14/12/2023', '9:00',2204);

insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12311, '1756321784', '15/10/2023', '12:00',2203);

insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12358, '1712546328', '07/10/2023', '11:00',2204);

insert into registros_entradas(codigo_registro, cedula_empleado, fecha, hora,codigo_empleado)
values(12378, '1725785413', '02/09/2023', '10:00',2201);




insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2201, 'Karen', '02/09/2023', '10:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2202, 'Karen2', '02/10/2023', '11:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2203, 'Karen3', '02/09/2023', '12:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2204, 'Karen4', '02/10/2023', '13:00');


--RETO24--
select re.cedula_empleado, re.fecha,e.nombre from 
empleado e , registros_entradas re 
 --re.codigo_empleado=e.codigo_empleado 
where 
  
       ( re.fecha between '01/08/2023' and '30/08/2023' )
   or ( re.cedula_empleado like '17%' 
        and re.hora between '08:00' and '12:00' )
   or ( re.fecha between '06/10/2023' and '20/10/2023'
        and re.cedula_empleado like '08%'
        and re.hora between '09:00' and '13:00' );

select re.codigo_registro, e.nombre from
empleado e , registros_entradas re 
where
 e.codigo_empleado = re.codigo_empleado
and e.codigo_empleado ='2201'


