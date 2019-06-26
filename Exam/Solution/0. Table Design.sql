CREATE TABLE `planets` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `spaceports` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `planet_id` INT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `planet_id_fk`
    FOREIGN KEY (`planet_id`)
    REFERENCES `planets` (`id`));

CREATE TABLE `spaceships` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `manufacturer` VARCHAR(30) NOT NULL,
  `light_speed_rate` INT DEFAULT 0,
  PRIMARY KEY (`id`));

CREATE TABLE `colonists` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(20) NOT NULL,
  `last_name` VARCHAR(20) NOT NULL,
  `ucn` CHAR(10) UNIQUE NOT NULL,
  `birth_date` DATE NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `journeys` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `journey_start` DATETIME NOT NULL,
  `journey_end` DATETIME NOT NULL,
  `purpose` ENUM('Medical', 'Technical', 'Educational', 'Military') NOT NULL,
  `destination_spaceport_id` INT NULL,
  `spaceship_id` INT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `spaceport_id_fk`
    FOREIGN KEY (`destination_spaceport_id`)
    REFERENCES `spaceports` (`id`),
  CONSTRAINT `spaceship_id_fk`
    FOREIGN KEY (`spaceship_id`)
    REFERENCES `spaceships` (`id`));

CREATE TABLE `travel_cards` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `card_number` CHAR(10) UNIQUE NOT NULL,
  `job_during_journey` ENUM('Pilot', 'Engineer', 'Trooper', 'Cleaner', 'Cook') NOT NULL,
  `colonist_id` INT NULL,
  `journey_id` INT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `colonist_id_fk`
    FOREIGN KEY (`colonist_id`)
    REFERENCES `colonists` (`id`),
  CONSTRAINT `journey_id_fk`
    FOREIGN KEY (`journey_id`)
    REFERENCES `journeys` (`id`));




