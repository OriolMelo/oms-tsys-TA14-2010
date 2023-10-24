# Creacion de la tabla según diagrama del ejecicio 1

CREATE DATABASE ud14_ej01;

use ud14_ej01;

CREATE TABLE estacion(
	identificador INT AUTO_INCREMENT PRIMARY KEY,
    latitud VARCHAR(12) NOT NULL,
    longitud VARCHAR(12) NOT NULL,
    altitud VARCHAR(7) NOT NULL 
);


CREATE TABLE muestra (
	identificador_estacion INT PRIMARY KEY,
	fecha DATE NOT NULL,
    temperatura_minima VARCHAR(5) NOT NULL, 
    temperatura_maxima VARCHAR(5) NOT NULL, 
    precipitaciones VARCHAR(10),
	humedad_minima VARCHAR(5) NOT NULL,
    humedad_maxima VARCHAR(5) NOT NULL, 
    velocidad_viento_minima VARCHAR(8) NOT NULL, 
    velocidad_viento_maxima VARCHAR(8) NOT NULL,
    FOREIGN KEY (identificador_estacion) REFERENCES estacion(identificador)  ON DELETE CASCADE ON UPDATE CASCADE
);


