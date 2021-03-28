Puede probar el rendimiento del modelo produciendo las predicciones y verificándolas con las verdades subyacentes. Sin embargo, con más datos, es mucho más práctico calcular algunas estadísticas.

El más obvio es [accuracy](https://en.wikipedia.org/wiki/Accuracy_and_precision),que es la fracción de cuántas veces el modelo acertó. Hay otras métricas, pero en aras de la simplicidad, usaremos solo la precisión. Lo vamos a calcular tanto para el entrenamiento como para el conjunto de pruebas. Esas observaciones pueden ayudarlo aún más a decidir si ajustar su algoritmo o resolver el problema  [bias-variance tradeoff](https://en.wikipedia.org/wiki/Bias%E2%80%93variance_tradeoff).

Primero usemos el modelo para predecir los valores para los conjuntos de entrenamiento y prueba:

<pre class="file" data-filename="classification.py" data-target="append">
# Predecir los valores usando un modelo entrenado
predictions_train = model.predict(train[['x1', 'x2']])
predictions_test = model.predict(test[['x1', 'x2']])
</pre>

A continuación, calcularemos la precisión del modelo:
<pre class="file" data-filename="classification.py" data-target="append">
# Cálculo del accuracy
accuracy_train = accuracy_score(train['label'], predictions_train) * 100
accuracy_test = accuracy_score(test['label'], predictions_test) * 100

print 'Train accuracy: %d %%' % accuracy_train
print 'Test accuracy: %d %%' % accuracy_test
</pre>

Ejecute el script con el siguiente comando:
`python classification.py`{{execute}}

Parece que nuestros algoritmos funcionaron bastante bien. Pero para ser justos, lo estábamos ejecutando en un conjunto de datos muy simple. El siguiente escenario le mostrará un par de deficiencias si está utilizando datos con formas agradables.