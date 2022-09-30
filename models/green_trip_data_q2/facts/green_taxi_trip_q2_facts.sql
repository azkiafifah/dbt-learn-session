-- Fact table can contains:
-- 1. Primary Key
-- 2. Datetime which defined by the Primary Key
-- 3. Foreign Key

SELECT tripID, 
       lpep_pickup_datetime, 
       lpep_dropoff_datetime, 
       CAST(vendorID AS INT64) as vendorID,
       CAST(RatecodeID AS INT64) as RatecodeID,
       CAST(PULocationID AS INT64) as PULocationID,
       CAST(DOLocationID AS INT64) as DOLocationID

FROM {{ ref('green_taxi_trip_q2_union') }}

ORDER BY tripID