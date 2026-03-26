-- Ejemplo simple de carga de datos

INSERT INTO Alumnos (Id, Nombre, Edad, Curso) VALUES
(1, 'Ana Lopez', 16, '5A'),
(2, 'Juan Perez', 17, '5A'),
(3, 'Luz Gomez', 16, '5B');

INSERT INTO Notas (Id, AlumnoId, Materia, Nota) VALUES
(1, 1, 'Base de Datos', 8.50),
(2, 2, 'Base de Datos', 7.00),
(3, 3, 'Base de Datos', 9.25);
