Let's imagine we work at an online Music Store. There will be many tables in our database but let's just focus on 4 tables around customer purchases.
=============

`Table Name: customer_transactions
column: Customer Id
column: Store Id
column: Spent`

`Table Name: Customer
column: Customer Id
column: Name
column: Rewards`

`Table Name: store
column: Store Id
column: State`

`Table Name: items_purchased
column: customer id
column: Item Name`

From this representation we can already start to see the makings of a "STAR". We have one fact table (the center of the star) and 3 dimension tables that are coming from it.

### Create the Fact Table and insert the data into the table¶
```
CREATE TABLE IF NOT EXISTS customer_transactions (customer_id int, store_id int, spent numeric);
```{{execute}}

```
INSERT INTO customer_transactions (customer_id, store_id, spent) 
                 VALUES (1, 1, 20.50), (2, 1, 35.21);
```{{execute}}

Create our Dimension Tables and insert data into those tables.
```
CREATE TABLE IF NOT EXISTS items_purchased(customer_id int, item_number int, item_name varchar);
```{{execute}}
```
INSERT INTO items_purchased (customer_id, item_number, item_name) 
                 VALUES (1, 1, "Rubber Soul"), (2, 3, "Let It Be");
```{{execute}}
```
CREATE TABLE IF NOT EXISTS store (store_id int, state varchar);
```{{execute}}
```
INSERT INTO store (store_id, state) 
                 VALUES (1, "CA"), (2, "WA");
```{{execute}}
```
CREATE TABLE IF NOT EXISTS customer (customer_id int, name varchar, rewards boolean);
```{{execute}}
```
INSERT INTO customer (customer_id, name, rewards) 
                 VALUES (1, "Amanda", True), (2, "Toby", False);
```{{execute}}