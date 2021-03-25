En este paso, Docker está en funcionamiento. Ya se ha extraído una primera imagen. Puede verificar esto emitiendo el comando:

`docker images`{{execute}}

Junto con otras imágenes, debería mostrarse la imagen de "busybox".

El nombre de una imagen consta de varias partes:
- nombre de la imagen: aquí `busybox`
- etiqueta: especifica una versión especial, por defecto es `latest`

Ahora vamos a extraer una imagen de Nginx de Dockerhub. Emita el comando:

`docker pull nginx`{{execute}}

y vea si la imagen se ha almacenado localmente:

`docker images`{{execute}}

¿Qué sucedió? El demonio de Docker se puso en contacto con el registro predeterminado ([Dockerhub] (https://hub.docker.com)) y comprobó si existe una imagen con el nombre `nginx`.

No especificamos una versión de imagen especial, por lo que Docker solicitó extraer la etiqueta `latest`.