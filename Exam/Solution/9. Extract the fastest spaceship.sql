SELECT sh.name, sp.name 
FROM spaceships sh
JOIN journeys j
ON sh.id = j.spaceship_id
JOIN spaceports sp
ON j.destination_spaceport_id = sp.id
ORDER BY sh.light_speed_rate DESC LIMIT 1;