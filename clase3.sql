create database clase3;
use clase3;
create table estilos(
idestilo int not null  auto_increment, nomestilo char(25), primary key (idestilo)
);
create table autores(
idautor int not null  auto_increment, nomautor char(15) , apeautor char(15) , idnacionalidad int  , primary key (idautor), foreign key (idnacionalidad) references nacionalidad(idnacionalidad)
);
create table museos(
idmuseo int not null  auto_increment, nom_museo char(25)  , direccion char(30)  , superficie_mts2 int  , idciudad int  , primary key (idmuseo), foreign key (idciudad) references ciudades(idciudad)
);
create table nacionalidad(
idnacionalidad int not null  auto_increment, nom_nacionalidad char(20), primary key (idnacionalidad)
);
create table ciudades(
idciudad int not null  auto_increment, nomciudad char(20)  , idpais int  , primary key (idciudad), foreign key (idpais) references paises(idpais)
);
create table paises(
idpais int not null  auto_increment, nompais char(20)  , primary key (idpais)
);
create table obras(
idobra int not null  auto_increment, nomobra char(25)  , aniocreacion int  , alto int  , ancho int  , idautor int  , idestilo int  , idmuseo int  ,
primary key (idobra), foreign key (idautor) references autores(idautor), foreign key (idestilo) references estilos(idestilo), foreign key (idmuseo) references museos(idmuseo)
);
insert into nacionalidad (nom_nacionalidad) values ("Española"), ("Italiana"), ("Mexicana"), ("Chilena");
insert into estilos (nomestilo) values ("Barroco"), ("Renacimiento"), ("PostModerno");
insert into paises (nompais) values ("España"), ("Italia"), ("Mexico"), ("EEUU"), ("Chile"), ("Argentina"), ("Francia"), ("Alemania"), ("Holanda");
insert into autores (nomautor) values ("Leonardo"), ("Vincent"), ("Pablo"), ("Diego"), ("Claude");
insert into autores (apeautor) values ("da Vinci"), ("van Gogh"), ("Picasso"), ("Velazquez"), ("Monet");
insert into obras (nomobra) values ("Mona Lisa"), ("La noche estrellada"), ("Guernica"), ("Las Meninas"), ("Mujer con Sombrilla"), ("La ultima cena");
insert into ciudades (nomciudad) values ("Florencia"), ("Zundert"), ("Malaga"), ("Sevilla"), ("Paris"), ("Temuco"), ("Padre las casas"), ("Victoria");
insert into museos (nom_museo) values ("Louvre"), ("Ermitage"), ("Tate Modern"), ("Metropolitan Museum Art"), ("Museo Old & New Art");
select * from  nacionalidad;
select * from estilos;
select * from paises;
select * from autores;
select * from obras;
select * from ciudades;
select * from museos;