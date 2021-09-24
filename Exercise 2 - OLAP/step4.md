OLAP Cubes - Grouping Sets

##### Grouping Sets
    It happens often that for 3 dimensions, you want to aggregate a fact:
        by nothing (total)
        then by the 1st dimension
        then by the 2nd
        then by the 3rd
        then by the 1st and 2nd
        then by the 2nd and 3rd
        then by the 1st and 3rd
        then by the 1st and 2nd and 3rd

    Since this is very common, and in all cases, we are iterating through all the fact table anyhow, there is a more clever way to do that using the SQL grouping statement "GROUPING SETS"

##### Total Revenue

TODO: Write a query that calculates total revenue (sales_amount)
```
SELECT SUM(fs.sales_amount) AS revenue
FROM factsales fs
```{{execute}}

##### Revenue by Country
TODO: Write a query that calculates total revenue (sales_amount) by country
```
SELECT ds.country, SUM(fs.sales_amount) AS revenue
FROM factsales fs
JOIN dimstore ds ON fs.store_key = ds.store_key
GROUP BY ds.country
ORDER BY ds.country, revenue DESC
LIMIT 20;
```{{execute}}


##### Revenue by Month
TODO: Write a query that calculates total revenue (sales_amount) by month

```
SELECT dd.month, SUM(fs.sales_amount) AS revenue
FROM factsales fs
JOIN dimdate dd ON fs.date_key = dd.date_key
GROUP BY dd.month
ORDER BY dd.month, revenue DESC
LIMIT 20;
```{{execute}}


##### Revenue by Month & Country
TODO: Write a query that calculates total revenue (sales_amount) by month and country. Sort the data by month, country, and revenue in descending order. The first few rows of your output should match the table below.
```
SELECT dd.month, ds.country, SUM(fs.sales_amount) AS revenue
FROM factsales fs
JOIN dimdate dd ON fs.date_key = dd.date_key
JOIN dimstore ds ON fs.store_key = ds.store_key
GROUP BY (dd.month, ds.country)
ORDER BY dd.month, ds.country, revenue DESC
```{{execute}}


##### Revenue Total, by Month, by Country, by Month & Country All in one shot

TODO: Write a query that calculates total revenue at the various grouping levels done above (total, by month, by country, by month & country) all at once using the grouping sets function. Your output should match the table below.
```
SELECT dd.month, ds.country, SUM(fs.sales_amount) AS revenue
FROM factsales fs
JOIN dimdate  dd ON fs.date_key     = dd.date_key
JOIN dimstore ds ON fs.store_key    = ds.store_key
GROUP BY grouping sets ((), dd.month, ds.country, (dd.month, ds.country));
```{{execute}}










