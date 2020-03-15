-- ********************************************************
--                 Курсовая работа по MySQL               *
--                     GeekUniversity                     *
--                 на портале GeekBrains                  *
--           студента Турчина Богдана Пертовича           *
--    База данных интернет магазина Электроные Компоненты *
-- ********************************************************
DROP DATABASE if exists ek;
CREATE DATABASE ek;
use ek;
SHOW DATABASES;
SHOW tables;

-- Пользователи
DROP TABLE IF EXISTS users;
CREATE TABLE users(
	id serial PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(100),
	phone VARCHAR(12),
	`password` VARCHAR(25),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Таблица профилей
DROP TABLE IF EXISTS profiles_new;
CREATE TABLE profiles_new (
	user_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
	birthdate DATE,

	hometown VARCHAR(100),
	country VARCHAR(100),
  
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- -----------------------------------------------------
-- Table 'Электроные Компоненты'  main_table
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `main_table` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `products` VARCHAR(45) NOT NULL,
  `manufactures` VARCHAR(45) NOT NULL,
  `reference` VARCHAR(45) NOT NULL,
  `profiles` VARCHAR(45) NOT NULL,
  `manufactures_table_idmanufactures_table` INT ZEROFILL NOT NULL,
  `profiles_profiles_id` INT NOT NULL,
  PRIMARY KEY (`id`, `manufactures_table_idmanufactures_table`),
  INDEX `fk_main_table_manufactures_table1_idx` (`manufactures_table_idmanufactures_table` ASC) VISIBLE,
  INDEX `fk_main_table_profiles1_idx` (`profiles_profiles_id` ASC) VISIBLE,
  CONSTRAINT `main_table`
    FOREIGN KEY (`id`)
    REFERENCES `products_table` (`product_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_main_table_manufactures_table1`
    FOREIGN KEY (`manufactures_table_idmanufactures_table`)
    REFERENCES `manufactures_table` (`idmanufactures_table`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_main_table_profiles1`
    FOREIGN KEY (`profiles_profiles_id`)
    REFERENCES `profiles` (`profiles_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



USE vk;
DESC USERS;
SELECT * FROM users;
