SELECT
    DATE_TRUNC('year', date_created) AS year,
    COUNT(*) AS stations_added
FROM
    charging_stations
WHERE
    date_created >= CURRENT_DATE - INTERVAL '20 year'
GROUP BY
    year
ORDER BY
    year;
