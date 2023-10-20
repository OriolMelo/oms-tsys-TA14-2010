CREATE DATABASE ud14_ej07;
use ud14_ej07;

CREATE TABLE despachos(
	numero INT AUTO_INCREMENT PRIMARY KEY,
    capacidad INT NOT NULL
);

CREATE TABLE director(
	dni VARCHAR(8) PRIMARY KEY,
    nombre_apellidos VARCHAR(255) NOT NULL,
    despacho INT NOT NULL,
    dni_jefe VARCHAR(8) NULL,
    FOREIGN KEY (despacho) REFERENCES despachos(numero),
    FOREIGN KEY (dni_jefe) REFERENCES director(dni)
    ON DELETE CASCADE ON UPDATE CASCADE
);
