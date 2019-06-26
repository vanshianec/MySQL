CREATE TABLE `users` (
	`id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `username` VARCHAR(30) NOT NULL,
    `password` VARCHAR(26) NOT NULL,
    `profile_picture` BLOB,
    `last_login_time` DATETIME,
    `is_deleted` BOOLEAN
);

INSERT INTO `users` (`username`, `password`)
VALUES
('pesho_hackera', '214124'),
('misho_golemiq' , 'fgjsdklgjfsdl'),
('gosho_spec' , '#*8jgfg'),
('the one', 'gfdkjg545'),
('jfjiiii', '543436546546');