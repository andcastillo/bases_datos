-- Database: musica

-- DROP DATABASE musica;

CREATE DATABASE musica
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    TEMPLATE template0;

\c musica

CREATE TABLE usuario(
	Id_usuario SERIAL PRIMARY KEY,
	nombre_usuario VARCHAR(60),
password VARCHAR(60)
);
    
 CREATE TABLE lista (
    id_lista SERIAL PRIMARY KEY,
    nombre_lista VARCHAR(50),
    likes INT DEFAULT 0,
    fk_id_usuario INT NOT NULL
);
 
    
 CREATE TABLE cancion (
    id_cancion SERIAL PRIMARY KEY,
    nombre_cancion VARCHAR(50),
    duracion INT NOT NULL DEFAULT 0,
    ruta VARCHAR(120),
    fk_id_artista INT NOT NULL,
    fk_id_genero INT NOT NULL
);
 
 CREATE TABLE cancion_lista (
    fk_id_cancion INT NOT NULL,
    fk_id_lista INT NOT NULL,
    indice INT DEFAULT 0
);
 

 CREATE TABLE album (
    id_album SERIAL PRIMARY KEY,
    nombre_album VARCHAR(50) NOT NULL,
    year INT,
    imagen VARCHAR(120)
);
 
 
CREATE TABLE cancion_album (
    fk_id_album INT NOT NULL,
    fk_id_cancion INT NOT NULL
);
 
 CREATE TABLE genero (
    id_genero SERIAL PRIMARY KEY,
   nombre_genero VARCHAR(30) NOT NULL
);
 
 CREATE TABLE artista (
	id_artista SERIAL PRIMARY KEY,
	nombre_artista VARCHAR(50) NOT NULL,
	fecha_nacimiento DATE
);
