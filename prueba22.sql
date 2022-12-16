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
     primary key(idcancion), foreign key (id_art) references Artistas(id_art));
CREATE TABLE Artistas (
   id_art int not null,
   nombre varchar(21),
   genero varchar(9),
   ano_nac int,
   id_nacion int,
   primary key (id_art), foreign key (id_nacion) references Nacionalidad(id_nacion));
Create Table Nacionalidad(
id_nacion int not null,
nom_nacion varchar(21),
primary key (id_nacion));
insert into canciones (idcancion , id_art,album,cancion,fecha_lanzamiento,vendida,valor) values(1, 1,"Californication","Around the World",date("1999-01-01"),353,355);

insert into canciones (idcancion, id_art,album,cancion,fecha_lanzamiento,vendida,valor) values(2, 1,"Californication","Scar Tissue",date("1999-01-01"),470,355);

insert into canciones (idcancion, id_art,album,cancion,fecha_lanzamiento,vendida,valor) values(3, 1,"Californication","Otherside",date("1999-01-01"),365,355);

insert into canciones (idcancion, id_art,album,cancion,fecha_lanzamiento,vendida,valor) values(4, 2,"Californication","Californication",date("1999-01-01"),530,355);

insert into canciones (idcancion, id_art,album,cancion,fecha_lanzamiento,vendida,valor) values(5, 3, "Californication","Road Trippin",date("1999-01-01"),370,355);

insert into canciones (idcancion, id_art,album,cancion,fecha_lanzamiento,vendida,valor) values(6, 4, "By the way","By the way",date("2002-01-01"),850,355);

insert into canciones (idcancion, id_art,album,cancion,fecha_lanzamiento,vendida,valor) values(7, 5, "By the way","Dosed",date("2002-01-01"),450,355);

insert into canciones (idcancion, id_art,album,cancion,fecha_lanzamiento,vendida,valor) values(8, 6, "By the way","The Zephyr Song",date("2002-01-01"),890,355);

insert into canciones (idcancion, id_art,album,cancion,fecha_lanzamiento,vendida,valor) values(9, 7, "By the way","Can't Stop",date("2002-01-01"),780,355);

insert into canciones (idcancion, id_art,album,cancion,fecha_lanzamiento,vendida,valor) values(10, 8,"By the way","I Could Die for You",date("2002-01-01"),200,355);

insert into canciones (idcancion, id_art,album,cancion,fecha_lanzamiento,vendida,valor) values(11, 9, "OK Computer","Let Down",date("1997-01-01"),550,420);

insert into canciones (idcancion, id_art,album,cancion,fecha_lanzamiento,vendida,valor) values(12, 10, "OK Computer","Karma Police",date("1997-01-01"),642,420);

insert into canciones (idcancion, id_art,album,cancion,fecha_lanzamiento,vendida,valor) values(13, 2,"OK Computer","Electioneering",date("1997-01-01"),760,420);

insert into canciones (idcancion, id_art,album,cancion,fecha_lanzamiento,vendida,valor) values(14, 2,"OK Computer","No Surprises",date("1997-01-01"),723,420);

insert into canciones (idcancion, id_art,album,cancion,fecha_lanzamiento, vendida,valor) values(15, 2,"OK Computer","Lucky",date("1997-01-01"),723,420);

insert into canciones (idcancion, id_art,album,cancion,fecha_lanzamiento,vendida,valor) values(16, 2,"OK Computer", "thetourist",date("1997-01-01"),872,420);

insert into canciones (idcancion, id_art,album, cancion, fecha_lanzamiento, vendida,valor) values(17, 3,"En Boca de Tantos","En Boca de Tantos",date("2008-01-01"),920,170);

insert into canciones (idcancion, id_art,album,cancion,fecha_lanzamiento,vendida,valor) values(18, 3,"En Boca de Tantos","Suben al cielo – Con Aid",date("2008-01-01"),645,170);

insert into canciones (idcancion, id_art,album, cancion, fecha_lanzamiento, vendida,valor) values(19, 3,"En Boca de Tantos","Aprecia lo que tienes",date("2008-01-01"),890,170);

insert into canciones (idcancion, id_art,album,cancion,fecha_lanzamiento,vendida,valor) values(20, 3,"En Boca de Tantos","Sobre el famoso tema",date("2008-01-01"),1040,170);

insert into canciones (idcancion, id_art,album,cancion,fecha_lanzamiento, vendida,valor) values(21, 3,"En Boca de Tantos","Sin ti",date("2008-01-01"),220,170);

INSERT INTO artistas (id_art, nombre, genero, ano_nac,id_nacion)
VALUES 
(1, 'Red Hot Chili Peppers', 'Funk Rock', 1983, 10),
(2, 'Radiohead', 'Art Rock', 1985, 20),
(3, 'Porta', 'Hip Hop', 1988, 10);

select Artistas.nombre, count(*) as "Canciones artista" from Canciones, Artistas where Artistas.id_art = Canciones.id_art  group by Artistas.nombre, Canciones.id_art; #Muestra cuántas canciones de cada artista hay en la Tabla
select album, count(*) as 'Cantidad de canciones'  from Canciones   group by Album; #Muestra el álbum y cuántas canciones tiene cada álbum
select Artistas.nombre, Canciones.cancion, year(fecha_lanzamiento) as 'Año Lanzamiento'from Canciones, Artistas where Artistas.id_art = Canciones.id_art  group by fecha_lanzamiento,nombre,cancion; #Muestre cuántas canciones fueron lanzadas cada año, y cuáles son esas canciones con el nombre del artista
select Album as 'Album', Max(vendida) as 'Valor Maximo' from Canciones  group by album order by vendida desc; #Muestra lo recaudado por cada álbum, el valor máximo
select Album as 'Album', min(vendida) as 'Valor Minimo', avg(vendida) as 'Valor Promedio' from Canciones group by album order by vendida desc; #Muestra lo recaudado por cada álbum, el mínimo y promedio recaudado
select T1.nombre as 'Nombre de Artista',T2.nom_nacion as 'Nacionalidad Artista',T.cancion as 'Nombre Cancion',T.album as 'Nombre Album' from Canciones T inner join Artistas T1 on T1.id_art = T.id_art inner join Nacionalidad T2 on T2.id_nacion = T1.id_nacion; #Relacionar 3 tablas
select * from Canciones, Artistas where Canciones.id_art = Artistas.id_art and nombre = "Porta"; #Muestra un listado con todos los datos de las canciones del artista "Porta"
select Artistas.nombre as "Nombre Artista",Canciones.cancion as "Nombre Cancion", year(fecha_lanzamiento) as 'Año Lanzamiento' from Canciones, Artistas where Canciones.id_art = Artistas.id_art and year(fecha_lanzamiento) > '2000'; #Muestra el nombre del artista, el nombre de la canción y el año de lanzamiento de todas las canciones que fueron lanzadas después del año 2000