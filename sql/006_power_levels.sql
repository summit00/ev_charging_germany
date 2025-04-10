SELECT
    power_kw,
    COUNT(connection_id) AS amount_of_that_power
FROM
    connections
GROUP BY
    power_kw
ORDER BY
    amount_of_that_power DESC