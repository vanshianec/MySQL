CREATE PROCEDURE udp_modify_spaceship_light_speed_rate(spaceship_name VARCHAR(50), light_speed_rate_increse INT(11))
  BEGIN
    IF (SELECT count(name) FROM spaceships WHERE name = spaceship_name != 0) THEN
		UPDATE spaceships
        SET light_speed_rate = light_speed_rate + light_speed_rate_increse
        WHERE name = spaceship_name;
    ELSE
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Spaceship you are trying to modify does not exists.';
      ROLLBACK;
    END IF;
  END