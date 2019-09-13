# sql-workshop
Thanks to Ergast https://ergast.com/mrd/db/ for providing the data

This repo is to help set up a sample database to learn to run queries
against.

## Installing requirements:

Please run `$ ./install.sh` to install the requirements, including
docker and psql.  This script should work for you if you're on OSX.

It also will run a docker container that has postgres running, installs
a database installed with data in it.  Finally, it starts a `psql`
session, so that you may begin querying the databse.  Try `select * from
races limit 5;`!


## Continuing to run 

To get a new psql session going, try `$ psql -h localhost -U postgres -d f1db`

If you have another postgres database running, please stop it or run
this container on abother port.

To stop the database container, do `$ docker stop f1db-container`. A
full list of docker CLI commands can be found at
[docs.docker.com](https://docs.docker.com/engine/reference/commandline/cli/)

PostgresQL help can be found in their [excellent online
manual](https://www.postgresql.org/docs/current/index.html)


### Exercises

Answer the following with the output of a single query:

- How many races are listed in the database?
- How many circuits are in the UK?
- How many races have been held in circuits in the UK?
- How many races have been held in circuits in the UK before Jan 1 2015?
- What was the date of the first race in the database?
- How many different 'logical races' are in the database (e.g. Dutch
  Grand Prix, Monaco Grand Prix, etc)
- What was the latest date of every race (i.e. the latest of each Grand Prix?)

- What was the latest date of every race (i.e. the latest of each Grand Prix?) sorted by time since last run?
- What is the lastest completed result in the databse?


