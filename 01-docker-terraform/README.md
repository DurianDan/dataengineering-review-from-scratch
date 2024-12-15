# Content
- Airflow
- Docker
- GCP
- Terraform
- The data set used in the tutorial: [NY Yellow Taxi data](https://github.com/DataTalksClub/data-engineering-zoomcamp/tree/main/01-docker-terraform), with the schema:
```
VendorID                          int64
tpep_pickup_datetime     datetime64[us]
tpep_dropoff_datetime    datetime64[us]
passenger_count                 float64
trip_distance                   float64
RatecodeID                      float64
store_and_fwd_flag               object
PULocationID                      int64
DOLocationID                      int64
payment_type                      int64
fare_amount                     float64
extra                           float64
mta_tax                         float64
tip_amount                      float64
tolls_amount                    float64
improvement_surcharge           float64
total_amount                    float64
congestion_surcharge            float64
airport_fee                     float64
```