CREATE DATABASE ud14_ej11;

use ud14_ej11;

CREATE TABLE facultad(
	codigo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE investigador(
	dni VARCHAR(8) PRIMARY KEY,
    nombre_apellidos VARCHAR(255) NOT NULL,
    facultad INT NOT NULL,
    FOREIGN KEY (facultad) REFERENCES facultad(codigo)
    Odni_profesor CHAR(9) NOT NULL REFERENCES profesores
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE equipo(
	num_serie CHAR(4) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    facultad INT NOT NULL,
    FOREIGN KEY (facultad) REFERENCES facultad(codigo)
    dni_profesor CHAR(9) NOT NULL REFERENCES profesores
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE reserva(
	dni_investigador VARCHAR(8) NOT NULL,
    num_equipo CHAR(4) NOT NULL,
    comienzo DATETIME NOT NULL,
    fin DATETIME NOT NULL,
    PRIMARY KEY (dni_investigador, num_equipo),
    FOREIGN KEY (dni_investigador) REFERENCES investigador(dni),
    FOREIGN KEY (num_equipo) REFERENCES equipo(num_serie)
    dni_profesor CHAR(9) NOT NULL REFERENCES profesores
    ON DELETE CASCADE ON UPDATE CASCADE
);