Si desea trabajar con los parámetros que pueden cambiar sus valores al ejecutar el gráfico computacional, debe considerar el uso de * variables *. En el proceso de entrenamiento de aprendizaje automático, el objetivo es ajustar algunos coeficientes para que se ajusten mejor a la función optimizada.

Consideremos un modelo lineal simple y descubramos cómo puede cambiar manualmente los valores de las variables. Proporcionaremos valores xey de los puntos de datos en los marcadores de posición:

`x = tf.placeholder(tf.float32)
y = tf.placeholder(tf.float32)`{{execute}}

El modelo lineal tiene la forma **f(x) = a*x + b**. **a** y **b** son los parámetros. Usaremos variables para definirlas y asignarles algunos valores predeterminados.

`a = tf.Variable([1], dtype=tf.float32)
b = tf.Variable([-2], dtype=tf.float32)`{{execute}}

El modelo lineal se puede definir como:

`linear_model = a*x + b`{{execute}}

Para ejecutar el gráfico computacional, primero debe inicializar las variables. Sus valores no se asignarán como a las constantes a menos que lo haga explícitamente:

`init = tf.global_variables_initializer()
sess.run(init)`{{execute}}

Ahora el modelo está listo para ser evaluado. Tenga en cuenta que debido a que el modelo lineal no tiene en cuenta los valores de y, no es necesario proporcionarlos en el parámetro `feed_dict`.

`print(sess.run(linear_model, {x:[0,1,2,3,4,5]}))`{{execute}}

Usaremos valores de y para verificar qué tan bueno es el modelo en el siguiente paso.