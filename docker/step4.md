En el último paso, acabamos de iniciar un contenedor sin ninguna personalización. Echemos un vistazo a las opciones de `docker run`. Al principio, detendremos el contenedor en ejecución actual usando el siguiente comando:

`docker stop <CONTAINER ID>`

El `CONTAINER ID` es generado por Docker dinámicamente, por lo que la administración automatizada es difícil. Para obtener el ID del contenedor en ejecución tenemos que hacer algo de "magia" de shell:

`docker stop $(docker ps | grep nginx | awk '{print $1}')`{{execute}}`

Parece complicado, ¿eh? Nuestro contenedor Nginx está detenido, por lo que debemos usar la marca `-a` (todos) para incluir el contenedor detenido en la salida:

`docker ps -a`{{execute}}

Tenga en cuenta el estado `Exited`.

Para facilitar el trabajo con contenedores, Docker nos proporciona la bandera `--name`. Para iniciar un contenedor con un nombre definido por el usuario `web`, emita:

`docker run --name web -d nginx`{{execute}}

Comprobamos el estado del contenedor mediante el comando ya conocido:

`docker ps`{{execute}}

A diferencia del ejemplo anterior, la columna `NAMES` ahora contiene el nombre definido por el usuario` web`.

En la columna `PORTS` vemos que el Nginx que se ejecuta dentro del contenedor expone un puerto 80 para el acceso HTTP. Para acceder al puerto desde el exterior del contenedor, necesitamos agregar más opciones al comando `docker run`. Detenga el contenedor de nuevo:

`docker stop web`{{execute}}

El contenedor de Nginx está detenido, verifíquelo emitiendo:

`docker ps -a`{{execute}}

Ahora vuelva a ejecutar el contenedor, asigne un nuevo nombre y un puerto para el acceso externo:

`docker run --name webwithport -d -p 80:80 nginx`{{execute}}

Verifique si se puede acceder a Nginx desde el exterior:

https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/