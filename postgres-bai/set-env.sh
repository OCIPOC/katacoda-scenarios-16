#!/usr/bin/bash

echo 'please wait while we prep the environment (should take about 10 seconds)'
echo 'starting the database'
docker network create mybridge

docker run -d --network mybridge -p 5432:5432 -e PG_USER=groot -e PG_PASSWORD=password -e PG_DATABASE=parch_and_posey_db --name=pgsql crunchydata/crunchy-postgres-appdev:latest

until PGPASSWORD="password" psql -h localhost -U groot postgres -c '\l' &> /dev/null; do
  echo >&2 "$(date +%Y%m%dt%H%M%S) Waiting for Postgres to start"
  sleep 1
done

wget https://baind.s3.amazonaws.com/SQL/parch_and_posey_db
pg_restore -d parch_and_posey parch_and_posey_db
PGPASSWORD="password" psql -h localhost -U groot parch_and_posey_db