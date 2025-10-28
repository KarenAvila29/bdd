--creacion de tabla videojuegos

create table videojuegos(
	codigo int not null, 
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key (codigo)
)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values('01','Super Mario','Juego para todas las edades',10)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values('02','Hollow Knight','Mayor de 18 años',10)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values('03','Ghost of Yotei','Juego para todas las edades',10)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values('04','Clair Obscur','Juego para todas las edades',10)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values('05','Super Mario','Diversion',10)

select * from videojuegos