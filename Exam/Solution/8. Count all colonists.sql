SELECT COUNT(*)
FROM colonists c
JOIN travel_cards tc
ON c.id = tc.colonist_id
JOIN journeys j
ON j.id = tc.journey_id
WHERE j.purpose = 'Technical';