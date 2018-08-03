create database EscuelaFutbol;
use EscuelaFutbol;

create table Jugadores (
id int auto_increment primary key,
nombre varchar(30) not null,
apellido varchar(30) not null,
edad int(30) not null
);

SET SQL_SAFE_UPDATES = 0;
 
insert into Jugadores(nombre,apellido,edad) values ('Leo','Lopez',20);
insert into Jugadores(nombre,apellido,edad) values ('Augusto','Mera',18);
insert into Jugadores(nombre,apellido,edad) values ('Lucio','Aguirre',24);
insert into Jugadores(nombre,apellido,edad) values ('Leonel','Messi',23);
insert into Jugadores(nombre,apellido,edad) values ('Diego','Maradona',17);

create table Entrenadores (
id int auto_increment primary key,
nombre varchar(30) not null,
apellido varchar(30) not null,
edad int(30) not null,
club varchar(30) not null,
idJugador int not null,
foreign key  (idJugador) references Jugadores(id)
);


insert into Entrenadores(nombre,apellido,edad,club,idJugador) values ('Esteban','Luar',32,'Nacional',5);
insert into Entrenadores(nombre,apellido,edad,club,idJugador) values ('Andres','Guaman',37,'Aucas',4);
insert into Entrenadores(nombre,apellido,edad,club,idJugador) values ('Lucia','Hermosa',40,'San Lorenzo',3);
insert into Entrenadores(nombre,apellido,edad,club,idJugador) values ('Pedro','Navaja',53,'Rosario Central',2);
insert into Entrenadores(nombre,apellido,edad,club,idJugador) values ('Fernando','Mocha',46,'Deportivo Azogues',1);



UPDATE Jugadores 
SET nombre='Marco', 
edad=15 
WHERE id=1;



UPDATE Entrenadores
SET nombre='Alex', 
apellido ='Torres',
edad=37
WHERE nombre='Andres';



UPDATE Jugadores 
SET nombre='Erick', 
apellido='Rosas',
edad=12
WHERE id=5;



UPDATE Entrenadores
SET club='Barcelona FC' 
WHERE nombre='Lucia' and apellido='Hermosa';



UPDATE Entrenadores 
SET nombre='Pedrito', 
apellido='Cortez',
edad=37 
WHERE idJugador=3;



UPDATE Entrenadores 
SET club='Real Madrid'
WHERE nombre='Pedrito';



UPDATE Jugadores 
SET nombre='Cristiano', 
edad=18
WHERE apellido='Messi';



UPDATE Jugadores 
SET nombre='Andres', 
apellido='Estrada' 
WHERE id=2;



UPDATE Jugadores 
SET nombre='Esteban', 
apellido='Rosero' 
WHERE nombre='Erick' and edad=12;



UPDATE Jugadores 
SET nombre='Carlos', 
edad=19 
WHERE apellido='Rosero';

