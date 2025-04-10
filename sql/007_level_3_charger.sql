SELECT
    level_id,
    COUNT(connection_id) AS total_connections_of_level_3
FROM    
    connections
GROUP BY
    level_id

