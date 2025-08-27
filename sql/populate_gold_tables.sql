INSERT INTO dbo.HVAC_Gold_Temperature
SELECT 
    s.event_time,
    s.location_type,
    s.temperature,
    s.humidity,
    CASE 
        WHEN ABS(indoor.temperature - outdoor.temperature) > 6 THEN 1 
        ELSE 0 
    END AS anomaly_flag
FROM Silver_Indoor s
JOIN Silver_Outdoor o ON s.event_time = o.event_time;
