
##### CUBE

    Group by CUBE (dim1, dim2, ..) , produces all combinations of different lenghts in one go.
    This view could be materialized in a view and queried which would save lots repetitive aggregations

TODO: Write a query that calculates the various levels of aggregation done in the grouping sets exercise (total, by month, by country, by month & country) using the CUBE function. Your output should match the table below.


```
SELECT dd.month, ds.country, SUM(fs.sales_amount) AS revenue
FROM factsales fs
JOIN dimdate  dd ON fs.date_key     = dd.date_key
JOIN dimstore ds ON fs.store_key    = ds.store_key
GROUP BY cube (dd.month, ds.country);
```{{execute}}


##### Revenue Total, by Month, by Country, by Month & Country All in one shot, NAIVE way

The naive way to create the same table as above is to write several queries and UNION them together. Grouping sets and cubes produce queries that are shorter to write, easier to read, and more performant. Run the naive query below and compare the time it takes to run to the time it takes the cube query to run.

```
SELECT  NULL as month, NULL as country, sum(sales_amount) as revenue
FROM factSales
    UNION all
```{{execute}}
```
SELECT NULL, dimStore.country,sum(sales_amount) as revenue
FROM factSales
JOIN dimStore on (dimStore.store_key = factSales.store_key)
GROUP by  dimStore.country
    UNION all 
```{{execute}}
```
SELECT cast(dimDate.month as text) , NULL, sum(sales_amount) as revenue
FROM factSales
JOIN dimDate on (dimDate.date_key = factSales.date_key)
GROUP by dimDate.month
    UNION all
```{{execute}}
```
SELECT cast(dimDate.month as text),dimStore.country,sum(sales_amount) as revenue
FROM factSales
JOIN dimDate     on (dimDate.date_key         = factSales.date_key)
JOIN dimStore on (dimStore.store_key = factSales.store_key)
GROUP by (dimDate.month, dimStore.country)
```{{execute}}






