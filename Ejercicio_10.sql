create database ud14_ej10;
use ud14_ej10;

CREATE TABLE productos (
    codigo INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio INT NOT NULL
);

CREATE TABLE cajeros (
    codigo INT PRIMARY KEY,
    nom_apels VARCHAR(255) NOT NULL
);

CREATE TABLE maquinas_registradoras (
    codigo INT PRIMARY KEY,
    piso INT NOT NULL
);

CREATE TABLE venta (
    cajero INT REFERENCES cajeros,
    maquina INT REFERENCES maquinas_registradoras,
    producto INT REFERENCES productos,
    PRIMARY KEY (cajero , maquina , producto)
    ON DELETE CASCADE ON UPDATE CASCADE
);
