Clasificaremos los datos utilizados en los escenarios anteriores cuando aplicamos Regresión logística a la tarea. Nos centraremos aquí solo en la fase de _ predicción_, pero tendrá la oportunidad de implementar la capacitación en la última parte del curso.

A continuación puede ver la visualización de los conjuntos de datos, tanto _linealmente separados como no_.
<img src="/basiafusinska/courses/deep-learning-with-tensorflow/forward-propagation/assets/linear.png" alt="Linear dataset">

<img src="/basiafusinska/courses/deep-learning-with-tensorflow/forward-propagation/assets/non_linear.png" alt="Non-linear dataset">

## Tarea 1

Obtendrá los datos de los archivos. El código se escribirá en `forward_propagation.py` {{open}}. Hay varias funciones de ayuda en el script helper.py. Para cargar datos, use la función `read_data` que apunta a ambos archivos de datos:` linear.csv` y `non_linear.csv`.