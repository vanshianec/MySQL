SELECT sh.name, sh.manufacturer
FROM spaceships sh
JOIN journeys j
ON sh.id = j.spaceship_id
JOIN travel_cards tc
ON tc.journey_id = j.id
JOIN colonists c 
ON c.id = tc.colonist_id
WHERE TIMESTAMPDIFF(YEAR, c.birth_date, '2019-01-01') < 30 AND tc.job_during_journey = 'Pilot'
ORDER BY sh.name;