create database clasejoin;
use clasejoin;
create table Estudiantes(
idrut int not null auto_increment, nomest char(20) not null, apepest char(20) not null, apemest char(20) not null, direccion char(20) not null, fechanac date not null, idciu int not null, idcar int not null,
primary key (idrut), foreign key (idciu) references Ciudades (idciu), foreign key (idcar) references Carreras (idcar) 
);
create table Ciudades(
idciu int not null auto_increment, nomciu char(20) not null, primary key (idciu)
);
create table Carreras(
idcar int not null auto_increment, nomcar char(20) not null, primary key (idcar)
);
select nomest from Estudiantes inner join Ciudades on Estudiantes.idciu=Ciudades.idciu;
select direccion from Estudiantes inner join Carreras on Estudiantes.idcar=Carreras.idcar;
select apepest from Estudiantes left join Ciudades on Estudiantes.idciu=Ciudades.idciu;
select apemest from Estudiantes left join Carreras on Estudiantes.idcar=Carreras.idcar;
select fechanac from Estudiantes right join Ciudades on Estudiantes.idciu=Ciudades.idciu;
select fechanac from Estudiantes right join Carreras on Estudiantes.idcar=Carreras.idcar;