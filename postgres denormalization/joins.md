Let's start with our normalized (3NF) database set of tables we had in the last exercise but we have added a new table `sales`. 

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
CREATE TABLE IF NOT EXISTS transactions2 (transaction_id int, customer_name varchar, cashier_id int, year int);
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
                 (1, 'Amanda', 1, 2000), (2, 'Toby', 1, 2000), (3, 'Max', 2, 2018);
```{{execute}}
```
INSERT INTO albums_sold (album_id, transaction_id, album_name) 
                 VALUES (1, 1, 'Rubber Soul'), (2, 1, 'Let It Be'), (3, 2, 'My Generation'), (4, 3, 'Meet the Beatles'), (5, 3, 'Help!');
```{{execute}}
```
INSERT INTO employees (employee_id, employee_name) 
                 VALUES (1, 'Sam'), (2, 'Bob');
```{{execute}}

```
INSERT INTO sales (transaction_id, amount_spent) 
                 VALUES 
                 (1, 40), (2, 19), (3, 45);
```{{execute}}

### Confirm the tables were created with the data
```
SELECT * FROM transactions2;
```{{execute}}
```
SELECT * FROM albums_sold;
```{{execute}}
```
SELECT * FROM employees;
```{{execute}}
```
SELECT * FROM sales;
```{{execute}}

