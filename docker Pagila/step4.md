![Image](https://raw.githubusercontent.com/AhmadChaiban/Udacity-Data-Engineering-Nanodegree/c53d6f210b7c53c95752930841ed11368fb0a2b0/4%20-%20Cloud%20Data%20Warehouses/Lesson%201%20-%20Introduction%20to%20Data%20Warehouses/Exercise%201%20-%203NF%20Scehma%20exploration/pagila-star.png)

```
CREATE TABLE dimDate
(
  date_key integer NOT NULL PRIMARY KEY,
  date date NOT NULL,
  year smallint NOT NULL,
  quarter smallint NOT NULL,
  month smallint NOT NULL,
  day smallint NOT NULL,
  week smallint NOT NULL,
  is_weekend boolean
);
```{{execute}}
```
CREATE TABLE dimCustomer
(
  customer_key SERIAL PRIMARY KEY,
  customer_id  smallint NOT NULL,
  first_name   varchar(45) NOT NULL,
  last_name    varchar(45) NOT NULL,
  email        varchar(50),
  address      varchar(50) NOT NULL,
  address2     varchar(50),
  district     varchar(20) NOT NULL,
  city         varchar(50) NOT NULL,
  country      varchar(50) NOT NULL,
  postal_code  varchar(10),
  phone        varchar(20) NOT NULL,
  active       smallint NOT NULL,
  create_date  timestamp NOT NULL,
  start_date   date NOT NULL,
  end_date     date NOT NULL
);
```{{execute}}
```
CREATE TABLE dimMovie
(
  movie_key          SERIAL PRIMARY KEY,
  film_id            smallint NOT NULL,
  title              varchar(255) NOT NULL,
  description        text,
  release_year       year,
  language           varchar(20) NOT NULL,
  original_language  varchar(20),
  rental_duration    smallint NOT NULL,
  length             smallint NOT NULL,
  rating             varchar(5) NOT NULL,
  special_features   varchar(60) NOT NULL
);
```{{execute}}
```
CREATE TABLE dimStore
(
  store_key           SERIAL PRIMARY KEY,
  store_id            smallint NOT NULL,
  address             varchar(50) NOT NULL,
  address2            varchar(50),
  district            varchar(20) NOT NULL,
  city                varchar(50) NOT NULL,
  country             varchar(50) NOT NULL,
  postal_code         varchar(10),
  manager_first_name  varchar(45) NOT NULL,
  manager_last_name   varchar(45) NOT NULL,
  start_date          date NOT NULL,
  end_date            date NOT NULL
);
```{{execute}}
```
CREATE TABLE factSales
(
  sales_key        SERIAL PRIMARY KEY,
  date_key         INT NOT NULL REFERENCES dimDate(date_key),
  customer_key     INT NOT NULL REFERENCES dimCustomer(customer_key),
  movie_key        INT NOT NULL REFERENCES dimMovie(movie_key),
  store_key        INT NOT NULL REFERENCES dimStore(store_key),
  sales_amount     decimal(5,2) NOT NULL
);
```{{execute}}
