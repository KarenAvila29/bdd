--creacion de tabla videojuegos

create table videojuegos(
	codigo int not null, 
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key (codigo)
)

insert into videojuegos(codigo,nombre,valoracion)
values('06','Super Mario',10)

insert into videojuegos(codigo,nombre,valoracion)
values('07','Hollow Knight',10)

insert into videojuegos(codigo,nombre,valoracion)
values('08','Ghost of Yotei',10)

select * from videojuegos