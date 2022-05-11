echo "Running the init script"

psql -f /dbt/scripts/init.sql
psql -d dbt -f /dbt/scripts/schema.sql

# Install requirements
pip install --upgrade pip
pip install -r requirements.txt


# Add jaffle shop
wget https://raw.githubusercontent.com/dbt-labs/jaffle_shop/main/seeds/raw_customers.csv
wget https://raw.githubusercontent.com/dbt-labs/jaffle_shop/main/seeds/raw_orders.csv
wget https://raw.githubusercontent.com/dbt-labs/jaffle_shop/main/seeds/raw_payments.csv
psql -c 'CREATE DATABASE jaffle_shop'
python -m upload_jaffle_shop.py

rm raw_customers.csv
rm raw_orders.csv
rm raw_payments.csv


