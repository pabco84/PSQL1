CREATE DATABASE peliculas;

\c peliculas

CREATE TABLE peliculas (
id INT,
pelicula VARCHAR(255),
año_estreno VARCHAR(50),
director VARCHAR(50),
 PRIMARY KEY(id),
);

CREATE TABLE peliculas (
id INT,
actor VARCHAR(50),
FOREIGN KEY(50) REFERENCES peliculas(id)
);

\copy peliculas FROM 'archivos/peliculas.csv' csv header;

-- Obtener el ID de la pelicula titanic
SELECT id FROM peliculas WHERE pelicula = 'Titanic'

-- Listar a todos los actores que aparecen en la película 'Titanic'
SELECT * FROM reparto WHERE id = 2

-- Consultar en cuantas peliculas del top 100 participa Harrison Ford
SELECT * FROM reparto WHERE actor = 'Harrison Ford'

-- Indicar las peliculas estrenadas entre los años 100' y 1999 ordenadas por ascendente
SELECT pelicula FROM peliculas WHERE Año_estreno BETWEEN '1990' AND '1999' ORDER BY pelicula ASC;

-- Hacer que una consulta SQL por longitud de los titulos

SELECT LENGTH(pelicula) AS longitud_titulo FROM peliculas;

-- COnsultar el nombre lmas largo peliculas

SELECT MAX(LENGTH(pelicula)) FROM peliculas;

-- La pregunta del ALEX

SELECT actor , pelicula FROM reparto 
INNER JOIN peliculas
ON reparto.id = peliculas.id
WHERE peliculas.id = 2
LIMIT 1;

SELECT * FROM peliculas;
SELECT * FROM reparto;

