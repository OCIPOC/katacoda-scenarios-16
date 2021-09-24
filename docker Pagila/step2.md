![Image](https://raw.githubusercontent.com/Bootcamp-AI/data-engineer/476342d3a47bf80069ae8525b465420a90abfc87/data-warehouse/lesson-1-intro-data-warehouses/pagila-3nf.png)


2.1 How much? What data sizes are we looking at?

```
docker exec -it postgres psql -U postgres
\c bootcampai
```{{execute}}

```
select count(*) from store;
select count(*) from film;
select count(*) from customer;
select count(*) from rental;
select count(*) from payment;
select count(*) from staff;
select count(*) from city;
select count(*) from country;
```{{execute}}


2.2 When? What time period are we talking about?
```
select min(payment_date) as start, max(payment_date) as end from payment;
```{{execute}}

2.3 Where? Where do events in this database occur?
TODO: Write a query that displays the number of addresses by district in the address table. Limit the table to the top 10 districts. Your results should match the table below.

```
select district, sum(city_id) as n #write code here
from address #write code here
group by district
order by n desc
limit 10;
```{{execute}}



