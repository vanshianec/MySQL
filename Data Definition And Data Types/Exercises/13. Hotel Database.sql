CREATE TABLE employees (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(45) NOT NULL,
	last_name VARCHAR(45) NOT NULL,
	title VARCHAR(45) NOT NULL,
	notes LONGTEXT
);

CREATE TABLE customers (
	account_number INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(45) NOT NULL,
	last_name VARCHAR(45) NOT NULL,
	phone_number VARCHAR(45) NOT NULL,
	emergency_name VARCHAR(45) NOT NULL,
	emergency_number INT NOT NULL,
    notes LONGTEXT
);

CREATE TABLE room_status(
	room_status VARCHAR(45) NOT NULL PRIMARY KEY,
    notes LONGTEXT
);

CREATE TABLE room_types(
	room_type VARCHAR(45) NOT NULL PRIMARY KEY,
    notes LONGTEXT
);

CREATE TABLE bed_types(
	bed_type VARCHAR(45) NOT NULL PRIMARY KEY,
    notes LONGTEXT
);

CREATE TABLE rooms (
	room_number INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	room_type VARCHAR(45) NOT NULL,
	bed_type VARCHAR(45) NOT NULL,
	rate DOUBLE NOT NULL,
	room_status VARCHAR(45) NOT NULL,
	notes LONGTEXT
);

CREATE TABLE payments (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	employee_id INT NOT NULL,
	payment_date DATE NOT NULL,
	account_number INT NOT NULL,
    first_date_occupied DATE,
    last_date_occupied DATE,
    total_days INT,
    amount_charged DOUBLE,
    tax_rate DOUBLE,
    tax_amount DOUBLE,
    payment_total DOUBLE,
    notes LONGTEXT
);

CREATE TABLE occupancies (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	employee_id INT NOT NULL,
	date_occupied DATE NOT NULL,
	account_number INT NOT NULL,
    room_number INT NOT NULL,
    rate_applied DOUBLE,
    phone_charge DOUBLE,
    notes LONGTEXT
);

INSERT INTO `employees`
(`first_name`, `last_name`, `title`)
VALUES 
('Gosho', 'Goshov', 'The one'),
('Pesho', 'Peshov', 'No one'),
('Tosho', 'Toshov', 'The boss');

INSERT INTO `customers`
(`first_name`, `last_name`, `phone_number`, `emergency_name`, `emergency_number`)
VALUES 
('Pesho', 'Peshov', '0854376413', 'The P', 1453),
('Gosho', 'Goshov', '0854353432', 'GOOO', 2432),
('Misho', 'Mishov', '0859435543', 'MIssh', 34324);

INSERT INTO `room_status`
(`room_status`)
VALUES 
('Taken'),
('Free'),
('Unavailable');

INSERT INTO `room_types`
(`room_type`)
VALUES 
('One bed'),
('Two beds'),
('Studio');

INSERT INTO `bed_types`
(`bed_type`)
VALUES 
('Small'),
('Medium'),
('Big');

INSERT INTO `rooms`
(`room_type`, `bed_type`, `rate`, `room_status`)
VALUES 
('One Bed', 'Small', 4.2, 'Unavailable'),
('Two beds', 'Medium', 4.3, 'Free'),
('Studio', 'Big', 4.9 , 'Taken');

INSERT INTO `payments`
(`employee_id`, `payment_date`, `account_number`)
VALUES 
(1, NOW(), 54),
(2, NOW(), 43),
(3, NOW(), 21);

INSERT INTO `occupancies`
(`employee_id`, `date_occupied`, `account_number`, `room_number`)
VALUES
(1, NOW(), 43, 21),
(2, NOW(), 32, 12),
(3, NOW(), 12, 21);