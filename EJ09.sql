CREATE DATABASE EJ9;

USE EJ9;

CREATE TABLE cientificos (
    DNI VARCHAR(8),
    nomApels NVARCHAR(255),
    PRIMARY KEY (DNI)
);

CREATE TABLE proyecto (
    id CHAR(4),
    nombre NVARCHAR(255) NOT NULL,
    horas INT,
    PRIMARY KEY (id)
);

CREATE TABLE asignado_a (
    cientifico VARCHAR(8),
    proyecto CHAR(4),
    PRIMARY KEY (cientifico , proyecto),
    FOREIGN KEY (cientifico)
        REFERENCES cientificos (DNI)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (proyecto)
        REFERENCES proyecto (id)
        ON UPDATE CASCADE ON DELETE CASCADE
)