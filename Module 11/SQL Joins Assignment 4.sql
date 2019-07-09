WITH
	rainy_days
AS(
	SELECT
		DATE(date) rain
	FROM 
		weather
	WHERE
		events = 'Rain'
	GROUP BY 1
),

rainy_trips
AS(
	SELECT 
		trip_id,
		duration,
		DATE(start_date) trip_start
	FROM
		trips
	JOIN
		rainy_days
	ON
		rainy_days.rain = DATE(start_date)
	)

SELECT
	trip_start,
	max(duration) long
FROM
	rainy_trips
GROUP BY 1
ORDER BY long DESC;

;