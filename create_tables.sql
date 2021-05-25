-- Bookshop (creating tables)


CREATE TABLE IF NOT EXISTS `languages` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255),
    PRIMARY KEY (`id`),
    UNIQUE (`name`)
);


CREATE TABLE IF NOT EXISTS `publishers` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `location` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `publisher` UNIQUE (`name`, `location`)
);


CREATE TABLE IF NOT EXISTS `books` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255),
    `description` TEXT,
    `publisher_id` INT UNSIGNED NOT NULL,
    `publish_date` DATE NOT NULL,
    `language_id` INT UNSIGNED NOT NULL,
    `cost` FLOAT,
    `rate` TINYINT,
    `EAN_UPC` BIGINT NOT NULL,
    `available` BOOLEAN,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`),
    FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
    UNIQUE (`EAN_UPC`)
);


CREATE TABLE IF NOT EXISTS `categories` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255),
    PRIMARY KEY (`id`),
    UNIQUE (`name`)
);


CREATE TABLE IF NOT EXISTS `authors` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `firstname` VARCHAR(255) NOT NULL,
    `lastname` VARCHAR(255) NOT NULL,
    `about` TEXT,
    PRIMARY KEY (`id`)
);


CREATE TABLE IF NOT EXISTS `categories_for_book` (
    `book_id` INT UNSIGNED NOT NULL,
    `category_id` INT UNSIGNED NOT NULL,
    FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
    FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
    CONSTRAINT `unique_category` UNIQUE (`book_id`, `category_id`)
);


CREATE TABLE IF NOT EXISTS `book_authors` (
    `book_id` INT UNSIGNED NOT NULL,
    `author_id` INT UNSIGNED NOT NULL,
    FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
    FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
    CONSTRAINT `unique_category` UNIQUE (`book_id`, `author_id`)
);


CREATE TABLE IF NOT EXISTS `orders` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT, 
    `customer_id` INT UNSIGNED NOT NULL,
    `status_id` INT UNSIGNED NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
    FOREIGN KEY (`status_id`) REFERENCES `order_statuses` (`id`)
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
    `quantity` INT UNSIGNED DEFAULT 0 NOT NULL,
    FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
    FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
    CONSTRAINT `unique_ordered_book` UNIQUE (`order_id`, `book_id`)
);


CREATE TABLE IF NOT EXISTS `order_statuses` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE (`name`)
);