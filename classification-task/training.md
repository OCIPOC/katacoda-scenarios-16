El entrenamiento del modelo es la parte esencial del proceso de aprendizaje automático. Aquí es donde está sucediendo toda la diversión y la magia. Mientras revisa los datos, el algoritmo ajusta los coeficientes para que se ajusten mejor.

En el caso de Regresión lineal, que lo usemos significa que tendrá en cuenta alguna _ función de pérdida_ e intentará _minimizarla_. No te preocupes; no lo escribiremos nosotros mismos aquí. En su lugar, usaremos la clase en caja negra de la biblioteca `sklearn`.

<pre class="file" data-filename="classification.py" data-target="append">
# Crea y entrena el modelo.
model = sklearn.linear_model.LogisticRegressionCV();
model.fit(train[['x1', 'x2']], train['label']);
</pre>

Una vez hecho el algoritmo, tenemos el _modelo entrenado_ listo para usar. Posteriormente se puede aplicar para predecir los colores de nuevos ejemplos.