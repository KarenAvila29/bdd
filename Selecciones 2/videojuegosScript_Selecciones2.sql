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

--seleccionar todos los videojuegos con un nombre que comiencen con una C
select * from videojuegos where nombre like 'C%'

--seleccione video juegos con una valoracion entre 9 y 10
select * from videojuegos where valoracion between '9' and '10'

--seleccione video juegos con una descripcion null
select * from videojuegos where descripcion is null

--RETO5
--Actualiza todas las decripciones de los videojuegoscuya valoracion sea mayor
--que 9 por "Mejor puntuado"
update videojuegos set descripcion ='Mejor puntuado' where valoracion > 9

--RETO 6
--Elimina los videojuegos cuya valoracion sea menor que 7
delete from videojuegos where valoracion<7

--INSERTAR DATOS
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(07563, 'Call of Duty', 'juego de terror', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(85421, 'Free Fire', 'juego de accion', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(93475, 'Call of Clans', 'juego de terror', 10);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(15983, 'Fornite', 'juego de suspenso', 10);

insert into videojuegos(codigo, nombre, valoracion)
values(35784, 'Minecraft', 3);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(54682, 'Tom and Jerry', 'juego de comedia', 8);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(01456, 'Ajedres', 'juego de psicoligia', 6);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(70215, 'God of Ward', 'juego de aprendisaje', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63240, 'Crash', 'juego de deprote', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63549, 'Dragon Ball', 'juego de baile', 8);

--	---------------------------RETO 7----------------------------------------
--Listar los registros de videojuegos con un nombre que contengan la letra "C” 
--o una valoración de 7.
select * from videojuegos where nombre like '%C%' or valoracion ='7'

--Seleccionar videojuegos con un código entre 3 y 7 o una valoración de 7
select * from videojuegos where (codigo>'3' and codigo<'7') or valoracion ='7'

--Seleccionar videojuegos de guerra, con una valoración mayor a 7 y 
--que en su nombre empiezan con C o los videojuegos con una valoración
--mayor a 8 y que en su nombre empiezen con D
select * from videojuegos where descripcion like '%guerra%' and valoracion >'7' and
nombre like 'C%' or 
valoracion >'8' and
nombre like 'D%'
