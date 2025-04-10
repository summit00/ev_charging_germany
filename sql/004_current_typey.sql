SELECT
    ct.title AS current_type,
    COUNT(c.connection_id) AS total_connections
FROM
    connections c
JOIN
    current_types ct ON c.current_type_id = ct.current_type_id
GROUP BY
    ct.title
ORDER BY
    total_connections DESC;

