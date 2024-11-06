CREATE OR REPLACE TABLE `UBER-DATA-GCP.UBER_DATA_ENGINEERING_PR.TBL_ANALYTICS` AS (
    SELECT
        F.TRIP_ID,
        F.VENDORID,
        D.TPEP_PICKUP_DATETIME,
        D.TPEP_DROPOFF_DATETIME,
        P.PASSENGER_COUNT,
        T.TRIP_DISTANCE,
        R.RATE_CODE_NAME,
        PICK.PICKUP_LATITUDE,
        PICK.PICKUP_LONGITUDE,
        DROP.DROPOFF_LATITUDE,
        DROP.DROPOFF_LONGITUDE,
        PAY.PAYMENT_TYPE_NAME,
        F.FARE_AMOUNT,
        F.EXTRA,
        F.MTA_TAX,
        F.TIP_AMOUNT,
        F.TOLLS_AMOUNT,
        F.IMPROVEMENT_SURCHARGE,
        F.TOTAL_AMOUNT
    FROM
        `UBER-DATA-GCP.UBER_DATA_ENGINEERING_PR.FACT_TABLE` F
        JOIN `UBER-DATA-GCP.UBER_DATA_ENGINEERING_PR.DATETIME_DIM` D
        ON F.DATETIME_ID=D.DATETIME_ID
        JOIN `UBER-DATA-GCP.UBER_DATA_ENGINEERING_PR.PASSENGER_COUNT_DIM` P
        ON P.PASSENGER_COUNT_ID=F.PASSENGER_COUNT_ID
        JOIN `UBER-DATA-GCP.UBER_DATA_ENGINEERING_PR.TRIP_DISTANCE_DIM` T
        ON T.TRIP_DISTANCE_ID=F.TRIP_DISTANCE_ID
        JOIN `UBER-DATA-GCP.UBER_DATA_ENGINEERING_PR.RATE_CODE_DIM` R
        ON R.RATE_CODE_ID=F.RATE_CODE_ID
        JOIN `UBER-DATA-GCP.UBER_DATA_ENGINEERING_PR.PICKUP_LOCATION_DIM` PICK
        ON PICK.PICKUP_LOCATION_ID=F.PICKUP_LOCATION_ID
        JOIN `UBER-DATA-GCP.UBER_DATA_ENGINEERING_PR.DROPOFF_LOCATION_DIM` DROP
        ON DROP.DROPOFF_LOCATION_ID=F.DROPOFF_LOCATION_ID
        JOIN `UBER-DATA-GCP.UBER_DATA_ENGINEERING_PR.PAYMENT_TYPE_DIM` PAY
        ON PAY.PAYMENT_TYPE_ID=F.PAYMENT_TYPE_ID
)