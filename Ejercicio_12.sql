drop database ud14_ej12;
create database ud14_ej12;
use ud14_ej12;

CREATE TABLE profesores (
    dni VARCHAR(9) PRIMARY KEY,
    nombre VARCHAR(40),
    apellido1 VARCHAR(40),
    apellido2 VARCHAR(40),
    direccion VARCHAR(80),
    titulo VARCHAR(40),
    gana DECIMAL(10 , 2 ) NOT NULL,
    UNIQUE (nombre , apellido1 , apellido2)
);

CREATE TABLE cursos (
    codigo INT PRIMARY KEY,
    nombre VARCHAR(40) UNIQUE,
    maximo_alumnos INT,
    fecha_inicio DATE,
    fecha_fin DATE,
    num_horas INT NOT NULL,
    dni_profesor CHAR(9) NOT NULL,
    FOREIGN KEY (dni_profesor) REFERENCES profesores (dni)
    ON DELETE CASCADE ON UPDATE CASCADE,
    CHECK (fecha_inicio < fecha_fin)
);

CREATE TABLE alumnos (
    dni VARCHAR(9) PRIMARY KEY,
    nombre VARCHAR(40),
    apellido1 VARCHAR(40),
    apellido2 VARCHAR(40),
    direccion VARCHAR(80),
    sexo ENUM('M', 'H'),
    fecha_nacimiento DATE,
    curso INT NOT NULL,
    FOREIGN KEY (curso) REFERENCES cursos (codigo)
    ON DELETE CASCADE ON UPDATE CASCADE
);