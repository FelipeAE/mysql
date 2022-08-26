create database clase2;
show databases;
use clase2;
create table estudiantes(
rut int not null auto_increment,
apep char(15) not null,
apem char(15) not null,
nom char(25) not null,
fechanac date not null,
idcar int not null,
idciu int not null,
primary key (rut),
foreign key (idcar) references carreras(idcar),
foreign key (idciu) references ciudades(idciu)
);
create table ciudades(
idciu int not null auto_increment,
nomciu char(20) not null,
primary key (idciu)
);
create table carreras(
idcar int not null auto_increment,
nomcar char(15) not null,
primary key (idcar)
);
drop table estudiantes;
drop table ciudades;
drop table carreras;
insert into ciudades (nomciu) values ("temuco");
insert into ciudades (nomciu) values ("padre las casas");
insert into ciudades (nomciu) values ("victoria");
insert into carreras (nomcar) values ("informatica");
insert into carreras (nomcar) values ("mecanica");
insert into carreras (nomcar) values ("electronica");
insert into estudiantes (rut,apep,apem,nom,fechanac,idcar,idciu) values ("19478868","alvarez","elgueta","felipe","1996/11/12","1","2");
insert into estudiantes (rut,apep,apem,nom,fechanac,idcar,idciu) values ("19286357","contreras","cuevas","camilo","1996/7/10","1","1");
select * from carreras;
select * from ciudades;
select * from estudiantes;