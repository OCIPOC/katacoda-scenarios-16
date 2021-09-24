Roll Up and Drill Down


##### Roll-up

    Stepping up the level of aggregation to a large grouping
    e.g.city is summed as country

TODO: Write a query that calculates revenue (sales_amount) by day, rating, and country. Sort the data by revenue in descending order, and limit the data to the top 20 results. The first few rows of your output should match the table below.

```
SELECT dd.day, dm.rating, dc.country, SUM(fs.sales_amount) AS revenue
FROM factsales fs
JOIN dimdate dd ON fs.date_key = dd.date_key
JOIN dimcustomer dc ON fs.customer_key = dc.customer_key
JOIN dimmovie dm ON fs.movie_key = dm.movie_key
GROUP BY (dd.day, dm.rating, dc.country)
ORDER BY revenue DESC
LIMIT 20;
```{{execute}}



##### Drill-down

    Breaking up one of the dimensions to a lower level.
    e.g.city is broken up into districts

TODO: Write a query that calculates revenue (sales_amount) by day, rating, and district. Sort the data by revenue in descending order, and limit the data to the top 20 results. The first few rows of your output should match the table below.

```
SELECT dd.day, dm.rating, dc.district, SUM(fs.sales_amount) AS revenue
FROM factsales fs
JOIN dimdate dd ON fs.date_key = dd.date_key
JOIN dimcustomer dc ON fs.customer_key = dc.customer_key
JOIN dimmovie dm ON fs.movie_key = dm.movie_key
GROUP BY (dd.day, dm.rating, dc.district)
ORDER BY revenue DESC
LIMIT 20;
```{{execute}}



