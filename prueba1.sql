create database AlvarezFelipe;
use AlvarezFelipe;
create table AFP(
idafp int not null auto_increment, nomafp char(20) not null, valor int not null, primary key (idafp)
);
create table Sectores(
idsector int not null auto_increment, nomsector char(15) not null, primary key (idsector)
);
create table Isapres(
idisapre int not null auto_increment, nomisapre char(15) not null, primary key (idisapre)
);
create table Regiones(
idreg int not null auto_increment, nomreg char(20) not null, primary key (idreg)
);
create table Ciudades(
idciudad int not null auto_increment, nomciudad char(15) not null, idreg int not null, primary key (idciudad), foreign key (idreg) references Regiones(idreg)
);
create table Empleados(
rut int not null auto_increment, apepat char(15) not null, apemat char(15) not null, nombres char(20) not null, sueldo int not null, fecha_nacim date not null, direccion char(30) not null, idciudad int not null, 
idsector int not null, idafp int not null, idisapre int not null, primary key (rut), 
foreign key (idciudad) references Ciudades(idciudad), foreign key (idsector) references Sectores(idsector), foreign key (idafp) references AFP(idafp), foreign key (idisapre) references Isapres(idisapre)
);
insert into AFP(nomafp,valor) values ("Capital",10000),("Cuprum",20000),("Habitat",30000);
insert into Sectores(nomsector) values ("Administracion"),("Construccion"),("Seguridad");
insert into Isapres(nomisapre) values ("Cruz Blanca"),("Consalud"),("Colmena");
insert into Regiones(nomreg) values ("Arica"),("Metropolitana"),("Araucania");
insert into Ciudades(nomciudad,idreg) values ("Putre",1),("Santiago",2),("Temuco",3);
insert into Empleados(apepat,apemat,nombres,sueldo,fecha_nacim,direccion,idciudad,idsector,idafp,idisapre) values ("Alvarez","Elgueta","Felipe Ignacio",1000000,"1996-11-12","Maquehue 425",3,3,2,3),(),();
select * from Regiones;