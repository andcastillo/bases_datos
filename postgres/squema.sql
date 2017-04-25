-- Database: musica

-- DROP DATABASE musica;

CREATE DATABASE musica2
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    TEMPLATE template0;

CREATE TABLE usuario(
	id_usuario SERIAL PRIMARY KEY NOT NULL,
	nombre_usuario VARCHAR(60) UNIQUE,
	password VARCHAR(60) NOT NULL CHECK (length(password) > 3)
);
    
 CREATE TABLE lista (
    id_lista SERIAL PRIMARY KEY NOT NULL,
    nombre_lista VARCHAR(50) NOT NULL,
    likes INT DEFAULT 0 CHECK (likes>=0),
    fk_id_usuario INT NOT NULL REFERENCES usuario (id_usuario) ON DELETE CASCADE
);
 
 CREATE TABLE artista (
	id_artista SERIAL PRIMARY KEY NOT NULL,
	nombre_artista VARCHAR(50) UNIQUE NOT NULL,
	fecha_nacimiento DATE
); 

 CREATE TABLE genero (
    id_genero SERIAL PRIMARY KEY NOT NULL,
   nombre_genero VARCHAR(30) UNIQUE NOT NULL
); 
  
 CREATE TABLE cancion (
    id_cancion SERIAL PRIMARY KEY NOT NULL,
    nombre_cancion VARCHAR(50) NOT NULL,
    duracion INT NOT NULL DEFAULT 0 CHECK (duracion>=0),
    ruta VARCHAR(140) NOT NULL,
    fk_id_artista INT NOT NULL REFERENCES artista (id_artista) ON DELETE CASCADE,
    fk_id_genero INT NOT NULL REFERENCES genero (id_genero)ON DELETE CASCADE
);
 
 CREATE TABLE cancion_lista (
    fk_id_cancion INT NOT NULL REFERENCES cancion(id_cancion) ON DELETE CASCADE,
    fk_id_lista INT NOT NULL REFERENCES lista(id_lista) ON DELETE CASCADE,
    indice INT DEFAULT 0 CHECK (indice>=0)
);
 
 CREATE TABLE album (
    id_album SERIAL PRIMARY KEY NOT NULL,
    nombre_album VARCHAR(50) NOT NULL,
    year INT,
    imagen VARCHAR(120)
);
 
 CREATE TABLE cancion_album (
    fk_id_album INT NOT NULL REFERENCES album (id_album) ON DELETE CASCADE,
    fk_id_cancion INT NOT NULL REFERENCES cancion (id_cancion) ON DELETE CASCADE
);
