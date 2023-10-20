drop database biblioteca;

create database biblioteca;

use biblioteca;

CREATE TABLE editorial (
    ClaveEditorial SMALLINT AUTO_INCREMENT,
    Nombre VARCHAR(60),
    Direccion VARCHAR(60),
    Telefono VARCHAR(15),
    PRIMARY KEY (ClaveEditorial)
);

CREATE TABLE libro (
    ClaveLibro INT AUTO_INCREMENT,
    Titulo VARCHAR(60),
    Idioma VARCHAR(15),
    Formato VARCHAR(15),
    ClaveEditorial SMALLINT,
    FOREIGN KEY (ClaveEditorial)
        REFERENCES editorial (ClaveEditorial)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (ClaveLibro)
);

CREATE TABLE tema (
    ClaveTema SMALLINT AUTO_INCREMENT,
    Nombre VARCHAR(40),
    PRIMARY KEY (ClaveTema)
);

CREATE TABLE autor (
    ClaveAutor INT AUTO_INCREMENT,
    Nombre VARCHAR(60),
    PRIMARY KEY (ClaveAutor)
);

CREATE TABLE ejemplar (
    ClaveEjemplar INT AUTO_INCREMENT,
    ClaveLibro INT,
    NumeroOrden SMALLINT,
    Edicion SMALLINT,
    Ubicacion VARCHAR(15),
    Categoria CHAR,
    FOREIGN KEY (ClaveLibro)
        REFERENCES libro (ClaveLibro)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (ClaveEjemplar)
);

CREATE TABLE socio (
    ClaveSocio INT AUTO_INCREMENT,
    Nombre VARCHAR(60),
    Direccion VARCHAR(60),
    Telefono VARCHAR(15),
    Categoria CHAR,
    PRIMARY KEY (ClaveSocio)
);

CREATE TABLE prestamo (
    ClaveSocio INT,
    ClaveEjemplar INT,
    NumeroOrden SMALLINT,
    Fecha_prestamo DATE,
    Fecha_devolucion DATE,
    Notas BLOB,
    FOREIGN KEY (ClaveSocio)
        REFERENCES socio (ClaveSocio)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ClaveEjemplar)
        REFERENCES ejemplar (ClaveEjemplar)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (ClaveSocio , ClaveEjemplar)
);

CREATE TABLE trata_sobre (
    ClaveLibro INT,
    ClaveTema SMALLINT,
    FOREIGN KEY (ClaveLibro)
        REFERENCES libro (ClaveLibro)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ClaveTema)
        REFERENCES tema (ClaveTema)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (ClaveLibro , ClaveTema)
);

CREATE TABLE escrito_por (
    ClaveLibro INT,
    ClaveAutor INT,
    FOREIGN KEY (ClaveLibro)
        REFERENCES libro (ClaveLibro)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ClaveAutor)
        REFERENCES autor (ClaveAutor)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (ClaveLibro , ClaveAutor)
);

