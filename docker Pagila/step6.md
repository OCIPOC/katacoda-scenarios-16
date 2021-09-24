
6.1 Facts Table has all the needed dimensions, no need for deep joins¶
```
SELECT movie_key, date_key, customer_key, sales_amount
FROM factSales 
limit 5;
```{{execute}}


6.2 Join fact table with dimensions to replace keys with attributes
```
SELECT dimMovie.title, dimDate.month, dimCustomer.city, sales_amount
FROM factSales 
JOIN dimMovie on (dimMovie.movie_key = factSales.movie_key)
JOIN dimDate on (dimDate.date_key = factSales.date_key)
JOIN dimCustomer on (dimCustomer.customer_key = factSales.customer_key)
limit 5;
```{{execute}}
```
SELECT dimMovie.title, dimDate.month, dimCustomer.city, sum(sales_amount) as revenue
FROM factSales 
JOIN dimMovie    on (dimMovie.movie_key      = factSales.movie_key)
JOIN dimDate     on (dimDate.date_key         = factSales.date_key)
JOIN dimCustomer on (dimCustomer.customer_key = factSales.customer_key)
group by (dimMovie.title, dimDate.month, dimCustomer.city)
order by dimMovie.title, dimDate.month, dimCustomer.city, revenue desc;
```{{execute}}

```
SELECT f.title, EXTRACT(month FROM p.payment_date) as month, ci.city, sum(p.amount) as revenue
FROM payment p
JOIN rental r    ON ( p.rental_id = r.rental_id )
JOIN inventory i ON ( r.inventory_id = i.inventory_id )
JOIN film f ON ( i.film_id = f.film_id)
JOIN customer c  ON ( p.customer_id = c.customer_id )
JOIN address a ON ( c.address_id = a.address_id )
JOIN city ci ON ( a.city_id = ci.city_id )
group by (f.title, month, ci.city)
order by f.title, month, ci.city, revenue desc;
```{{execute}}


# Conclusion

    We were able to show that a start schema is easier to understand
    Evidence that is more performantm


