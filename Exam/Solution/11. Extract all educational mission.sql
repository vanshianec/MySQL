SELECT p.name,s.name 
FROM planets p
JOIN spaceports s
ON p.id = s.planet_id
JOIN journeys j
ON j.destination_spaceport_id = s.id
WHERE j.purpose = 'Educational'
ORDER BY s.name DESC;