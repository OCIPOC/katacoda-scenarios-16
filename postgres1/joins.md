We Create Table Statement and insert the data in the table
=============

``` {.sql}
CREATE TABLE IF NOT EXISTS music_store (transaction_id int, 
customer_name varchar, cashier_name varchar, year int, albums_purchased text[]);
```{{execute}}

``` {.sql}
INSERT INTO music_store(transaction_id, customer_name, cashier_name, year, albums_purchased) VALUES (1, 'Amanda', 'Sam', 2000, '{"Rubber Soul", "Let it Be"}'), (2, 'Toby', 'Sam', '2000', '{"My Generation"}'), (3, 'Max', 'Bob', 2018, '{"Meet the Beatles", "Help!"}');
```{{execute}}
``` {.sql}
"SELECT * FROM music_store;"
```{{execute}}
