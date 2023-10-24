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

# Inserciones 
INSERT INTO departamentos (codigo, nombre, presupuesto) VALUES
(1, 'Departamento 1', 100000),
(2, 'Departamento 2', 75000),
(3, 'Departamento 3', 125000),
(4, 'Departamento 4', 90000),
(5, 'Departamento 5', 80000),
(6, 'Departamento 6', 110000),
(7, 'Departamento 7', 95000),
(8, 'Departamento 8', 120000),
(9, 'Departamento 9', 85000),
(10, 'Departamento 10', 135000);


INSERT INTO empleados (dni, nombre, apellidos, departamento) VALUES
('12345678', 'Empleado 1', 'Apellido 1', 1),
('23456789', 'Empleado 2', 'Apellido 2', 2),
('34567890', 'Empleado 3', 'Apellido 3', 3),
('45678901', 'Empleado 4', 'Apellido 4', 4),
('56789012', 'Empleado 5', 'Apellido 5', 5),
('67890123', 'Empleado 6', 'Apellido 6', 6),
('78901234', 'Empleado 7', 'Apellido 7', 7),
('89012345', 'Empleado 8', 'Apellido 8', 8),
('90123456', 'Empleado 9', 'Apellido 9', 9),
('01234567', 'Empleado 10', 'Apellido 10', 10);


# Sentacias de testeo 
SELECT * FROM empleados WHERE departamento = 3;
SELECT * FROM departamentos WHERE nombre = 'Departamento 5';
UPDATE departamentos SET presupuesto = 80000 WHERE codigo = 2;
UPDATE departamentos SET presupuesto = 80000 WHERE codigo = 2;

DELETE FROM departamentos WHERE codigo = 7;
DELETE FROM empleados WHERE dni = '23456789';
