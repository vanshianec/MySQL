CREATE TABLE `projects` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `client_id` INT NOT NULL,
  `project_lead_id` INT NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `clients` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `client_name` VARCHAR(100) NOT NULL,
  `project_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `project_id`
    FOREIGN KEY (`project_id`)
    REFERENCES `projects` (`id`)
);

CREATE TABLE `employees` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(30) NOT NULL,
  `last_name` VARCHAR(30) NOT NULL,
  `project_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `project_id_employee`
    FOREIGN KEY (`project_id`)
    REFERENCES `projects` (`id`)
);


ALTER TABLE `projects` 
ADD CONSTRAINT `client_id`
  FOREIGN KEY (`client_id`)
  REFERENCES `clients` (`id`),
ADD CONSTRAINT `project_lead_id`
  FOREIGN KEY (`project_lead_id`)
  REFERENCES `employees` (`id`);


