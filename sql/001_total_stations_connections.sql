SELECT
    (SELECT COUNT(station_id) FROM charging_stations) AS total_stations,
    (SELECT COUNT(connection_id) FROM connections) AS total_connections,
    (SELECT COUNT(operator_id) FROM operators) AS total_operators