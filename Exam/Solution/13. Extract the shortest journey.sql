SELECT j.id, p.name, sp.name, j.purpose
FROM journeys j
JOIN spaceports sp
ON j.destination_spaceport_id = sp.id
JOIN planets p
ON sp.planet_id = p.id
ORDER BY DATEDIFF(j.journey_start,j.journey_end) DESC
LIMIT 1;