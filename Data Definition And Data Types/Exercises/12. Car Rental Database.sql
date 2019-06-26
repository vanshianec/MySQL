CREATE TABLE categories (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	category VARCHAR(45) NOT NULL,
	daily_rate DOUBLE NOT NULL,
	weekly_rate DOUBLE NOT NULL,
	monthly_rate DOUBLE NOT NULL,
	weekend_rate DOUBLE NOT NULL
);

CREATE TABLE cars (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	plate_number VARCHAR(45) NOT NULL,
	make VARCHAR(45) NOT NULL,
	model VARCHAR(45) NOT NULL,
	car_year YEAR NOT NULL,
	category_id INT NOT NULL,
	doors INT NOT NULL,
	picture BLOB,
	car_condition VARCHAR(45),
	available BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE employees (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(45) NOT NULL,
	last_name VARCHAR(45) NOT NULL,
	title VARCHAR(45) NOT NULL,
	notes LONGTEXT
);

CREATE TABLE customers (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	driver_licence_number VARCHAR(45) NOT NULL,
	full_name VARCHAR(100) NOT NULL,
	address VARCHAR(45) NOT NULL,
	city VARCHAR(45) NOT NULL,
	zip_code INT NOT NULL,
	notes LONGTEXT
);

CREATE TABLE rental_orders (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	employee_id INT NOT NULL,
	customer_id INT NOT NULL,
	car_id INT NOT NULL,
	car_condition VARCHAR(45),
	tank_level INT,
	kilometrage_start INT,
	kilometrage_end INT,
	total_kilometrage INT,
	start_date DATETIME,
	end_date DATETIME,
	total_days INT,
	rate_applied DOUBLE,
	tax_rate DOUBLE,
	order_status VARCHAR(45),
	notes LONGTEXT
);

INSERT INTO categories
(`category`, `daily_rate`, `weekly_rate`, `monthly_rate`, `weekend_rate`)
VALUES 
('Big', 3.3, 2.2, 4.1, 3.5),
('Small', 2.2, 3.3, 5.3, 1.4),
('Medium', 1.1, 1.3, 1.4, 4.4);

INSERT INTO `cars`
(`plate_number`, `make`, `model`, `car_year`, `category_id`, `doors`)
VALUES 
('gdf54', 'Pesho', 'BMW M3 GTR', '2005', 1, 4 ),
('f454', 'Gosho', 'Tesla Model S', '2012', 2, 5),
('432fg', 'Misho', 'Tesal Roadster', '2019', 3, 6);

INSERT INTO `employees`
(`first_name`, `last_name`, `title`)
VALUES 
('Gosho', 'Goshov', 'The one'),
('Pesho', 'Peshov', 'No one'),
('Tosho', 'Toshov', 'The boss');

INSERT INTO `customers`
(`driver_licence_number`, `full_name`, `address`, `city`, `zip_code`)
VALUES 
('6546547', 'Gosho Goshov', 'Vasil Aprilov 13', 'Sofia', 1000),
('5435435', 'Pesho Peshov', 'Dame Gruev 1', 'Pleven', 4000),
('6436436', 'Tosho Toshov', 'Vasil Levski 3', 'Varna', 2000);

INSERT INTO `rental_orders`
(`employee_id`, `customer_id`, `car_id`, `car_condition`)
VALUES 
(1, 4, 3, 'Scrap'),
(2, 5, 2, 'Bad'),
(3, 6, 1, 'Excellent');