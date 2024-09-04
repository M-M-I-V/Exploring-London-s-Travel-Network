SELECT journey_type, SUM(journeys_millions) AS total_journeys_millions
FROM tfl.journeys
GROUP BY journey_type
ORDER BY total_journeys_millions DESC;