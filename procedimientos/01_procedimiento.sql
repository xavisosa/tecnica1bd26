-- Ejemplo simple de procedimiento (MySQL/MariaDB)
-- Devuelve alumnos que superan una nota minima en una materia

DELIMITER $$

CREATE PROCEDURE ObtenerAprobados (
    IN p_materia VARCHAR(100),
    IN p_nota_minima DECIMAL(4,2)
)
BEGIN
    SELECT a.Id, a.Nombre, n.Materia, n.Nota
    FROM Alumnos a
    JOIN Notas n ON n.AlumnoId = a.Id
    WHERE n.Materia = p_materia
      AND n.Nota >= p_nota_minima
    ORDER BY n.Nota DESC;
END $$

DELIMITER ;

-- Ejemplo de uso:
-- CALL ObtenerAprobados('Base de Datos', 8.00);
