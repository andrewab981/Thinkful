SELECT
	start_station,
	COUNT(start_station)
FROM trips
GROUP BY 1;


SELECT
	trip_id,
	start_station,
	end_station,
	MIN(duration) AS trip_length
FROM trips
GROUP BY 
	trip_id,
	start_station,
	end_station
ORDER BY trip_length ASC
LIMIT 1;

SELECT
	end_station,
	AVG(duration)
FROM 
	trips
GROUP BY 1;