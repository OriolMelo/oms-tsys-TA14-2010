# Creacion de la tabla según diagrama del ejecicio 3
DROP DATABASE  if EXISTS ud14_ej03;
CREATE DATABASE ud14_ej03;

use ud14_ej03;

CREATE TABLE fabricante(
	codigo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE articulo (
	codigo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio INT NOT NULL,  
    fabricante INT NOT NULL,
    FOREIGN KEY (fabricante) REFERENCES fabricante(codigo)
    ON DELETE CASCADE ON UPDATE CASCADE
);

# Inserciones 
INSERT INTO fabricante (nombre) VALUES
('Fabricante 1'),
('Fabricante 2'),
('Fabricante 3'),
('Fabricante 4'),
('Fabricante 5'),
('Fabricante 6'),
('Fabricante 7'),
('Fabricante 8'),
('Fabricante 9'),
('Fabricante 10');


INSERT INTO articulo (nombre, precio, fabricante) VALUES
('Articulo 1', 100, 1),
('Articulo 2', 150, 2),
('Articulo 3', 200, 3),
('Articulo 4', 120, 4),
('Articulo 5', 90, 5),
('Articulo 6', 180, 6),
('Articulo 7', 220, 7),
('Articulo 8', 130, 8),
('Articulo 9', 110, 9),
('Articulo 10', 250, 10);


# Sentacias de testeo 
SELECT * FROM fabricante WHERE nombre LIKE '%Electrónica%';
SELECT * FROM articulo WHERE precio > 150;
UPDATE fabricante SET nombre = 'Nuevo Nombre' WHERE codigo = 1;
UPDATE articulo SET precio = 200 WHERE codigo = 2;
DELETE FROM fabricante WHERE codigo = 3;
DELETE FROM articulo WHERE codigo = 4;
