CREATE TABLE directors(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    director_name VARCHAR(45) NOT NULL,
    notes LONGTEXT
);

CREATE TABLE genres(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(45) NOT NULL,
    notes LONGTEXT
);

CREATE TABLE categories(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(45) NOT NULL,
    notes LONGTEXT
);

CREATE TABLE movies(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(45) NOT NULL,
    director_id INT NOT NULL,
    copyright_year DATETIME,
    length INT,
    genre_id INT NOT NULL,
    category_id INT NOT NULL,
    rating INT,
    notes LONGTEXT
);

INSERT INTO `directors` (`director_name`)
VALUES
('Pesho'),
('Misho'),
('Ivan'),
('Maria'),
('Penka');

INSERT INTO `genres` (`genre_name`)
VALUES
('sci-fi'),
('horror'),
('action'),
('adventure'),
('comedy');

INSERT INTO `categories` (`category_name`)
VALUES
('TV series'),
('movies'),
('###'),
('##'),
('####');

INSERT INTO `movies` (`title`, `director_id`, `genre_id`, `category_id`)
VALUES
('Avengers: Endgame', 1, 3, 4),
('Avengers: Infinity War',2, 2, 2),
('Captain America: Civil War', 3, 1, 3),
('Doctor Strange', 4, 4, 1),
('Thor: Ragnarok', 5, 5, 5);



