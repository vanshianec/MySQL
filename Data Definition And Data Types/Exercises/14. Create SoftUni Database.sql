CREATE TABLE towns(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(45) NOT NULL
);

CREATE TABLE addresses(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    address_text VARCHAR(45) NOT NULL,
    town_id INT NOT NULL,
    FOREIGN KEY (town_id) REFERENCES towns(id)
);

CREATE TABLE departments(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(45) NOT NULL
);

CREATE TABLE employees(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(45) NOT NULL,
    middle_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    job_title VARCHAR(45) NOT NULL,
	department_id INT,
    hire_date DATE NOT NULL,
    salary DOUBLE NOT NULL,
    address_id INT,
	FOREIGN KEY (department_id) REFERENCES departments(id),
    FOREIGN KEY (address_id) REFERENCES addresses(id)
);