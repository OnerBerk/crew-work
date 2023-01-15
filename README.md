# crew-work

Api de travail collaboratif

### Create User with privlege

````postgres-sql
CREATE USER crewwork WITH PASSWORD 'crewwork';
CREATE DATABASE crewwork;
GRANT CREATE ON DATABASE crewwork TO crewwork;
ALTER USER crewwork WITH SUPERUSER;
\connect crewwork;
create schema crewwork authorization crewwork;
GRANT ALL PRIVILEGES ON DATABASE crewwork to crewwork;
`````
