CREATE TABLE `teachers` (
  `teacher_id` INT UNSIGNED UNIQUE NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `manager_id` INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`teacher_id`));

INSERT INTO `teachers` (`teacher_id`, `name`, `manager_id`) VALUES ('101', 'John', NULL);
INSERT INTO `teachers` (`teacher_id`, `name`, `manager_id`) VALUES ('102', 'Maya', '106');
INSERT INTO `teachers` (`teacher_id`, `name`, `manager_id`) VALUES ('103', 'Silvia', '106');
INSERT INTO `teachers` (`teacher_id`, `name`, `manager_id`) VALUES ('104', 'Ted', '105');
INSERT INTO `teachers` (`teacher_id`, `name`, `manager_id`) VALUES ('105', 'Mark', '101');
INSERT INTO `teachers` (`teacher_id`, `name`, `manager_id`) VALUES ('106', 'Greta', '101');


ALTER TABLE `teachers` 
ADD CONSTRAINT `manager_fk`
  FOREIGN KEY (`manager_id`)
  REFERENCES `teachers` (`teacher_id`);