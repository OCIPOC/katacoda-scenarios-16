Las operaciones aritméticas en la biblioteca numpy operan por elementos. Crean una nueva tabla y la llenan con los valores de resultado. Probémoslo con un escalar:

`a = np.array([1., 2., 3., 4., 5.])
a + 1
a - 3
a / 2
a * 5
a**2`{{execute}}

Esto también funcionará con muchas operaciones integradas:

`np.sin(a)
np.exp(a)`{{execute}}

También puede usar matrices para crear el index de condición:
`a > 3
a % 2 == 0`{{execute}}

Algunas operaciones funcionan en su lugar, sin crear una nueva matriz:

`a += 10
a /= 2
a`{{execute}}
