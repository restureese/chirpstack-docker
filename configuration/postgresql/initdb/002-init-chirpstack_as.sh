#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    create role chirpstack with login password 'chirpstack';
    create database chirpstack_ns with owner chirpstack;
    create database chirpstack_as with owner chirpstack;
EOSQL
