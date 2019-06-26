SELECT p.name, COUNT(*) AS  'journeys_count'
FROM planets p
JOIN spaceports sp
ON p.id = sp.planet_id
JOIN journeys j
ON j.destination_spaceport_id = sp.id
GROUP BY p.name
ORDER BY journeys_count DESC, p.name;