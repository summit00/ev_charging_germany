-- Load countries
COPY countries(country_id, title, iso_code, continent_code)
FROM 'path_to_your_file/countries.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

-- Load current_types
COPY current_types(current_type_id, title, description)
FROM 'path_to_your_file/current_types.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

-- Load operators
COPY operators(operator_id, title, website)
FROM 'path_to_your_file/operators.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

-- Load charging_stations
COPY charging_stations(
    station_id, title, city, postcode, country_id,
    latitude, longitude, operator_id, usage_type_id,
    status_type_id, data_provider_id, date_created, date_updated
)
FROM 'path_to_your_file/charging_stations.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

-- Load connections
COPY connections(
    connection_id, station_id, connection_type_id, level_id,
    current_type_id, voltage, amps, power_kw, quantity
)
FROM 'path_to_your_file/connections.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

-- Load connections_types
COPY connection_types(
    connection_type_id, title, formal_name, is_obsolete, is_discontinued
)
FROM 'path_to_your_file/connections_types.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
