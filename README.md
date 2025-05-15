# sandbox-data-engineer
Playground of a Data Engineer


# Install DBT
1. Install dbt, postgres for local development
```
pip3 install dbt-core dbt-postgres
sudo apt update
sudo apt install postgresql postgresql-contrib
```
2. Create a dummy database 

```commandline
sudo systemctl enable postgresql
sudo systemctl start postgresql
sudo systemctl status postgresql
sudo -i u postgres
psql
```
3. Create generic user
```commandline
CREATE DATABASE mydb;
CREATE USER myuser WITH ENCRYPTED PASSWORD 'mypassword';
GRANT ALL PRIVILEGES ON DATABASE mydb TO myuser;
```