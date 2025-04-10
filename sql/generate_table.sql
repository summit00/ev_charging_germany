-- countries
CREATE TABLE countries (
    country_id INT PRIMARY KEY,
    title TEXT,
    iso_code TEXT,
    continent_code TEXT
);

-- current types
CREATE TABLE current_types (
    current_type_id INT PRIMARY KEY,
    title TEXT,
    description TEXT
);

-- operators
CREATE TABLE operators (
    operator_id INT PRIMARY KEY,
    title TEXT,
    website TEXT
);

-- charging_stations
CREATE TABLE charging_stations (
    station_id INT PRIMARY KEY,
    title TEXT,
    city TEXT,
    postcode TEXT,
    country_id INT,
    latitude FLOAT,
    longitude FLOAT,
    operator_id INT,
    usage_type_id INT,
    status_type_id INT,
    data_provider_id INT,
    date_created TIMESTAMP,
    date_updated TIMESTAMP
);


-- connections
CREATE TABLE connections (
    connection_id INT PRIMARY KEY,
    station_id INT,
    connection_type_id INT,
    level_id INT,
    current_type_id INT,
    voltage INT,
    amps INT,
    power_kw INT,
    quantity INT,
    FOREIGN KEY (station_id) REFERENCES charging_stations(station_id),
    FOREIGN KEY (current_type_id) REFERENCES current_types(current_type_id)
);

-- connection types
CREATE TABLE IF NOT EXISTS connection_types (
    connection_type_id INT PRIMARY KEY,
    title TEXT,
    formal_name TEXT,
    is_obsolete BOOLEAN,
    is_discontinued BOOLEAN
);
