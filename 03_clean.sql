CREATE TABLE cleaned_combined_data AS
SELECT 
    a.ride_id, 
    a.rideable_type, 
    a.started_at, 
    a.ended_at, 
    (julianday(a.ended_at) - julianday(a.started_at)) * 24 * 60 AS ride_length,
    
    CASE strftime('%w', a.started_at)
        WHEN '0' THEN 'SUN'
        WHEN '1' THEN 'MON'
        WHEN '2' THEN 'TUES'
        WHEN '3' THEN 'WED'
        WHEN '4' THEN 'THURS'
        WHEN '5' THEN 'FRI'
        WHEN '6' THEN 'SAT'
    END AS day_of_week,

    CASE strftime('%m', a.started_at)
        WHEN '01' THEN 'JAN'
        WHEN '02' THEN 'FEB'
        WHEN '03' THEN 'MAR'
        WHEN '04' THEN 'APR'
        WHEN '05' THEN 'MAY'
        WHEN '06' THEN 'JUN'
        WHEN '07' THEN 'JUL'
        WHEN '08' THEN 'AUG'
        WHEN '09' THEN 'SEP'
        WHEN '10' THEN 'OCT'
        WHEN '11' THEN 'NOV'
        WHEN '12' THEN 'DEC'
    END AS month,

    a.start_station_name, 
    a.end_station_name, 
    a.start_lat, 
    a.start_lng, 
    a.end_lat, 
    a.end_lng, 
    a.member_casual

FROM "2022_tripdata.combined_data" a
WHERE 
    a.start_station_name IS NOT NULL AND
    a.end_station_name IS NOT NULL AND
    a.end_lat IS NOT NULL AND
    a.end_lng IS NOT NULL AND
    ((julianday(a.ended_at) - julianday(a.started_at)) * 24 * 60) > 1 AND
    ((julianday(a.ended_at) - julianday(a.started_at)) * 24 * 60) < 1440;
