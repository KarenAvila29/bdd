select * from videojuegos
select * from plataformas

create table plataformas(
	id_plataforma  int, 
	nombre_plataforma varchar(50) not null,
	codigo_videojuego int,
	constraint id_plataforma_pk primary key(id_plataforma)
)

alter table plataformas
add constraint plataformas_videojuegos_fk
foreign key (codigo_videojuego)
references videojuegos(codigo)

insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values(1,'nexflix',70215);
--RETO24--

select * from 
 videojuegos vj 
where 
descripcion = 'juego de Guerra'
  and valoracion > 7
   OR (
        (nombre like 'C%' OR nombre like 'D%')
         and valoracion > 8
      )

select pf.id_plataforma,pf.nombre_plataforma,pf.codigo_videojuego from 
 plataformas pf ,videojuegos vj
 where 
 vj.nombre='God of War';
