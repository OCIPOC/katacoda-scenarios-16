Su tarea ahora es usar el mismo proceso para optimizar las variables del ejemplo en el escenario de TensorFlow Core. A continuación puede ver el recordatorio de problemas.

<img src="/basiafusinska/courses/deep-learning-with-tensorflow/function-optimisation/assets/lin-model.png" alt="Linear model">

Lo primero que debe hacer es crear los marcadores de posición para las variables xey y para el modelo lineal.

`x = tf.placeholder(tf.float32)
y = tf.placeholder(tf.float32)
a = tf.Variable(1, dtype=tf.float32)
b = tf.Variable(-2, dtype=tf.float32)`{{execute}}

Entonces deberíamos configurar el modelo en sí.

`linear_model = a*x + b`{{execute}}

La función de pérdida es la suma de los cuadrados de las diferencias entre los puntos y la línea.

`squared_deltas = tf.square(linear_model - y)
loss = tf.reduce_sum(squared_deltas)`{{execute}}

Utilice este y los pasos anteriores para optimizar la función de pérdida. Recuerde pasar los valores en feed_dict cuando evalúe los objetos en la sesión: `{x:[0,1,2,3,4,5], y:[-1,-0.5,0,0.5,1,1.5]}` .
