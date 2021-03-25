Ahora podemos iniciar / detener contenedores. Como vimos en el último ejemplo, los contenedores detenidos permanecen en un estado `Exited`. Si ya no es necesario mantener el contenedor detenido, podemos retirarlo. Revisemos el contenedor en ejecución actual:

`docker ps`{{execute}}

Ahora paramos nuestro contenedor `webwithport`:

`docker stop webwithport`{{execute}}

Verifique que el contenedor se haya detenido:

`docker ps -a`{{execute}}

La columna `STATUS` debe indicar `Exited`. Para eliminar el contenedor, simplemente emita:

`docker rm webwithport`{{execute}}

Docker imprime el nombre del contenedor eliminado como confirmación, aquí: `webwithport`

Verifique que el contenedor se haya retirado:

`docker ps -a | grep webwithport`{{execute}}

El contenedor se ha eliminado, pero permanece la imagen correspondiente. Docker no elimina una imagen automáticamente, por lo que tenemos que hacerlo manualmente. Primero obtenga la lista de imágenes y filtre el nginx:

`docker images nginx`{{execute}}

Docker debe enumerar al menos dos imágenes:

`REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
 nginx               latest              881bd08c0b08        4 days ago          109MB
 nginx               1.10-alpine         f94d6dd9b576        2 years ago         54MB`

Si no necesitamos la imagen `nginx: 1.10-alpine` se puede eliminar con el siguiente comando:

`docker rmi nginx:1.10-alpine`{{execute}}

La salida debe ser similar a:

`Untagged: nginx:1.10-alpine
Untagged: nginx@sha256:4aacdcf186934dcb02f642579314075910f1855590fd3039d8fa4c9f96e48315
Deleted: sha256:f94d6dd9b5761f33a21bb92848a1f70ea11a1c15f3a142c19a44ea3a4c545a4d
Deleted: sha256:42b8ca8e560a8e61f5d80886c501a2339527fe3b0a41b215b9fe834b62a0ddbb
Deleted: sha256:b583e5d3c46eb2c0c5aa3fc9ad548c777fdb4284e6567811c1fec9861c1a5110
Deleted: sha256:8c2f8031137d73f6900d1d2d1c4a08870424cb1ef5f234fefc4f9ddb746e4142
Deleted: sha256:9f8566ee5135862dd980160c27bd7721448a6f7f385bbb81f7f001f1b78a5fbf`

Vuelva a emitir el comando `docker images` para verificar si la imagen especificada se ha eliminado:

`docker images nginx`{{execute}}`   
