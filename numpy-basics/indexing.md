Las matrices Numpy se pueden indexar e iterar como otras secuencias de Python. La indexación comienza con 0.

`a = np.array([2, 3, 5, 20, 2, 1, 4, 6, 1, 8, 10, 3])
a[2:4]`{{execute}}

Para matrices multidimensionales, puede usar índices por eje.

`b = a.reshape(4, 3)
b
b[3, 1] # Elemento en la cuarta fila y segunda columna
b[:, 2] # 3-rd column
b[1, :] # 2nd row`{{execute}}

Para abreviar, puede usar valores negativos al acceder a un elemento desde el final.

`a[-1]
b[-2, :]
b[:, -1]`{{execute}}
