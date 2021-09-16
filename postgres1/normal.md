#### Moving to 2nd Normal Form (2NF)
We have moved our data to be in 1NF which is the first step in moving to 2nd Normal Form. Our table is not yet in 2nd Normal Form. While each of our records in our table is unique, our Primary key (transaction id) is not unique. We need to break this up into two tables, transactions and albums sold. 

`Table Name: transactions 
column 0: Transaction ID
column 1: Customer Name
column 2: Cashier Name
column 3: Year `

`Table Name: albums_sold
column 0: Album Id
column 1: Transaction Id
column 3: Album Name` 

``` {.sql}
CREATE TABLE IF NOT EXISTS transactions (transaction_id int, customer_name varchar, cashier_name varchar, year int);
```{{execute}}

``` {.sql}
CREATE TABLE IF NOT EXISTS albums_sold (album_id int, transaction_id int, 
                                                          album_name varchar);
```{{execute}}

``` {.sql}
INSERT INTO transactions(transaction_id, customer_name, cashier_name, year) VALUES (1, "Amanda", "Sam", 2000), (1, "Amanda", "Sam", 2000), (2, "Toby", "Sam", 2000), (3, "Max", "Bob", 2018);
```{{execute}}

``` {.sql}
INSERT INTO albums_sold(album_id, transaction_id, album_name) VALUES (1, 1, "Rubber Soul"), (2, 1, "Let it Be"), (3, 2, "My Generation"), (4, 3, "Meet the Beatles"), (5, 3, "Help!");
```{{execute}}

``` {.sql}
INSERT INTO transactions(transaction_id, customer_name, cashier_name, year) VALUES (1, "Amanda", "Sam", 2000), (2, 'Toby', 'Sam', '2000', '{"My Generation"}'), (3, 'Max', 'Bob', 2018, '{"Meet the Beatles", "Help!"}');
```{{execute}}


```
SELECT * FROM transactions;
```{{execute}}

```
SELECT * FROM albums_sold;
```{{execute}}


#### Let's do a `JOIN` on this table so we can get all the information we had in our first Table. 

```
SELECT * FROM transactions JOIN albums_sold ON transactions.transaction_id = albums_sold.transaction_id;
```{{execute}}


