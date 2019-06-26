CREATE TABLE people (
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    picture MEDIUMBLOB,
    height DOUBLE,
    weight DOUBLE,
    gender CHAR(1) NOT NULL,
    birthdate DATE NOT NULL,
    biography LONGTEXT
   
);

INSERT INTO `people`(`name`, `gender`, `birthdate`)
VALUES ('Pesho', 'm', '2000-01-10'),
		('Gosho', 'm', '1981-11-11'),
        ('Tosho', 'm', '1971-12-13'),
		('Maria', 'f', '1945-12-12'),
		('Ivan', 'm', '2000-01-30');
		