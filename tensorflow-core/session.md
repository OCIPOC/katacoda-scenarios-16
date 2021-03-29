Para evaluar el gráfico computacional, o cualquier nodo, debe ejecutarlo dentro de una * sesión *. La sesión se puede crear usando el siguiente código:

`sess = tf.Session()`{{execute}}

Una vez que la sesión está activada, puede usar el método `run` para obtener los valores. Intente hacerlo para entradas constantes:

`print(sess.run([input1, input2]))`{{execute}}

Observe que esta vez la salida son los valores numéricos esperados reales: 2.0 y 5.0.

Para terminar el gráfico necesitamos el tercer nodo y el método `add`:

`add_node = tf.add(input1, input2)`{{execute}}

Como anteriormente, puede ver diferentes salidas dependiendo de si el nodo fue evaluado o no.

`print(add_node)
print(sess.run(add_node))`{{execute}}

La primera línea muestra la información del tensor, la segunda, el resultado de sumar el cálculo: 7.0.