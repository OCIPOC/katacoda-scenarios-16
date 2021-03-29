Para ajustar los valores de las variables, necesitamos especificar los resultados esperados para nuestro modelo lineal. Trabajando solo con una dimensión pudimos visualizar el modelo:

<img src="/basiafusinska/courses/tensorflow-getting-started/tensorflow-core/assets/lin-model.png" alt="Linear model">

Los puntos de datos tienen coordenadas como valores proporcionados en los marcadores de posición `x` e` y` y los parámetros de las líneas' `a` y` b` proporcionan la pendiente y la intersección. Esto significa que ajustar las variables nos dará la coincidencia adecuada de la línea con los puntos de datos reales.

Digamos que queremos arreglar la línea para el punto de datos de la imagen. Esto significa que debemos proporcionar los valores`0, 1, 2, 3, 4, 5` para`x` y `-1, -0.5, 0, 0.5, 1, 1.5` para `y` placeholders. Como puede ver, los valores iniciales de las variables `a` y` b` (la línea verde) realmente no se ajustan a los datos. Para calcular el error, puede utilizar el siguiente código:

`squared_deltas = tf.square(linear_model - y)
loss = tf.reduce_sum(squared_deltas)`{{execute}}

Ejecutemos los cálculos con los valores de los marcadores de posición:

`feed_dict = {
  x:[0,1,2,3,4,5],
  y:[-1,-.5,0,.5,1,1.5] }
print(sess.run(loss, feed_dict))`{{execute}}

Como puede ver, el número es alto, así que intentemos ajustar la línea un poco mejor (línea marrón):

`assignA = tf.assign(a, [.25])
assignB = tf.assign(b, [0])
sess.run([assignA, assignB])`{{execute}}

Entonces, la función de pérdida con los mismos valores para los marcadores de posición daría el siguiente resultado.

`print(sess.run(loss, feed_dict))`{{execute}}

El valor es mejor, pero aún no es perfecto. Con los datos proporcionados, podemos encontrar la coincidencia perfecta, ya que los puntos de datos están formando la línea.

`assignA = tf.assign(a, [.5])
assignB = tf.assign(b, [-1])
sess.run([assignA, assignB])
print(sess.run(loss, feed_dict))`{{execute}}

En los escenarios del mundo real, el punto no sería la línea perfecta. La tarea de optimización sería encontrar los parámetros que mejor se ajusten a los datos (pero no idealmente) y el proceso en sí no sería manual. En el siguiente tutorial, presentaremos una forma automatizada de ajustar las variables que utilizan los algoritmos de aprendizaje automático.
