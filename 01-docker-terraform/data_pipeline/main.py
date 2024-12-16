import pandas as pd
from sqlalchemy import create_engine

df = pd.read_parquet("yellow_tripdata_2021-01.parquet")
engine = create_engine('postgresql://vee:theengineer@localhost:5432/airflow')

df.to_sql(
    "yellow_taxi_data",
    con=engine,
    if_exists="replace",
    chunksize=100000
)