--creacion tabla registros_entradas

create table registros_entradas(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint registros_entradas_pk primary key (codigo_registro)
)

