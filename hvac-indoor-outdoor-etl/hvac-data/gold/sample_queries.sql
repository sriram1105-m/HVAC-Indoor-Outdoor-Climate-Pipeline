-- Check high temperature delta (> 5°C)
SELECT event_time, indoor_temperature, outdoor_temperature, temperature_delta
FROM gold.iot_indoor_outdoor_aggregated
WHERE temperature_delta > 5
ORDER BY event_time DESC;

-- Get humidity anomalies
SELECT *
FROM gold.iot_indoor_outdoor_aggregated
WHERE humidity_delta > 20;
