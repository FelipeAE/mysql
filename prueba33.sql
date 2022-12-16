create database AlvarezElgueta;
use AlvarezElgueta;

create table frutas(
idfruta int not null ,
nombrefruta char(15) not null,
color char(15) not null,
temporada int not null,
primary key (idfruta)
);
create table zonas(
idzona int not null ,
detallezona char(20) not null,
primary key (idzona)
);
create table productores(
idprod int not null ,
razon_social char(30) not null,
celular int not null,
direccion char(30) not null,
rut char(12) not null,
primary key (idprod)
);
create table camiones(
patente char(6) not null ,
marca char(15) not null,
annio int not null,
peso int not null,
nroejes int not null,
primary key (patente)
);
create table recibos(
nrorecibo int not null ,
fecha date not null,
idfruta int not null,
idzona int not null,
patente char(6) not null,
kilosentregados int not null,
idprod int not null,
primary key (nrorecibo), 
foreign key (idfruta) references frutas(idfruta), 
foreign key (idzona) references zonas(idzona),
foreign key (patente) references camiones(patente),
foreign key (idprod) references productores(idprod)
);
insert into camiones (patente,marca,annio,peso,nroejes)
values
("jx493z","jmc",2022,5911,4),
("fh4z60","volvo",2013,6000,4),
("mp8440","mack",2014,5878,4);
insert into frutas (idfruta,nombrefruta,color,temporada)
values
(1,"naranja","naranjo",3),
(2,"kiwi","verde",1),
(3,"pera","verde",1);
insert into zonas (idzona,detallezona)
values
(1,"zona centro"),
(2,"zona norte"),
(3,"zona sur");
insert into productores (idprod,razon_social,celular,direccion,rut)
values
(1,"frutas jose ltda",921646614,"los pablos 0523","12365834-9"),
(2,"frutas felipe sa",973640759,"padre las casas 425","19478868-1"),
(3,"frutas camilo",927136644,"lord cochrane 1312","19589979-2");
insert into recibos (nrorecibo,fecha,idfruta,idzona,patente,kilosentregados,idprod)
values
(1,"2022-01-02",1,1,"jx493z",50,1),
(2,"2022-02-03",2,2,"fh4z60",40,2),
(3,"2022-03-04",3,1,"mp8440",45,3);