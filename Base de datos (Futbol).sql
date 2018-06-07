-- codigo para crear las tablas con respecto al futbol --

CREATE DATABASE futbol;
USE futbol;
 
CREATE TABLE equipos (
Id_equipo INT NOT NULL AUTO_INCREMENT,
Nombre_equipo VARCHAR(45)NOT NULL,
Numero_jugadores INT(5)NOT NULL, 
Fecha_fundacion DATE, 
Jugador_estrella VARCHAR(45)NOT NULL,
PRIMARY KEY(Id_equipo)
);
 
 
CREATE TABLE jugadores (
Id_jugador INT NOT NULL AUTO_INCREMENT,
Nombre_jugador VARCHAR(45)NOT NULL,
Edad INT(5)NOT NULL, 
Fecha_nacimiento DATE, 
Equipo VARCHAR(45)NOT NULL,
PRIMARY KEY(Id_jugador)
);
 
 
CREATE TABLE estadios (
Id_estadios INT NOT NULL AUTO_INCREMENT,
Nombre_estadio VARCHAR(45)NOT NULL,
Numero_equipo INT(5)NOT NULL, 
Fecha_fundacion DATE, 
Fundador_estadio VARCHAR(45)NOT NULL,
PRIMARY KEY(Id_estadios)
);
 
 
CREATE TABLE entrenadores (
Id_entrenadores INT NOT NULL AUTO_INCREMENT,
Nombre_entrenador VARCHAR(45)NOT NULL,
Edad INT(5)NOT NULL, 
Numero_equipos INT(5)NOT NULL, 
Equipo_actual VARCHAR(45)NOT NULL,
PRIMARY KEY(Id_entrenadores)
);
 
 
 
 
 
CREATE TABLE ganadores_campeonato (
Id_ganador INT NOT NULL AUTO_INCREMENT,
Nombre_equipo VARCHAR(45)NOT NULL,
Año_gano INT(5)NOT NULL, 
Rival_final VARCHAR (45)NOT NULL,
Goles_totales INT(5)NOT NULL,
PRIMARY KEY(Id_ganador)
);

-- codigo para insertar datos a las tablas --


USE futbol;
select * from equipos;
INSERT INTO equipos VALUES (1, 'Manchester', '24', '1987/06/07', 'Zlatan');

INSERT INTO equipos VALUES (2, 'Barcelona', '32', '1923/09/02', 'Messi');


INSERT INTO jugadores VALUES (1, 'Zlatan', '33', '1987/06/07', 'Paris Saint German');

INSERT INTO jugadores VALUES (2, 'Messi', '30', '1987/06/07', 'Barcelona');



INSERT INTO estadios VALUES (1, 'Old Trandford', '7', '1987/06/07', ' ALEXANDRE');

INSERT INTO estadios VALUES (2, 'Cap Now', '12', '1987/06/07', ' ARTHUR');


INSERT INTO entrenadores VALUES (1 , 'Mourinho', '42', '12', ' Manchester United');

INSERT INTO entrenadores VALUES (2, 'Guardiola', '45', '15', ' Manchester City');



INSERT INTO ganadores_campeonato VALUES (1, 'Manchester United','1995', 'Chelsea', '3');
INSERT INTO ganadores_campeonato VALUES (2, 'Barcelona', '1989', 'Real Madrid', '5');

