SELECT
	stations.name station_name,
	COUNT(trips.start_station) trips_started,
	stations.dockcount
from
	stations
JOIN
	trips
ON
	trips.start_station = stations.name
GROUP BY 1,3
ORDER BY stations.dockcount DESC;
	