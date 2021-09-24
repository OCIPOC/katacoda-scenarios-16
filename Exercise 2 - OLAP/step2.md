![Image](https://raw.githubusercontent.com/Bootcamp-AI/data-engineer/476342d3a47bf80069ae8525b465420a90abfc87/data-warehouse/lesson-1-intro-data-warehouses/pagila-star.png)


Start with a simple cube
TODO: Write a query that calculates the revenue (sales_amount) by day, rating, and city. Remember to join with the appropriate dimension tables to replace the keys with the dimension labels. Sort by revenue in descending order and limit to the first 20 rows. The first few rows of your output should match the table below.

```
docker exec -it postgres psql -U postgres
\c bootcampai
```{{execute}}

```
SELECT dd.day, dm.rating, dc.city, SUM(fs.sales_amount) AS revenue
FROM factsales fs
JOIN dimdate dd ON fs.date_key = dd.date_key
JOIN dimcustomer dc ON fs.customer_key = dc.customer_key
JOIN dimmovie dm ON fs.movie_key = dm.movie_key
GROUP BY (dd.day, dm.rating, dc.city)
ORDER BY revenue DESC
LIMIT 20;
```{{execute}}

##### Slicing
Slicing is the reduction of the dimensionality of a cube by 1 e.g. 3 dimensions to 2, fixing one of the dimensions to a single value. In the example above, we have a 3-dimensional cube on day, rating, and country.

TODO: Write a query that reduces the dimensionality of the above example by limiting the results to only include movies with a rating of "PG-13". Again, sort by revenue in descending order and limit to the first 20 rows. The first few rows of your output should match the table below.

```
SELECT dd.day, dm.rating, dc.city, SUM(fs.sales_amount) AS revenue
FROM factsales fs
JOIN dimdate dd ON fs.date_key = dd.date_key
JOIN dimcustomer dc ON fs.customer_key = dc.customer_key
JOIN dimmovie dm ON fs.movie_key = dm.movie_key
WHERE dm.rating = 'PG-13'
GROUP BY (dd.day, dm.rating, dc.city)
ORDER BY revenue DESC
LIMIT 20;
```{{execute}}

###### Dicing
Dicing is creating a subcube with the same dimensionality but fewer values for two or more dimensions.

TODO: Write a query to create a subcube of the initial cube that includes moves with:

    ratings of PG or PG-13
    in the city of Bellevue or Lancaster
    day equal to 1, 15, or 30

The first few rows of your output should match the table below.

```
SELECT dd.day, dm.rating, dc.city, SUM(fs.sales_amount) AS revenue
FROM factsales fs
JOIN dimdate dd ON fs.date_key = dd.date_key
JOIN dimcustomer dc ON fs.customer_key = dc.customer_key
JOIN dimmovie dm ON fs.movie_key = dm.movie_key
WHERE dm.rating in ('PG-13', 'PG')
AND dc.city in ('Bellevue', 'Lancaster')
AND dd.day in (1, 15, 30)
GROUP BY (dd.day, dm.rating, dc.city)
ORDER BY revenue DESC
LIMIT 20;select district, sum(city_id) as n #write code here;
from address #write code here;
group by district;
order by n desc;
limit 10;
```{{execute}}



