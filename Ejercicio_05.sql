CREATE DATABASE ud14_ej05;

use ud14_ej05;

CREATE TABLE almacen(
	codigo INT AUTO_INCREMENT PRIMARY KEY,
    lugar VARCHAR(100) NOT NULL,
    capacidad INT NOT NULL
);

CREATE TABLE caja (
	num_referencia CHAR(5) PRIMARY KEY,
    contenido VARCHAR(100) NOT NULL,
    valor INT NOT NULL,
    almacen INT NOT NULL,
    FOREIGN KEY (almacen) REFERENCES almacen(codigo)
    ON DELETE CASCADE ON UPDATE CASCADE
);