Una vez que se define la función de pérdida, todo lo que necesita hacer es elegir el optimizador. En nuestra tarea, aplicaremos[Gradient Descent](https://www.tensorflow.org/api_docs/python/tf/train/GradientDescentOptimizer)  de TensorFlow.

`learning_rate = 0.5
optimiser = tf.train.GradientDescentOptimizer(learning_rate).minimize(y)`{{execute}}

¡Eso es todo! Sin cálculos del gradiente, sin actualización de variables. Todo se soluciona dentro de la clase GradientDescentOptimizer. Eche un vistazo a otras opciones de optimizador.