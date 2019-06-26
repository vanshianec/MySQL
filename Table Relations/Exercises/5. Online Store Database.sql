CREATE TABLE `cities` (
  `city_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`city_id`));

CREATE TABLE `customers` (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `birthday` DATE NOT NULL,
  `city_id` INT NOT NULL,
  PRIMARY KEY (`customer_id`),
  CONSTRAINT `city_id_fk`
    FOREIGN KEY (`city_id`)
    REFERENCES `cities` (`city_id`));

CREATE TABLE `orders` (
  `order_id` INT NOT NULL AUTO_INCREMENT,
  `customer_id` INT NOT NULL,
  PRIMARY KEY (`order_id`),
  CONSTRAINT `customer_id_fk`
    FOREIGN KEY (`customer_id`)
    REFERENCES `customers` (`customer_id`));

CREATE TABLE `item_types` (
  `item_type_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`item_type_id`));

CREATE TABLE `items` (
  `item_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `item_type_id` INT NOT NULL,
  PRIMARY KEY (`item_id`),
  CONSTRAINT `item_type_id_fk`
    FOREIGN KEY (`item_type_id`)
    REFERENCES `item_types` (`item_type_id`));

CREATE TABLE `order_items` (
  `order_id` INT NOT NULL,
  `item_id` INT NOT NULL,
  PRIMARY KEY (`order_id`, `item_id`));

ALTER TABLE order_items
ADD CONSTRAINT order_id_fk
FOREIGN KEY (order_id)
REFERENCES orders(order_id),
ADD CONSTRAINT item_id_fk
FOREIGN KEY (item_id)
REFERENCES items(item_id); 

