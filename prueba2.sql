create database Discografia;
use Discografia;

CREATE TABLE Canciones (
     idcancion int not null,
     id_art int,
     album varchar(25),
     cancion varchar(25),
     fecha_lanzamiento date,
     vendida int,
     valor int,
     primary key(idcancion), foreign key (id_art) references Artistas(id_art)
     );
CREATE TABLE Artistas (
   id_art int not null,
   nombre varchar(21),
   genero varchar(9),
   ano_nac int,
   id_nacion int,
   primary key (id_art), foreign key (id_nacion) references Nacionalidad(id_nacion)
   );
Create Table Nacionalidad(
id_nacion int not null,
nom_nacion varchar(21),
primary key (id_nacion)
);
Create table Estilos(
id_estilo int not null,
nom_estilo varchar(21),
primary key (id_estilo)
);
insert into Canciones (idcancion , id_art,album,cancion,fecha_lanzamiento,vendida,valor) 
values
(1, 1,"Californication","Around the World","1999-01-01",353,355),
(2, 1,"Californication","Scar Tissue","1999-01-01",470,355),
(3, 1,"Californication","Otherside","1999-01-01",365,355),
(4, 1,"Californication","Californication","1999-01-01",530,355),
(5, 1,"Californication","Road Trippin","1999-01-01",370,355),
(6, 1,"By the way","By the way","2002-01-01",850,355),
(7, 1,"By the way","Dosed","2002-01-01",450,355),
(8, 1,"By the way","The Zephyr Song","2002-01-01",890,355),
(9, 1,"By the way","Can't Stop","2002-01-01",780,355),
(10, 1,"By the way","I Could Die for You","2002-01-01",200,355),
(11, 2, "OK Computer","Let Down","1997-01-01",550,420),
(12, 2, "OK Computer","Karma Police","1997-01-01",642,420),
(13, 2,"OK Computer","Electioneering","1997-01-01",760,420),
(14, 2,"OK Computer","No Surprises","1997-01-01",723,420),
(15, 2,"OK Computer","Lucky","1997-01-01",723,420),
(16, 2,"OK Computer", "thetourist","1997-01-01",872,420),
(17, 3,"En Boca de Tantos","En Boca de Tantos","2008-01-01",920,170),
(18, 3,"En Boca de Tantos","Suben al cielo – Con Aid","2008-01-01",645,170),
(19, 3,"En Boca de Tantos","Aprecia lo que tienes","2008-01-01",890,170),
(20, 3,"En Boca de Tantos","Sobre el famoso tema","2008-01-01",1040,170),
(21, 3,"En Boca de Tantos","Sin ti","2008-01-01",220,170);
INSERT INTO artistas (id_art, nombre, genero, ano_nac,id_nacion)
VALUES 
(1, 'Red Hot Chili Peppers', 'Funk Rock', 1983, 10),
(2, 'Radiohead', 'Art Rock', 1985, 20),
(3, 'Porta', 'Hip Hop', 1988, 30);
Insert into Nacionalidad (id_nacion,nom_nacion)
Values
(10,"Estadounidense"),
(20,"Britanica"),
(30,"Espanol");
select Artistas.nombre, count(*) as "Canciones artista" from Canciones, Artistas where Artistas.id_art = Canciones.id_art  group by Artistas.nombre, Canciones.id_art; #Muestra cuántas canciones de cada artista hay en la Tabla
select album, count(*) as 'Cantidad de canciones'  from Canciones   group by Album; #Muestra el álbum y cuántas canciones tiene cada álbum
select Artistas.nombre, Canciones.cancion, year(fecha_lanzamiento) as 'Año Lanzamiento'from Canciones, Artistas where Artistas.id_art = Canciones.id_art  group by fecha_lanzamiento,nombre,cancion; #Muestre cuántas canciones fueron lanzadas cada año, y cuáles son esas canciones con el nombre del artista
select Album as 'Album', Max(vendida) as 'Valor Maximo',min(vendida) as 'Valor Minimo', avg(vendida) as 'Valor Promedio' from Canciones group by album order by vendida desc; #Muestra lo recaudado por cada álbum, el valor máximo, el minimo y promedio recaudado
select T1.nombre as 'Nombre de Artista',T2.nom_nacion as 'Nacionalidad Artista',T.cancion as 'Nombre Cancion',T.album as 'Nombre Album' from Canciones T inner join Artistas T1 on T1.id_art = T.id_art inner join Nacionalidad T2 on T2.id_nacion = T1.id_nacion; #Relacionar 3 tablas
select * from Canciones, Artistas where Canciones.id_art = Artistas.id_art and nombre = "Porta"; #Muestra un listado con todos los datos de las canciones del artista "Porta"
select Artistas.nombre as "Nombre Artista",Canciones.cancion as "Nombre Cancion", year(fecha_lanzamiento) as 'Año Lanzamiento' from Canciones, Artistas where Canciones.id_art = Artistas.id_art and year(fecha_lanzamiento) > '2000'; #Muestra el nombre del artista, el nombre de la canción y el año de lanzamiento de todas las canciones que fueron lanzadas después del año 2000
select cancion,vendida from Canciones where id_art = 2;
update Canciones Set vendida = vendida + 10 where id_art = 2;








