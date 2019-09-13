#!/bin/bash
set -xeo pipefail

if [[ "$OSTYPE" == "darwin"* ]]; then
  if ! docker --version; then
    echo 'installing docker...'
    brew cask install docker
  fi
  if ! brew list libpq; then
    echo 'installing libpq to install psql...'
    brew install libpq
    brew link --force libpq
  fi
else
  echo "you're not on a mac..."
  echo "Please make sure docker is installed https://docs.docker.com/docker-for-windows/install/"
  echo "Please also install a PostgreSQL client like psql or dbeaver https://dbeaver.io/download/"
fi

docker run --name f1db-container --detach --publish 5432:5432  mlennon3/formula1-db-postgres:latest

sleep 30

docker exec f1db-container /home/import-db.sh

psql --host localhost --username postgres -d f1db
