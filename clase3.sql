create database clase3;
use clase3;
create table estilos(
idestilo int not null auto_increment, nomestilo char(25) , primary key (idestilo)
);
create table autores(
idautor int not null auto_increment, nomautor char(15) , apeautor char(15) , idnacionalidad int , primary key (idautor), foreign key (idnacionalidad) references nacionalidad(idnacionalidad)
);
create table museos(
idmuseo int not null auto_increment, nom_museo char(25) , direccion char(30) , superficie_mts2 int , idciudad int , primary key (idmuseo), foreign key (idciudad) references ciudades(idciudad)
);
create table nacionalidad(
idnacionalidad int not null auto_increment, nom_nacionalidad char(20), primary key (idnacionalidad)
);
create table ciudades(
idciudad int not null auto_increment, nomciudad char(20) , idpais int , primary key (idciudad), foreign key (idpais) references paises(idpais)
);
create table paises(
idpais int not null auto_increment, nompais char(20) , primary key (idpais)
);
create table obras(
idobra int not null auto_increment, nomobra char(25) , aniocreacion int , alto int , ancho int , idautor int , idestilo int , idmuseo int ,
primary key (idobra), foreign key (idautor) references autores(idautor), foreign key (idestilo) references estilos(idestilo), foreign key (idmuseo) references museos(idmuseo)
);
insert into nacionalidad (nom_nacionalidad) values ("Española"), ("Italiana"), ("Mexicana"), ("Chilena");
insert into estilos (nomestilo) values ("Barroco"), ("Renacimiento"), ("PostModerno");
insert into paises (nompais) values ("España"), ("Italia"), ("Mexico"), ("EEUU"), ("Chile"), ("Argentina"), ("Francia"), ("Alemania"), ("Holanda");
insert into autores (nomautor,apeautor) values ("Leonardo"," da Vinci"), ("Vincent"," van Gogh"), ("Pablo"," Picasso"), ("Diego"," Velazquez"), ("Claude"," Monet");
insert into obras (nomobra,idautor) values ("La Gioconda",1), ("La ultima cena",1), ("La noche estrellada",2), ("Guernica",3), ("Las meninas",4), ("Mujer con sombrilla",5);
insert into ciudades (nomciudad,idpais) values ("Madrid",1), ("Barcelona",1), ("Roma",2), ("Venecia",2), ("Guadalajara",3), ("Monterrey",3), ("Nuevo York",4), ("Temuco",5);
insert into museos (nom_museo, direccion) values ("Louvre","Paris"), ("Ermitage","San Petersburgo"), ("Tate Modern","Londres"), ("Museos Vaticanos","Roma"), ("Museo Van Gogh","Amsterdam");
select * from estilos;
select * from autores;
select * from museos;
select * from nacionalidad;
select * from ciudades;
select * from paises;
select * from obras;
insert into nacionalidad (nom_nacionalidad) values ("Francesa"),("Neerlandes");
update autores set idnacionalidad = 2 where idautor = 1;
update autores set idnacionalidad = 6 where idautor = 2;
update autores set idnacionalidad = 1 where idautor = 3;
update autores set idnacionalidad = 1 where idautor = 4;
update autores set idnacionalidad = 5 where idautor = 5;
