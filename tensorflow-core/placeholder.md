Otra estructura que proporciona TensorFlow es un *marcador de posición*. A diferencia de las constantes, donde proporciona el valor al definir el nodo, un marcador de posición espera los valores cuando se evalúa el gráfico. Intentemos usarlo para el ejemplo anterior.

`p1 = tf.placeholder(tf.float32)
p2 = tf.placeholder(tf.float32)`{{execute}}

Acabamos de definir dos marcadores de posición que esperan valores flotantes. El nodo de adición se puede construir usando el método `add` o el operador `+`.

`add_ph = p1 + p2`{{execute}}

La evaluación del gráfico que se construye con marcadores de posición difiere del que se construye solo con constantes. Para empezar, espera los valores de los marcadores de posición en el parámetro `feed_dict`. Es un diccionario de nombres de marcadores de posición y valores correspondientes. Luego puede ejecutar el mismo gráfico con diferentes configuraciones.

`print(sess.run(add_ph, {p1: 2, p2: 5}))
print(sess.run(add_ph, {p1: 1.2, p2: 3.5}))
print(sess.run(add_ph, {p1: [1, 2], p2: [5, 8]}))`{{execute}}
