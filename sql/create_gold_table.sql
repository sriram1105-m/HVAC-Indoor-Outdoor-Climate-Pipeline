-- Gold: Indoor Aggregated Table
CREATE TABLE [gold].[iot_indoor_aggregated] (
    event_time DATETIME,
    indoor_temperature FLOAT,
    indoor_humidity FLOAT,
    device_id NVARCHAR(50),
    location NVARCHAR(100)
);

-- Gold: Outdoor Aggregated Table
CREATE TABLE [gold].[iot_outdoor_aggregated] (
    event_time DATETIME,
    outdoor_temperature FLOAT,
    outdoor_humidity FLOAT,
    weather_code INT,
    wind_speed FLOAT,
    location NVARCHAR(100)
);

-- Gold: Indoor vs Outdoor Combined Table
CREATE TABLE [gold].[iot_indoor_outdoor_aggregated] (
    event_time DATETIME,
    indoor_temperature FLOAT,
    indoor_humidity FLOAT,
    outdoor_temperature FLOAT,
    outdoor_humidity FLOAT,
    temperature_delta FLOAT,
    humidity_delta FLOAT,
    location NVARCHAR(100)
);
