#### Great we were able to get the data we wanted.

But, we had a to 3 way `JOIN` to get there. While it's great we had that flexibility, we need to remember that joins are slow and if we have a read heavy workload that required low latency queries we want to reduce the number of `JOINS`.  Let's think about denormalizing our normalized tables.

With denormalization we want to think about the queries we are running and how we can reduce our number of JOINS even if that means duplicating data 

#### Query 1 : `select transaction_id, customer_name, amount_sent FROM <min number of tables>` 
This should give the amount spent on each transaction 
#### Query 2: `select cashier_name, SUM(amount_spent) FROM <min number of tables> GROUP BY cashier_name` 
This should give the total sales by cashier 


###  Query 1: `select transaction_id, customer_name, amount_spent FROM <min number of tables>`

There are two ways to do this, you can do a JOIN on the `sales` and `transactions2` table but we want to minimize the use of `JOINS`.  

Let's add `amount_spent` to the `transactions` table so that we will not need to do a JOIN at all. 

`Table Name: transactions 
column 0: transaction Id
column 1: Customer Name
column 2: Cashier Id
column 3: Year
column 4: amount_spent`

```
CREATE TABLE IF NOT EXISTS transactions (transaction_id int, customer_name varchar, cashier_id int,  year int, amount_spent int);'
```{{execute}}

``` {.sql}
INSERT INTO transactions (transaction_id, customer_name, cashier_id, year, amount_spent) VALUES (1, 'Amanda', 1, 2000, 40), (2, 'Toby', 1, 2000, 19), (3, 'Max', 2, 2018, 45);
```{{execute}}


Great we can now do a simplifed query to get the information we need. No  `JOIN` is needed.
``` {.sql}
SELECT transaction_id, customer_name, amount_spent FROM transactions;
```{{execute}}


