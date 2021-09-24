# STEP3: Perform some simple data analysis¶


3.1 Insight 1: Top Grossing Movies

    Payments amounts are in table payment
    Movies are in table film
    They are not directly linked, payment refers to a rental, rental refers to an inventory item and inventory item refers to a film
    payment → rental → inventory → film


3.1.1 Films
```
select film_id, title, release_year, rental_rate, rating  from film limit 5;
```{execute}}

3.1.2 Payments
```
select * from payment limit 5;
```{execute}}

3.1.3 Inventory
```
select * from payment limit 5;
```{execute}}

3.1.4 Get the movie of every payment¶
```
SELECT f.title, p.amount, p.payment_date, p.customer_id                                            
FROM payment p
JOIN rental r    ON ( p.rental_id = r.rental_id )
JOIN inventory i ON ( r.inventory_id = i.inventory_id )
JOIN film f ON ( i.film_id = f.film_id)
limit 5;
```{execute}}

3.1.5 sum movie rental revenue
```
SELECT f.title, sum(p.amount) as revenue                                            
FROM payment p
JOIN rental r    ON ( p.rental_id = r.rental_id )
JOIN inventory i ON ( r.inventory_id = i.inventory_id )
JOIN film f ON ( i.film_id = f.film_id)
GROUP BY title
ORDER BY revenue desc
limit 10;
```{{execute}}

3.2 Insight 2: Top grossing cities¶ 
    Payments amounts are in table payment
    Cities are in table cities
    payment → customer → address → city


3.2.1 Get the city of each payment¶
```
SELECT p.customer_id, p.rental_id, p.amount, ci.city                            
FROM payment p
JOIN customer c  ON ( p.customer_id = c.customer_id )
JOIN address a ON ( c.address_id = a.address_id )
JOIN city ci ON ( a.city_id = ci.city_id )
order by p.payment_date
limit 10;
```{{execute}}


3.2.2 Top grossing cities
```
SELECT ci.city ,  sum(p.amount) as revenue
FROM payment p
JOIN customer c  ON ( p.customer_id = c.customer_id )
JOIN address a ON ( c.address_id = a.address_id )
JOIN city ci ON ( a.city_id = ci.city_id )
group by ci.city
order by revenue desc
limit 10;
```{{execute}}


3.3 Insight 3 : Revenue of a movie by customer city and by month

3.3.1 Total revenue by month
```
SELECT sum(p.amount) as revenue, EXTRACT(month FROM p.payment_date) as month
from payment p
group by month
order by revenue desc
limit 10;
```{{execute}}

3.3.2 Each movie by customer city and by month (data cube)¶
```
SELECT f.title, p.amount, p.customer_id, ci.city, p.payment_date,EXTRACT(month FROM p.payment_date) as month
FROM payment p
JOIN rental r    ON ( p.rental_id = r.rental_id )
JOIN inventory i ON ( r.inventory_id = i.inventory_id )
JOIN film f ON ( i.film_id = f.film_id)
JOIN customer c  ON ( p.customer_id = c.customer_id )
JOIN address a ON ( c.address_id = a.address_id )
JOIN city ci ON ( a.city_id = ci.city_id )
order by p.payment_date
limit 10;
```{{execute}}


3.3.3 Sum of revenue of each movie by customer city and by month¶
```
SELECT f.title, ci.city,EXTRACT(month FROM p.payment_date) as month, sum(p.amount) as revenue
FROM payment p
JOIN rental r    ON ( p.rental_id = r.rental_id )
JOIN inventory i ON ( r.inventory_id = i.inventory_id )
JOIN film f ON ( i.film_id = f.film_id)
JOIN customer c  ON ( p.customer_id = c.customer_id )
JOIN address a ON ( c.address_id = a.address_id )
JOIN city ci ON ( a.city_id = ci.city_id )
group by (f.title, ci.city, month)
order by month, revenue desc
limit 10;
```{{execute}}








