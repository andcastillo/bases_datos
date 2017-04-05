# Curso de bases de datos
# Universidad del Valle

## Crear imagen de Docker con nuestra DB

Para crear la imagen que contiene los datos, deben cambiarse a la carpeta *postgres

``` bash
cd postgres
sudo docker build -t mydockerusername/postgres_db_musica .
```
Para conectarse sobre la DB deben primero arrancar el contenedor desde la imagen que acabamos de crear:

``` bash
docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -d mydockerusername/postgres_db_musica
```
y conectarse desde un cliente psql:

``` bash
docker run -it --rm --link some-postgres:postgres mydockerusername/postgres_db_musica psql -h postgres -U postgres
```

```sql
\l; lista las bases de datos
\c musica; Cambia a la base de datos musica
\dt; lista de relaciones
\d tabla; Describe la relación tabla
```

## Crear imágenes en docker

http://koldohernandez.com/blog/como-crear-imagenes-y-subirlas-a-docker-hub/

