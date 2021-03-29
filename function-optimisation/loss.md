El objetivo del problema de optimización es encontrar los valores que minimizan o maximizan el valor de la función de pérdida. TensorFlow está haciendo que este proceso sea más cómodo de lo que tuvimos la oportunidad de observar en el escenario de entrenamiento de la red neuronal.

La primera función con la que trataremos será la función cuadrática:

<img src="/basiafusinska/courses/deep-learning-with-tensorflow/function-optimisation/assets/equation.png" alt="Quadratic function equation">

Puedes ver su trama a continuación:

<img src="/basiafusinska/courses/deep-learning-with-tensorflow/function-optimisation/assets/visual.png" alt="Quadratic function">

La función tiene el mínimo (de valor -1) en el punto 5. Este tiene la solución analítica, pero no suele ser el caso. En una situación como esta, debe usar las matemáticas en lugar del proceso de optimización iterativo. No obstante, usaremos TensorFlow para aprender.

Para comenzar a trabajar con TensorFlow, use el siguiente comando:

`python`{{execute}}

E importar la biblioteca:

`import tensorflow as tf`{{execute}}

Para definir la función en TensorFlow, usaremos tf.Variable para x a partir del valor -10. Luego configuraremos la función en sí.

`x = tf.Variable(-10., dtype=tf.float32)
y = x**2 - 10*x + 24`{{execute}}
