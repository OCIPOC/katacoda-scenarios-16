La multiplicación de matrices puede dar como resultado cualquier valor real. Esto dificultaría bastante la determinación de la etiqueta. Afortunadamente, hay una manera de transformar la salida en el valor del intervalo (0, 1).

En el mundo del Deep Learning, usamos una función [sigmoid] (https://en.wikipedia.org/wiki/Sigmoid_function) para este caso. Determinar la etiqueta después de aplicar esta operación es simplemente verificar si el valor es mayor o menor que algún umbral (para nuestra tarea solo usaremos 0.5). Si el resultado es más pequeño, esto significa que el ejemplo es una clase 0; 1 de lo contrario.

## Tarea 3

Envuelva la salida de la multiplicación de matrices con la función `sigmoid` del script auxiliar. Úselo para devolver el valor de la función `forward_propagation`.
