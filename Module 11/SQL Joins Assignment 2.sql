WITH
	docks
AS(
	SELECT
		status.station_id,
		COUNT(CASE WHEN docks_available = 0 THEN 1 END) something
	FROM 
		status
	GROUP BY 1
)
SELECT 
	docks.station_id,
	stations.name,
	docks.something
FROM
	docks
JOIN
	stations
ON
	stations.station_id = docks.station_id
GROUP BY 1,2,3;

