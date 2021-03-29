TensorFlow usa algo llamado ejecución diferida. Esto significa que primero está construyendo su * gráfico computacional * y luego, una vez que tiene todos los elementos juntos, lo ejecuta.

El gráfico trabaja sobre los tensores como entrada y salida. Algunos de los nodos no reciben ninguna entrada, porque ellos mismos son tensores. Construyamos un ejemplo simple agregando dos números: 2 y 5. El gráfico se vería así (obtenido con TensorBoard):

<img src="/basiafusinska/courses/tensorflow-getting-started/tensorflow-core/assets/add-graph.png" alt="Adding Graph">

Los valores de los números se almacenan en los * marcadores de posición *. El tipo implícito es float, pero puedes especificarlo usando el argumento `dtype`:

`input1 = tf.constant(2.0)
input2 = tf.constant(5.0)`{{execute}}

Debido a que todavía estamos construyendo el gráfico, la impresión de las entradas no mostrará los valores almacenados. Se mostrarán una vez que se evalúen los nodos.

`print(input1, input2)`{{execute}}
