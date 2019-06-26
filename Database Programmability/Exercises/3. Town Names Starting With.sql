CREATE PROCEDURE usp_get_towns_starting_with(town_name VARCHAR(20))
BEGIN
SELECT t.name
FROM towns t
WHERE t.name LIKE CONCAT(town_name,'%')
ORDER BY t.name;
END