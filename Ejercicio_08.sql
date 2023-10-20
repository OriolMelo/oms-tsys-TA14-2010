CREATE DATABASE EJ8;

USE EJ8;

CREATE TABLE piezas (
    codigo INT AUTO_INCREMENT,
    nombre NVARCHAR(100) NOT NULL,
    PRIMARY KEY (codigo)
);

CREATE TABLE proveedores (
    id CHAR(4),
    nombre NCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE suministra (
    codigoPieza INT,
    idProveedor CHAR(4),
    precio INT,
    PRIMARY KEY (codigoPieza , idProveedor),
    FOREIGN KEY (codigoPieza)
        REFERENCES piezas (codigo)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (idProveedor)
        REFERENCES proveedores (id)
        ON UPDATE CASCADE ON DELETE CASCADE
);
