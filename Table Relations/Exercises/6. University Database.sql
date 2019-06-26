CREATE TABLE `majors` (
  `major_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`major_id`));

CREATE TABLE `students` (
  `student_id` INT NOT NULL AUTO_INCREMENT,
  `student_number` VARCHAR(12) NULL,
  `student_name` VARCHAR(50) NULL,
  `major_id` INT NULL,
  PRIMARY KEY (`student_id`),
  CONSTRAINT `major_id_fk`
    FOREIGN KEY (`major_id`)
    REFERENCES `majors` (`major_id`));

CREATE TABLE `payments` (
  `payment_id` INT NOT NULL AUTO_INCREMENT,
  `payment_date` DATE NULL,
  `payment_amount` DECIMAL(8,2) NULL,
  `student_id` INT NULL,
  PRIMARY KEY (`payment_id`),
  CONSTRAINT `student_id_fk`
    FOREIGN KEY (`student_id`)
    REFERENCES `students` (`student_id`));

CREATE TABLE `subjects` (
  `subject_id` INT NOT NULL AUTO_INCREMENT,
  `subject_name` VARCHAR(50) NULL,
  PRIMARY KEY (`subject_id`));

CREATE TABLE `agenda` (
  `student_id` INT NOT NULL,
  `subject_id` INT NOT NULL,
  PRIMARY KEY (`student_id`, `subject_id`));

ALTER TABLE agenda
ADD CONSTRAINT agenda_student_id_fk
FOREIGN KEY (student_id)
REFERENCES students(student_id),
ADD CONSTRAINT agenda_subject_id_fk
FOREIGN KEY (subject_id)
REFERENCES subjects(subject_id); 


