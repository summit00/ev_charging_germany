SELECT
    cs.station_id,
    cs.title,
    COUNT(c.connection_id) AS number_of_connections,
    COUNT(DISTINCT c.connection_type_id) AS distinct_connection_types
FROM
    connections c
JOIN
    charging_stations cs ON c.station_id = cs.station_id
GROUP BY
    cs.station_id, cs.title
ORDER BY
    number_of_connections DESC;
