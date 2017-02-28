CREATE USER(nombre_usuario, password) VALUES ("trolololol@gmail.com", "123");
CREATE USER(nombre_usuario, password) VALUES ("azulgrana@gmail.com", "x123");
CREATE USER(nombre_usuario, password) VALUES ("tyler.durden@gmail.com", "asdfd");

CREATE lista(nombre_lista, fk_id_usuario) VALUES ("romanticona", 0);
CREATE lista(nombre_lista, fk_id_usuario) VALUES ("pesada", 0);
CREATE lista(nombre_lista, fk_id_usuario) VALUES ("pa' bebe'", 0);

CREATE lista(nombre_lista, fk_id_usuario) VALUES ("rock en español", 1);
CREATE lista(nombre_lista, fk_id_usuario) VALUES ("vallenatibiri", 1);

CREATE lista(nombre_lista, fk_id_usuario) VALUES ("para bailar", 1);

CREATE cancion(nombre_cancion, duracion, ruta, fk_id_artista, fk_id_genero) VALUES();

CREATE genero(nombre_genero) VALUES("clasica");
CREATE genero(nombre_genero) VALUES("rock");
CREATE genero(nombre_genero) VALUES("pop");
CREATE genero(nombre_genero) VALUES("alternativa");
CREATE genero(nombre_genero) VALUES("cantina");
CREATE genero(nombre_genero) VALUES("bailable");
CREATE genero(nombre_genero) VALUES("vallenato");

CREATE artista(nombre_artista, fecha_nacimiento) VALUES ("Gali Galeano", DATE("01-01-1960"));
CREATE artista(nombre_artista, fecha_nacimiento) VALUES ("Vicente Fernandez", DATE("01-02-1955"));
CREATE artista(nombre_artista, fecha_nacimiento) VALUES ("Britney Spears", DATE("05-03-1985"));
CREATE artista(nombre_artista, fecha_nacimiento) VALUES ("Gran Combo", DATE("06-08-1970"));
CREATE artista(nombre_artista, fecha_nacimiento) VALUES ("");
CREATE artista(nombre_artista, fecha_nacimiento) VALUES ("");
CREATE artista(nombre_artista, fecha_nacimiento) VALUES ("");
