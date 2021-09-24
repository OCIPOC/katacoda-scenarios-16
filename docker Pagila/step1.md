# STEP1 : Connect to the database where Pagila is loaded

Install packages
```
sudo apt install wget
sudo apt install unzip
 ```{{execute}}

Download data
```
wget https://bootcampaiaws.s3.amazonaws.com/pagila.zip
unzip pagila.zip
```{{execute}}


# Initialize Postgres

1. On terminal pull the latest postgres image:
```
docker pull postgres
```{{execute}}

2. Run image:
```
docker run --name postgres -e POSTGRES_PASSWORD=secret -d postgres
```{{execute}}

3. Run postgres and create the database:
```
docker exec -it postgres psql -U postgres
```{{execute}}

# Create table and insert data

```
psql (13.1 (Debian 13.1-1.pgdg100+1))
Type "help" for help.

postgres=# CREATE DATABASE bootcampai;
postgres-# CREATE DATABASE
postgres=\q
```



```
CREATE DATABASE bootcampai;
\q
```{{execute}}


Insert data
```
cat pagila-schema.sql | docker exec -i postgres psql -U postgres -d bootcampai
cat pagila-data.sql | docker exec -i postgres psql -U postgres -d bootcampai
```{{execute}}

