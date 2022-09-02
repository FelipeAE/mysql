create database clase3;
use clase3;
create table estilos(
idestilo int not null auto_increment, nomestilo char(25) not null, primary key (idestilo)
);
create table autores(
idautor int not null auto_increment, nomautor char(15) not null, apeautor char(15) not null, idnacionalidad int not null, primary key (idautor), foreign key (idnacionalidad) references nacionalidad(idnacionalidad)
);
create table museos(
idmuseo int not null auto_increment, nom_museo char(25) not null, direccion char(30) not null, superficie_mts2 int not null, idciudad int not null, primary key (idmuseo), foreign key (idciudad) references ciudades(idciudad)
);
create table nacionalidad(
idnacionalidad int not null auto_increment, nom_nacionalidad char(20), primary key (idnacionalidad)
);
create table ciudades(
idciudad int not null auto_increment, nomciudad char(20) not null, idpais int not null, primary key (idciudad), foreign key (idpais) references paises(idpais)
);
create table paises(
idpais int not null auto_increment, nompais char(20) not null, primary key (idpais)
);
create table obras(
idobra int not null auto_increment, nomobra char(25) not null, aniocreacion int not null, alto int not null, ancho int not null, idautor int not null, idestilo int not null, idmuseo int not null,
primary key (idobra), foreign key (idautor) references autores(idautor), foreign key (idestilo) references estilos(idestilo), foreign key (idmuseo) references museos(idmuseo)
);
insert into nacionalidad (nom_nacionalidad) values ("Española");
insert into nacionalidad (nom_nacionalidad) values ("Italiana");
insert into nacionalidad (nom_nacionalidad) values ("Mexicana");
insert into nacionalidad (nom_nacionalidad) values ("Chilena"); 
insert into estilos (nomestilo) values ("Barroco");
insert into estilos (nomestilo) values ("Renacimiento");
insert into estilos (nomestilo) values ("PostModerno");
insert into paises (nompais) values ("España"), ("Italia"), ("Mexico"), ("EEUU"), ("Chile"), ("Argentina"), ("Francia"), ("Alemania"), ("Holanda");
insert into autores (nomautor) values ("Leonardo da Vinci"), ("Vincent van Gogh"), ("Pablo Picasso"), ("Diego Velazquez"), ("Claude Monet");
