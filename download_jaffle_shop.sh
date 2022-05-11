wget https://raw.githubusercontent.com/dbt-labs/jaffle_shop/main/seeds/raw_customers.csv
wget https://raw.githubusercontent.com/dbt-labs/jaffle_shop/main/seeds/raw_orders.csv
wget https://raw.githubusercontent.com/dbt-labs/jaffle_shop/main/seeds/raw_payments.csv
psql -c 'CREATE DATABASE jaffle_shop'
