use mta_db;
SELECT station_name AS Station, 
	jurisdiction AS Jurisdiction, 
    station_type AS "Station Type", s1.feature, 
    location AS Location 
    
    FROM stations
JOIN (
    SELECT facility_features AS Feature
	FROM facility_features
	WHERE facility_id = 2
	GROUP BY facility_features) AS s1
    WHERE jurisdiction = "Montgomery County";
    
    
    SELECT station_id AS "Station ID", 
    station_name AS "Station Name", 
    COALESCE(NULLIF(jurisdiction, ''), 'N/A') AS County, 
    COALESCE(NULLIF(station_type, ''), 'N/A') AS "Station Type", 
    information_presence AS "Information Presence" 
    FROM stations 
    JOIN travel_information_linking USING(station_id)
    
