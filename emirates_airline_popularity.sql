SELECT month, year, ROUND(SUM(journeys_millions), 2) AS rounded_journeys_millions
FROM tfl.journeys
WHERE journey_type = 'Emirates Airline'
  AND journeys_millions IS NOT NULL
GROUP BY month, year
ORDER BY rounded_journeys_millions DESC
LIMIT 5;