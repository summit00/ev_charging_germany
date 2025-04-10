SELECT
    city, 
    COUNT(station_id) AS total,
    country_id
FROM   
    charging_stations
WHERE 
    country_id = 87
GROUP BY
    city,
    country_id
ORDER BY
    total DESC
