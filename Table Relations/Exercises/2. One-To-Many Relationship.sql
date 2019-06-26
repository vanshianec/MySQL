CREATE TABLE `manufacturers` (
  `manufacturer_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `established_on` DATE NOT NULL,
  PRIMARY KEY (`manufacturer_id`));

CREATE TABLE `models` (
  `model_id` INT UNIQUE NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `manufacturer_id` INT NOT NULL,
  PRIMARY KEY (`model_id`),
  CONSTRAINT `manufacturer_fk`
    FOREIGN KEY (`manufacturer_id`)
    REFERENCES `manufacturers` (`manufacturer_id`));

INSERT INTO `manufacturers` (`manufacturer_id`, `name`, `established_on`) VALUES ('1', 'BMW', '1916-03-01');
INSERT INTO `manufacturers` (`manufacturer_id`, `name`, `established_on`) VALUES ('2', 'Tesla', '2003-01-01');
INSERT INTO `manufacturers` (`manufacturer_id`, `name`, `established_on`) VALUES ('3', 'Lada', '1966-05-01');

INSERT INTO `models` (`model_id`, `name`, `manufacturer_id`) VALUES ('101', 'X1', '1');
INSERT INTO `models` (`model_id`, `name`, `manufacturer_id`) VALUES ('102', 'i6', '1');
INSERT INTO `models` (`model_id`, `name`, `manufacturer_id`) VALUES ('103', 'Model S', '2');
INSERT INTO `models` (`model_id`, `name`, `manufacturer_id`) VALUES ('104', 'Model X', '2');
INSERT INTO `models` (`model_id`, `name`, `manufacturer_id`) VALUES ('105', 'Model 3', '2');
INSERT INTO `models` (`model_id`, `name`, `manufacturer_id`) VALUES ('106', 'Nova', '3');
