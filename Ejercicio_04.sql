# Creacion de la tabla según diagrama del ejecicio 4

DROP DATABASE IF EXISTS ud14_ej04;
create database ud14_ej04;
use ud14_ej04;

CREATE TABLE departamentos (
    codigo INT PRIMARY KEY,
    nombre NVARCHAR(100) NOT NULL,
    presupuesto INT NOT NULL
);

CREATE TABLE empleados (
    dni VARCHAR(8) PRIMARY KEY,
    nombre NVARCHAR(100) NOT NULL,
    apellidos NVARCHAR(255) NOT NULL,
    departamento INT NOT NULL, 
    FOREIGN KEY (departamento) REFERENCES departamentos(codigo),
    UNIQUE ( nombre , apellidos , departamento )
);


