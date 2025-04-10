SELECT
    op.title,
    COUNT(op.operator_id) AS total_stations
FROM
    operators op
JOIN
    charging_stations cs ON op.operator_id = cs.operator_id
GROUP BY
    op.title
ORDER BY
    total_stations DESC;