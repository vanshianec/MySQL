CREATE FUNCTION udf_count_colonists_by_destination_planet(planet_name VARCHAR(30))
RETURNS INT
RETURN (
   SELECT COUNT(*)
	FROM planets p
	JOIN spaceports sp
	ON p.id = sp.planet_id
	JOIN journeys j
	ON sp.id = j.destination_spaceport_id
	JOIN travel_cards tc
	ON tc.journey_id = j.id
	WHERE p.name = planet_name
);