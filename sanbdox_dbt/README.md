## DBT Sandbox

# Install DBT
1. Install dbt, postgres for local development
```
pip3 install dbt-core dbt-postgres
sudo apt update
sudo apt install postgresql postgresql-contrib
```

Spec


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

# Q&A
- Q: Can I put profile.yml into a different location than `.dbt` and reference it in `dbt_project.yml`?
  - A: No, unless the file is located elsewhere and its location is set via the system environment variable.
- Q: Is it mandatory to put `schema` in `profiles.yml`?
  - A: It is not strictly mandatory, but strongly advised to define `schema` in the `profiles.yml`.
- Q: Where should I put validation tests?
  - A: For schema level tests - place them alongside the schema model in `models`. For example `models/v_customer.sql` and `models/v_customer.yml`. 
  For SQL tests that are similar to UNIT tests, place them in the tests directory.