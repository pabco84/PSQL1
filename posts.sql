CREATE DATABASE posts;

c\ posts;

CREATE TABLE post (
    id SERIAL,
    nombre VARCHAR(25),
    contenido VARCHAR (25),
    descripcion VARCHAR
);
INSERT INTO post (id, nombre, fecha_de_creacion, contenido,descripcion) VALUES (1,'Pamela', '2021-08-12 01:01', 'primer post', descrpcion post') ;
INSERT INTO post (id, nombre, fecha_de_creacion, contenido,descripcion) VALUES (2,'Pamela', '2021-08-12 01:02', 'segundo post', descrpcion post') ;
INSERT INTO post (id, nombre, fecha_de_creacion, contenido,descripcion) VALUES (3,'Carlos', '2021-08-12 01:03', 'primer post', descrpcion post') ;



ALTER TABLE post ADD titulo VARCHAR(25)
INSERT INTO post (id, nombre, fecha_de_creacion, contenido,descripcion) VALUES (3,'Carlos', '2021-08-12 01:01', 'primer post', descrpcion post') ;
UPDATE post SET titulo = 'titulo1' WHERE id =1;
UPDATE post SET titulo = 'titulo2' WHERE id =2;
UPDATE post SET titulo = 'titulo3' WHERE id =3;
INSERT INTO post (id, nombre, fecha_de_creacion, contenido,descripcion,titulo) VALUES (4,'Pedro', '2021-08-12 01:02', 'primer post', descrpcion post', 'titulosss') ;
INSERT INTO post (id, nombre, fecha_de_creacion, contenido,descripcion,titulo) VALUES (5,'Pedro', '2021-08-12 01:03', 'segundo post', descrpcion post', 'titulosss2') ;
DELETE FROM post WHERE id = 3;

parte 2

CREATE TABLE comentarios (id SERIAL UNIQUE, post_id INT, fecha DATE, hora_de_creacion TIME, contenido VARCHAR(25), PRIMARY KEY (id), FORGEIGN KEY(post_id) REFERENCES post(id));
INSERT INTO comentarios (post_id, fecha, hora, contenido) VALUES (1, current_date, current_time, 'el re contendio Pamela') ;
INSERT INTO comentarios (post_id, fecha, hora, contenido) VALUES (2, current_date, current_time, 'el re contendio Pamela') ;

INSERT INTO post (post_id, fecha, hora, contenido) VALUES (6, current_date, current_time, 'el contendio') ;
INSERT INTO comentarios (nombre, fecha_de_creacion, contenido,descripcion,titulo) VALUES ('Margarita', '2021-08-12 01:06', 'primer post', descrpcion post', 'titulosss3') ;

