Numpy ofrece muchas funcionalidades para los cálculos de álgebra lineal. Puede transponer fácilmente la matriz, crear una matriz idéntica, multiplicarlos o calcular la traza.

Transponer es tan fácil como:

`a = np.array([[1, 2, 3], [0, 1, 3]])
a
a.T
a.transpose()`{{execute}}

Utilice la función de ojo para crear la matriz idéntica:

`np.eye(3)`{{execute}}

Para multiplicar matrces usamos la funciones  `dot` o `matmul`. Recuerde que esta operación toma en consideración las dimensiones. Si la matriz `b` es 2 x 2, podemos ver el producto `b x a`:

`b = np.array([[2, 1], [3, 2]])
np.dot(b, a)`{{execute}}

Mientras que `a x b` lanzará el error:

`np.dot(a, b)`{{execute}}
