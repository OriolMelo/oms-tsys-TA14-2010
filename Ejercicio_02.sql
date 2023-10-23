# Creacion de la tabla según diagrama del ejecicio 2

drop database  if EXISTS biblioteca;

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

# Inserciones
INSERT INTO editorial (Nombre, Direccion, Telefono) VALUES
('Editorial 1', 'Calle Editorial 1', '123-456-7890'),
('Editorial 2', 'Calle Editorial 2', '987-654-3210'),
('Editorial 3', 'Calle Editorial 3', '555-555-5555'),
('Editorial 4', 'Calle Editorial 4', '999-888-7777'),
('Editorial 5', 'Calle Editorial 5', '111-222-3333'),
('Editorial 6', 'Calle Editorial 6', '777-888-9999'),
('Editorial 7', 'Calle Editorial 7', '444-555-6666'),
('Editorial 8', 'Calle Editorial 8', '888-777-6666'),
('Editorial 9', 'Calle Editorial 9', '222-333-4444'),
('Editorial 10', 'Calle Editorial 10', '123-987-6543');


INSERT INTO libro (Titulo, Idioma, Formato, ClaveEditorial) VALUES
('Libro 1', 'Español', 'Papel', 1),
('Libro 2', 'Inglés', 'Digital', 2),
('Libro 3', 'Francés', 'Papel', 3),
('Libro 4', 'Alemán', 'Digital', 4),
('Libro 5', 'Italiano', 'Papel', 5),
('Libro 6', 'Español', 'Digital', 6),
('Libro 7', 'Inglés', 'Papel', 7),
('Libro 8', 'Francés', 'Digital', 8),
('Libro 9', 'Alemán', 'Papel', 9),
('Libro 10', 'Italiano', 'Digital', 10);


INSERT INTO tema (Nombre) VALUES
('Tema 1'),
('Tema 2'),
('Tema 3'),
('Tema 4'),
('Tema 5'),
('Tema 6'),
('Tema 7'),
('Tema 8'),
('Tema 9'),
('Tema 10');


INSERT INTO autor (Nombre) VALUES
('Carlos Ruiz Zafón'),
('Javier Marías'),
('Arturo Pérez-Reverte'),
('María Dueñas'),
('Almudena Grandes'),
('Dolores Redondo'),
('Juan José Millás'),
('Julia de Castro'),
('Elvira Lindo'),
('Ray Loriga');


INSERT INTO ejemplar (ClaveLibro, NumeroOrden, Edicion, Ubicacion, Categoria) VALUES
(1, 1, 1, 'Estante 1', 'A'),
(2, 2, 1, 'Estante 2', 'B'),
(3, 3, 2, 'Estante 3', 'A'),
(4, 4, 2, 'Estante 4', 'C'),
(5, 5, 3, 'Estante 5', 'B'),
(6, 6, 3, 'Estante 6', 'A'),
(7, 7, 4, 'Estante 7', 'C'),
(8, 8, 4, 'Estante 8', 'B'),
(9, 9, 5, 'Estante 9', 'A'),
(10, 10, 5, 'Estante 10', 'C');


INSERT INTO socio (Nombre, Direccion, Telefono, Categoria) VALUES
('Socio 1', 'Calle Socio 1', '123-456-7890', 'A'),
('Socio 2', 'Calle Socio 2', '987-654-3210', 'B'),
('Socio 3', 'Calle Socio 3', '555-555-5555', 'A'),
('Socio 4', 'Calle Socio 4', '999-888-7777', 'C'),
('Socio 5', 'Calle Socio 5', '111-222-3333', 'B'),
('Socio 6', 'Calle Socio 6', '777-888-9999', 'A'),
('Socio 7', 'Calle Socio 7', '444-555-6666', 'B'),
('Socio 8', 'Calle Socio 8', '888-777-6666', 'C'),
('Socio 9', 'Calle Socio 9', '222-333-4444', 'A'),
('Socio 10', 'Calle Socio 10', '123-987-6543', 'B');


# Sentacias de testeo 
SELECT * FROM libro WHERE Idioma = 'Español';
SELECT * FROM socio WHERE Categoria = 'A';

UPDATE socio
SET Nombre = 'Nuevo Nombre', Direccion = 'Nueva Dirección'
WHERE ClaveSocio = 1;

UPDATE editorial
SET Nombre = 'Nueva Editorial'
WHERE ClaveEditorial = 1;

DELETE FROM libro WHERE ClaveLibro = 1;

DELETE FROM tema WHERE ClaveTema = 2;
