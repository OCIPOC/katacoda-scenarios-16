Podemos utilizar varios algoritmos en la tarea de clasificación binaria. Los más populares son [Naive Bayes](https://en.wikipedia.org/wiki/Naive_Bayes_classifier), [Decision Trees](https://en.wikipedia.org/wiki/Decision_tree_learning), [Logistic Regression](https://en.wikipedia.org/wiki/Logistic_regression), [k-Nearest Neighbours](https://en.wikipedia.org/wiki/K-nearest_neighbors_algorithm), pero la lista de ninguna manera está agotada. Aplicaremos Regresión logística en este escenario.

Puede entrar en los detalles de este método en particular, pero la idea básica se basa en el hecho de que nuestros datos son _linealmente separables_ con respecto a las etiquetas. Esto significa que puede trazar la línea entre los puntos de los diferentes colores.

<img src="/basiafusinska/courses/deep-learning-with-tensorflow/classification-task/assets/logistic_regression.png" alt="Logistic regression">

Estamos en la posición afortunada de que esta línea se pueda trazar de muchas maneras y aún separe los puntos. El algoritmo ajusta los coeficientes durante la fase de entrenamiento para minimizar las distancias de los puntos a la línea.

Los datos se almacenan en el archivo class_data.csv. Lo primero que vamos a hacer es leer y visualizar los datos. Algunas funciones de ayuda ya se han escrito para usted. Se pueden encontrar en el archivo helpers.py.

Vas a escribir el código en el archivo `class.py` {{open}}. Ya contiene las importaciones de paquetes necesarios. Todo lo que necesita hacer es usar la función auxiliar `read_data` para cargar los datos del archivo.

<pre class="file" data-filename="classification.py" data-target="append">
# Leer la data
data = h.read_data()
print data
</pre>

Siempre puede ejecutar el código escrito hasta ahora usando el siguiente comando:
`python classification.py`{{execute}}
