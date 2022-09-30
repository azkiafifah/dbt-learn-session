SELECT ROW_NUMBER() OVER (ORDER BY lpep_pickup_datetime) AS tripID , * FROM

(
SELECT DISTINCT * FROM `data-fellowship-7.dbt_aafifah.green_tripdata_2021-04`
UNION DISTINCT

SELECT DISTINCT * FROM `data-fellowship-7.dbt_aafifah.green_tripdata_2021-05`
UNION DISTINCT

SELECT DISTINCT * FROM `data-fellowship-7.dbt_aafifah.green_tripdata_2021-06`
)