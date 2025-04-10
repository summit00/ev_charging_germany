SELECT
    ct.title,
    c.connection_type_id,
    COUNT(connection_id) AS total_of_specific_connection_type
FROM
    connections c
JOIN    
    connection_types ct ON c.connection_type_id = ct.connection_type_id
GROUP BY
    ct.title,
    c.connection_type_id
ORDER BY
    total_of_specific_connection_type DESC;
