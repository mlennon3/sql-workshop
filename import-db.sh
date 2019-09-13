#!/bin/bash
set -eo pipefail

createdb -U postgres f1db

psql -h localhost -d f1db -U postgres -f /home/f1db.sql

