FROM postgres:latest

RUN apt-get update
RUN apt-get install -y \
      wget \
      unzip \
      git \
      build-essential \
      postgresql-server-dev-12

WORKDIR /home

RUN wget http://api.pgxn.org/dist/pgtap/1.0.0/pgtap-1.0.0.zip

RUN unzip pgtap-1.0.0.zip -d pgtap

WORKDIR /home/pgtap/pgtap-1.0.0/

RUN cpan TAP::Parser::SourceHandler::pgTAP

RUN make

RUN make install

COPY create-pgtap-extension.sql /docker-entrypoint-initdb.d/

WORKDIR /home

COPY tests/ /home/tests/

COPY f1db.sql /home

COPY import-db.sh /home

