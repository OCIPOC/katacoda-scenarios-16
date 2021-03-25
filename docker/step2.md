Usar las últimas y mejores versiones está bien, pero en la práctica es posible que tenga que usar una versión específica de la aplicación. Aquí entran en juego las etiquetas de imagen.
Emita el siguiente comando para extraer la versión 1.10 de Nginx:

`docker pull nginx:1.10-alpine`{{execute}}

Verifique que la imagen se haya almacenado localmente:

`docker images`{{execute}}

¿Qué sucedió? El demonio de Docker se puso en contacto con el registro predeterminado ([Dockerhub] (https://hub.docker.com)) y comprobó si existe una imagen con el nombre `nginx` y la etiqueta` 1.10-alpine`.

Tenga en cuenta la extensión `-alpine`: la mayoría de las imágenes especifican la variante del sistema operativo de la imagen base en sus etiquetas. Aquí, Nginx se ejecuta en imágenes de Alpine Linux. Cubriremos las imágenes de la base del sistema operativo más adelante.