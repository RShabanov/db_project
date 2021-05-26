-- Bookshop (creating tables)


CREATE TABLE IF NOT EXISTS `book_genres` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`id`),
    UNIQUE (`name`)
);

CREATE TABLE IF NOT EXISTS `languages` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE (`name`)
);


CREATE TABLE IF NOT EXISTS `publisher_location` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `city` VARCHAR(255) NOT NULL,
    `region` VARCHAR(255) NOT NULL,
    `country` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `location` UNIQUE (`city`, `region`, `country`)
);


CREATE TABLE IF NOT EXISTS `publishers` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `location_id` INT UNSIGNED NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`location_id`) 
        REFERENCES `publisher_location` (`id`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    CONSTRAINT `publisher` UNIQUE (`name`, `location_id`)
);


CREATE TABLE IF NOT EXISTS `books` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `genre_id` INT UNSIGNED NOT NULL,
    `description` TEXT,
    `available` BOOLEAN DEFAULT TRUE,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`genre_id`) 
        REFERENCES `book_genres` (`id`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS `book_details` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `book_id` INT UNSIGNED NOT NULL,
    `publisher_id` INT UNSIGNED NOT NULL,
    `publish_date` DATE NOT NULL,
    `language_id` INT UNSIGNED NOT NULL,
    `cover` ENUM ('paperback', 'hardcover'),
    `cost` FLOAT NOT NULL,
    `rate` TINYINT DEFAULT 0,
    `EAN_UPC` BIGINT NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`book_id`) 
        REFERENCES `books` (`id`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (`publisher_id`) 
        REFERENCES `publishers` (`id`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (`language_id`) 
        REFERENCES `languages` (`id`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    UNIQUE (`EAN_UPC`)
);


CREATE TABLE IF NOT EXISTS `categories` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE (`name`)
);


CREATE TABLE IF NOT EXISTS `authors` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `firstname` VARCHAR(255) NOT NULL,
    `middlename` VARCHAR(255) NOT NULL DEFAULT '',
    `lastname` VARCHAR(255) NOT NULL,
    `about` TEXT,
    PRIMARY KEY (`id`)
);


CREATE TABLE IF NOT EXISTS `categories_for_book` (
    `book_id` INT UNSIGNED NOT NULL,
    `category_id` INT UNSIGNED NOT NULL,
    FOREIGN KEY (`book_id`) 
        REFERENCES `books` (`id`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (`category_id`) 
        REFERENCES `categories` (`id`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    CONSTRAINT `unique_category` UNIQUE (`book_id`, `category_id`)
);


CREATE TABLE IF NOT EXISTS `book_authors` (
    `book_id` INT UNSIGNED NOT NULL,
    `author_id` INT UNSIGNED NOT NULL,
    FOREIGN KEY (`book_id`) 
        REFERENCES `books` (`id`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (`author_id`) 
        REFERENCES `authors` (`id`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    CONSTRAINT `unique_category` UNIQUE (`book_id`, `author_id`)
);


CREATE TABLE IF NOT EXISTS `orders` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
    `customer_id` INT UNSIGNED NOT NULL,
    `status_id` INT UNSIGNED NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`customer_id`) 
        REFERENCES `customers` (`id`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (`status_id`)
        REFERENCES `order_statuses` (`id`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS `customers` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
    `firstname` VARCHAR(255) NOT NULL,
    `lastname` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255),
    `phone` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE (`phone`)
);


CREATE TABLE IF NOT EXISTS `shopping_cart` (
    `order_id` INT UNSIGNED NOT NULL,
    `book_id` INT UNSIGNED NOT NULL,
    `quantity` INT UNSIGNED DEFAULT 1 NOT NULL,
    FOREIGN KEY (`order_id`) 
        REFERENCES `orders` (`id`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (`book_id`) 
        REFERENCES `books` (`id`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    CONSTRAINT `unique_ordered_book` UNIQUE (`order_id`, `book_id`)
);


CREATE TABLE IF NOT EXISTS `order_statuses` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE (`name`)
);