Hasta ahora definimos cómo debería ser el proceso de optimización. En TensorFlow, esto significa establecer el gráfico de cálculo. Ahora es el momento de ejecutarlo dentro de la sesión.

Crearemos la sesión e inicializaremos las variables.

`sess = tf.InteractiveSession()
sess.run(tf.global_variables_initializer())`{{execute}}

El proceso se ejecutará de forma iterativa.

`for i in range(20):
   sess.run(optimiser)

`{{execute}}

Una vez hecho esto, imprimamos el resultado y cerremos la sesión.

`print('Minimised value is: {} for the x: {}'.format(sess.run(y), sess.run(x)))
sess.close()`{{execute}}
