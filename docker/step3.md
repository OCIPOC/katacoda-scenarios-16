Ahora ejecutamos nuestro primer contenedor Docker. El comando utilizado es `docker run`. El primer ejemplo es muy simple y conocido: "Hello World":

`docker run hello-world`{{execute}}

El contenedor se inicia, imprime un mensaje y sale.

Tenga en cuenta que el comando `run` comprueba automáticamente si la imagen que se va a ejecutar ya se ha extraído. En nuestro caso no sacamos las imágenes `hello-world` aún, por lo que se activará una extracción de imagen.

Como se sugiere en el resultado del ejemplo "Hola, mundo", probamos con un ejemplo más ambicioso. De vuelta a nuestra imagen de Nginx extraída en los pasos antes de que queramos iniciar un contenedor desde la imagen de Nginx `latest`:

`docker run nginx`{{execute}}

Parece que no pasa nada, no hay salida en absoluto. Abortar el comando `run` presionando <kbd>⌃CTRL</kbd>-<kbd>c</kbd> 

¿Qué sucedió? Docker daemon creó una base de contenedor en el parámetro que especificamos en el comando `docker run`. Solo especificamos el nombre de la imagen, por lo que el contenedor se ha iniciado en primer plano (comportamiento predeterminado).

Para iniciar el contenedor en modo `detached` agregue la bandera` -d`:

`docker run -d nginx`{{execute}}

El contenedor se inicia, daemon de la ventana acoplable devuelve un hash único. Podemos verificar que el contenedor se ha iniciado con el comando `docker ps`:

`docker ps`{{execute}}

Este comando proporciona información sobre el estado de los contenedores en ejecución, como:
- `CONTAINER ID`: Un ID de contenedor único (generado)
- `IMAGE`: Nombre de la imagen (y etiqueta)
- `COMMAND`: Proceso iniciado en el contenedor (cubriremos esto más adelante)
- `CREATED`: Cuando se crea
- `STATUS`: Estado actual
- `PORTS`: Puertos expuestos (cubriremos esto en el próximo ejercicio)
- `NAMES`: Nombre de alias generado (cubriremos esto en el próximo ejercicio)

Tenga en cuenta que el `CONTAINER ID` coincidir con los primeros 12 caracteres del valor hash devuelto después `docker run ...`.