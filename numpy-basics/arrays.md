El paquete _Numpy_ es una de las librerias de Python más utilizadas. Te permite [vectorizar](https://en.wikipedia.org/wiki/Array_programming) las operaciones.  En el mundo del aprendizaje profundo y las redes neuronales, esta es una cualidad deseable.

El objeto principal de Numpy es una matriz multidimensional que almacena elementos del mismo tipo, generalmente números. Las matrices (_umpy.array_) creados usando la biblioteca difieren de los de la biblioteca estándar de Python (_array.array_). Primero ejecutemos la línea de comandos de Python e importemos el paquete.

`python`{{execute}}

`import numpy as np`{{execute}}

Hay varias formas de crear las matrices. Lo más fácil es proporcionar el conjunto de valores, pasando una lista o tupla de Python normal utilizando la función de matriz.

`np.array([2, 4, 15])
np.array([[1, 2], [3, 4], [5, 6]])`{{execute}}

Las transformaciones cambian secuencias de secuencias en matrices bidimensionales, secuencias de secuencias de secuencias en matrices tridimensionales, etc. Tenga en cuenta que la siguiente línea volverá con el error:

`np.array(2, 4, 15)`{{execute}}

Para conocer la forma de la matriz, utilice lo siguiente:

`a = np.array([[1, 2], [3, 4], [5, 6]])
a.shape`{{execute}}

Para cambiarlo, use la función reshape:
`a.reshape(2, 3)`{{execute}}

Puede encontrar útiles las funciones ceros y unos para crear matrices que contengan solo 0 o 1:

`np.zeros((3, 4))
np.ones((2, 3))`{{execute}}

Para los números generados aleatoriamente se aplican:

`np.random.random((2,3))`{{execute}}
