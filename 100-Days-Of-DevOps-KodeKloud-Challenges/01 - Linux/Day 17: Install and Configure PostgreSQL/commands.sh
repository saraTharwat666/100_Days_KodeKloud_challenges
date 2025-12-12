ssh peter@stdb01 # ssh to the DB server

sudo su - postgres # switch to postgres user

psql # access the PostgreSQL prompt

CREATE USER kodekloud_sam WITH PASSWORD 'dCV3szSGNA';
CREATE DATABASE kodekloud_db4;
GRANT ALL PRIVILEGES ON DATABASE kodekloud_db4 TO kodekloud_sam;

\q