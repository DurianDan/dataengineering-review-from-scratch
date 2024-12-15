import pandas as pd

df = pd.read_parquet("/home/durian/learning/dataengineering-review-from-scratch/01-docker-terraform/yellow_tripdata_2021-01.parquet")
print(df.dtypes)