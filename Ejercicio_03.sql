# Creacion de la tabla según diagrama del ejecicio 3
DROP DATABASE  if EXISTS ud14_ej03;
CREATE DATABASE ud14_ej03;

use ud14_ej03;

CREATE TABLE fabricante(
	codigo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE articulo (
	codigo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio INT NOT NULL,  
    fabricante INT NOT NULL,
    FOREIGN KEY (fabricante) REFERENCES fabricante(codigo)
    ON DELETE CASCADE ON UPDATE CASCADE
);

