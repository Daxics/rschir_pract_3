CREATE DATABASE IF NOT EXISTS appDB2;
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'mypass';
GRANT SELECT,UPDATE,INSERT ON appDB2.* TO 'user'@'%';
FLUSH PRIVILEGES;
set names 'utf8';

use appDB2;
CREATE TABLE IF NOT EXISTS users (user varchar(191) not null, passwd char(191), primary key (user));
INSERT INTO users VALUE ('user', '$apr1$g/9PpRf1$Tl9zPvUnToKdiGt8hRap//');



CREATE TABLE `orders` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(200),
	`type` VARCHAR(200),
	PRIMARY KEY (`id`)
);
INSERT INTO orders VALUE (NULL, 'Алексей', '3 рака, но большие'); 
INSERT INTO orders VALUE (NULL, 'Ваня', '5 раков, но маленькие'); 
INSERT INTO orders VALUE (NULL, 'Генадий', '2 чайника с мато'); 
INSERT INTO orders VALUE (NULL, 'Андрей', 'онвог'); 
INSERT INTO orders VALUE (NULL, 'Ярослав', 'кум'); 