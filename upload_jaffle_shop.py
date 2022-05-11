#!/usr/bin/env python3

if __name__ == "__main__":
    from sqlalchemy import create_engine
    import pandas as pd
    engine = create_engine('postgresql://gitpod:gitpod@localhost:5432/jaffle_shop')
    shop_files = ['raw_customers.csv', 'raw_orders.csv', 'raw_payments.csv']
    for shop_file in shop_files:
        df = pd.read_csv(shop_file)
        df.to_sql(shop_file.split(".")[0], con = engine)
    
