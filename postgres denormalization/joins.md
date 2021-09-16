#### Let's start with our normalized (3NF) database set of tables we had in the last exercise but we have added a new table `sales`. 

`Table Name: transactions2 
column 0: transaction Id
column 1: Customer Name
column 2: Cashier Id
column 3: Year `

`Table Name: albums_sold
column 0: Album Id
column 1: Transaction Id
column 3: Album Name` 

`Table Name: employees
column 0: Employee Id
column 1: Employee Name `

`Table Name: sales
column 0: Transaction Id
column 1: Amount Spent
`

### We add CREATE statements for all tables and INSERT data into the tables

```
CREATE TABLE IF NOT EXISTS transactions2 (transaction_id int, 
                                                           customer_name varchar, cashier_id int, 
                                                           year int);
```{{execute}}

```
CREATE TABLE IF NOT EXISTS employees (employee_id int, employee_name varchar);
```{{execute}}

```
CREATE TABLE IF NOT EXISTS employees (employee_id int, employee_name varchar);
```{{execute}}

```
CREATE TABLE IF NOT EXISTS albums_sold (album_id int, transaction_id int, 
                                                          album_name varchar);
```{{execute}}

```
CREATE TABLE IF NOT EXISTS sales (transaction_id int, amount_spent int);
 ```{{execute}}
```
INSERT INTO transactions2 (transaction_id, customer_name, cashier_id, year) 
                 VALUES 
                 (1, "Amanda", 1, 2000);
```{{execute}}



