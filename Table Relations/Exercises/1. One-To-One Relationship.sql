CREATE TABLE `passports` (
  `passport_id` INT NOT NULL AUTO_INCREMENT UNIQUE,
  `passport_number` VARCHAR(45) NOT NULL UNIQUE,
  PRIMARY KEY (`passport_id`));

CREATE TABLE `persons` (
  `person_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `salary` DECIMAL(10,2) NOT NULL,
  `passport_id` INT NOT NULL UNIQUE,
  PRIMARY KEY (`person_id`),
  CONSTRAINT `passport_id`
    FOREIGN KEY (`passport_id`)
    REFERENCES `passports` (`passport_id`));

INSERT INTO `passports` (`passport_id`, `passport_number`) VALUES ('101', 'N34FG21B');
INSERT INTO `passports` (`passport_id`, `passport_number`) VALUES ('102', 'K65LO4R7');
INSERT INTO `passports` (`passport_id`, `passport_number`) VALUES ('103', 'ZE657QP2');

INSERT INTO  `persons` (`person_id`, `first_name`, `salary`, `passport_id`) VALUES ('1', 'Roberto', '43300.00', '102');
INSERT INTO  `persons` (`person_id`, `first_name`, `salary`, `passport_id`) VALUES ('2', 'Tom', '56100.00', '103');
INSERT INTO `persons` (`person_id`, `first_name`, `salary`, `passport_id`) VALUES ('3', 'Yana', '60200.00', '101');

