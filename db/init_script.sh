#!/usr/bin/env bash

psql -U postgres -c 'CREATE USER ${POSTGRES_USER} WITH PASSWORD ''${POSTGRES_PASSWORD}'';'
psql -U postgres -c 'DROP DATABASE ${POSTGRES_DB};'
psql -U postgres -c 'CREATE DATABASE ${POSTGRES_DB};'
psql -U postgres -c 'GRANT ALL PRIVILEGES ON DATABASE ${POSTGRES_DB} TO ${POSTGRES_USER};'
psql -U ${POSTGRES_USER} ${POSTGRES_DB} < /tmp/dhis_init.sql



