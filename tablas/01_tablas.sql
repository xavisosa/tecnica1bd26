-- Ejemplo simple de estructura relacional

CREATE TABLE Alumnos (
    Id INT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Edad INT NOT NULL,
    Curso VARCHAR(20) NOT NULL
);

CREATE TABLE Notas (
    Id INT PRIMARY KEY,
    AlumnoId INT NOT NULL,
    Materia VARCHAR(100) NOT NULL,
    Nota DECIMAL(4,2) NOT NULL,
    FOREIGN KEY (AlumnoId) REFERENCES Alumnos(Id)
);
