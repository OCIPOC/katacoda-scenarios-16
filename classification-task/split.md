Antes de comenzar la fase de entrenamiento, vamos a preparar los datos. Por lo general, los datos que obtenemos del mundo real no están limpios ni listos para usar. Exigen muchas transformaciones, limpieza y muy a menudo características de ingeniería.

Nuestro ejemplo está preparado especialmente para los propósitos del escenario, por lo que lo único que debemos hacer es dividir los datos en los conjuntos de entrenamiento y prueba. La razón para hacerlo es verificar más adelante cómo funciona el modelo con los datos que no vio en la fase de entrenamiento. Verificar solo la precisión de los datos de entrenamiento podría ser engañoso, ya que los algoritmos podrían haber memorizado los registros ([overfitting](https://en.wikipedia.org/wiki/Overfitting)) en lugar de generalizar la regla.

Dependiendo del conjunto de datos, podríamos pensar en diferentes proporciones de división de prueba de tren. En nuestro ejemplo, solo probaremos 30% -70%:

<pre class="file" data-filename="classification.py" data-target="append">
# Divide los datos en train y test
train, test = train_test_split(data, test_size=0.3)
</pre>
