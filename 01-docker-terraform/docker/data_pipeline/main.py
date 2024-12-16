import pandas as pd
from sqlalchemy import create_engine
from os import getenv

dataset_path = "./yellow_tripdata_2021-01.parquet"
print("Reading data from ", dataset_path)
df = pd.read_parquet(dataset_path)


pg_user = getenv("POSTGRES_USER")
pg_password = getenv("POSTGRES_PASSWORD")
pg_db = getenv("POSTGRES_DB")
server_url = getenv("LOCAL_DEVELOPMENT_PG_URL")
server_url = server_url if server_url else "postgres"
engine = create_engine(f'postgresql://{pg_user}:{pg_password}@{server_url}:5432/{pg_db}')

print("Ingesting data into the database")
df.to_sql(
    "yellow_taxi_data",
    con=engine,
    if_exists="replace",
    chunksize=100000
)