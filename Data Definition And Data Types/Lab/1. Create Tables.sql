CREATE TABLE `employees`(
	`id` INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    `first_name` VARCHAR(45) NOT NULL,
    `last_name` VARCHAR(45) NOT NULL
);
CREATE TABLE `categories`(
	`id` INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    `name` VARCHAR(45) NOT NULL
);
CREATE TABLE `products`(
	`id` INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    `name` VARCHAR(45) NOT NULL,
    `category_id` INT NOT NULL
);