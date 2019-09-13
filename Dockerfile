FROM postgres:latest

WORKDIR /home
COPY f1db.sql /home
COPY import-db.sh /home

