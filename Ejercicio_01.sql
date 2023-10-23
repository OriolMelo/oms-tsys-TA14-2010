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


# Inserciones 
INSERT INTO estacion (latitud, longitud, altitud)
VALUES
    ('40.7128', '-74.0060', '10'),
    ('34.0522', '-118.2437', '50'),
    ('51.5074', '0.1278', '30'),
    ('48.8566', '2.3522', '110'),
    ('35.682839', '139.759455', '5'),
    ('41.9028', '12.4964', '70'),
    ('25.276987', '51.520014', '20'),
    ('19.4326', '-99.1332', '15'),
    ('22.3193', '114.1694', '25'),
    ('37.7749', '-122.4194', '45');

INSERT INTO muestra (identificador_estacion, fecha, temperatura_minima, temperatura_maxima, precipitaciones, humedad_minima, humedad_maxima, velocidad_viento_minima, velocidad_viento_maxima)
VALUES
    (1, '2023-10-01', '10.5', '20.5', '5.0', '45.5', '85.5', '3.5', '15.5'),
    (2, '2023-10-02', '12.0', '25.0', '2.5', '50.0', '90.0', '4.0', '18.0'),
    (3, '2023-10-03', '8.5', '18.5', '1.0', '40.0', '80.0', '3.0', '12.0'),
    (4, '2023-10-04', '11.0', '21.0', '3.5', '47.0', '88.0', '3.7', '16.0'),
    (5, '2023-10-05', '15.5', '30.5', '0.0', '55.0', '95.0', '5.5', '20.0'),
    (6, '2023-10-06', '14.0', '28.0', '4.0', '52.0', '92.0', '4.5', '19.0'),
    (7, '2023-10-07', '20.0', '35.0', '8.0', '60.0', '100.0', '6.0', '25.0'),
    (8, '2023-10-08', '17.0', '31.0', '3.0', '57.0', '98.0', '5.0', '22.0'),
    (9, '2023-10-09', '19.5', '33.5', '2.5', '62.5', '96.5', '5.5', '24.5'),
    (10, '2023-10-10', '18.0', '32.0', '5.5', '60.0', '94.0', '5.2', '23.0');



# Sentacias de testeo 
SELECT * FROM estacion WHERE altitud > 20;
SELECT * FROM estacion WHERE identificador = 3;

UPDATE estacion
SET altitud = '120'
WHERE identificador = 4;


UPDATE estacion
SET latitud = '37.7749', longitud = '-122.4194'
WHERE identificador = 2;

DELETE FROM estacion WHERE identificador = 7;
DELETE FROM estacion WHERE altitud = '15';

