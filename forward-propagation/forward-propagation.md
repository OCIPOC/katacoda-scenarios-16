Es hora de usar la función `forward_propagation`. Esto requerirá obtener los datos de características de ambos conjuntos de datos y establecer los valores para los pesos y los vectores de sesgo.

## Tarea 4
Lo primero que debe hacer es filtrar los datos de entrada de los conjuntos de datos (`linear_data` y` non_linear_data`). Esto significa que no incluimos la columna de la etiqueta. El siguiente código muestra cómo obtener las columnas (x1, x2) y transformarlas en la matriz np.

`data_array = data.as_matrix(['x1', 'x2'])`

Para los pesos y sesgos, use los valores que desee, solo asegúrese de que los vectores tengan _formas adecuadas_.

## Tarea 5
Finalmente, puede usar la función `forward_propagation` con parámetros específicos. Las últimas líneas del código muestran algunas predicciones para ambos conjuntos de datos.

Tenga en cuenta que no es necesario ajustar estas predicciones. No pusimos _ ningún entrenamiento_ en su lugar. Lo haremos en uno de los próximos escenarios.

Una vez que haya terminado con el código, puede ejecutarlo usando el siguiente comando:

`python forward_propagation.py` {{ejecutar}}
