create database ud14_ej06;
use ud14_ej06;

CREATE TABLE peliculas (
    codigo INT PRIMARY KEY,
    nombre NVARCHAR(100) NOT NULL,
    calificacion_edad INT NOT NULL
);

CREATE TABLE salas (
    codigo INT PRIMARY KEY,
    nombre NVARCHAR(100),
    pelicula INT REFERENCES peliculas
);