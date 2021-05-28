-- List of all publishers with their locations
CREATE VIEW `publishers_info` (
    `id`,
    `name`,
    `location`
) AS
SELECT
    `publisher`.`id`,
    `publisher`.`name`,
    CONCAT_WS(', ', `p_location`.`city`, `p_location`.`region`, `p_location`.`country`)
FROM 
    `publishers` AS `publisher`, 
    `publisher_location` AS `p_location` 
WHERE `publisher`.`location_id` = `p_location`.`id`
GROUP BY `publisher`.`id`;


-- List of all BISAC codes
CREATE VIEW `bisac_codes` AS
SELECT 
    `cb`.`book_id` AS `book_id`, 
    GROUP_CONCAT(`bisac`.`code` SEPARATOR ' - ') AS `codes`
FROM 
    `categories_for_book` `cb`, 
    `bisac_categories` `bisac` 
WHERE 
    `cb`.`category_id` = `bisac`.`id`
GROUP BY `cb`.`book_id`;


-- List of books by authors
SELECT 
`t`.`authors` AS `authors`,
GROUP_CONCAT(`t`.`books` SEPARATOR ' | ') AS `books`
FROM
(SELECT
    `authors`.`id` AS `id`,
    GROUP_CONCAT(CONCAT_WS(' ', `authors`.`firstname`, `authors`.`lastname`) SEPARATOR ' & ') AS `authors`,
    `books`.`title` AS `books`
FROM
    `book_authors`,
    `authors`,
    `books`
WHERE
    `book_authors`.`book_id` = `books`.`id` AND
    `book_authors`.`author_id` = `authors`.`id`
GROUP BY `book_authors`.`book_id`) AS `t`
GROUP BY `t`.`authors`;


-- List of all books with details
CREATE VIEW `book_info` (
    `id`,
    `title`,
    `author`,
    `publisher`,
    `publisher_location`,
    `publish date`,
    `language`,
    `cover`,
    `rate`,
    `EAN/UPC`,
    `BISAC categories`,
    `description`
) AS 
SELECT 
    `books`.`id`, 
    `books`.`title`, 
    `publishers_info`.`name`, 
    `publishers_info`.`location`, 
    `book_details`.`publish_date`, 
    `languages`.`name`, 
    `book_details`.`cover`, 
    `book_details`.`cost`, 
    `book_details`.`rate`, 
    `book_details`.`EAN_UPC`,
    `bisac_codes`.`codes`,
    `books`.`description`
FROM
    `books`,
    `publishers_info`,
    `book_details`,
    `languages`,
    `bisac_codes`
WHERE
    `books`.`id` = `book_details`.`book_id` AND
    `book_details`.`publisher_id` = `publishers_info`.`id` AND
    `book_details`.`language_id` = `languages`.`id` AND
    `books`.`id` = `bisac_codes`.`book_id`
GROUP BY `books`.`title`;


-- List of books by BISAC categories
CREATE VIEW `books_by_bisac` As
SELECT 
    `bisac_categories`.`code` AS `BISAC category`,
    GROUP_CONCAT(`books`.`title` SEPARATOR ' | ') AS `books`
FROM 
    `categories_for_book`,
    `bisac_categories`,
    `books`
WHERE
    `categories_for_book`.`book_id` = `books`.`id` AND
    `categories_for_book`.`category_id` = `bisac_categories`.`id`
GROUP BY `categories_for_book`.`category_id`;


-- List of orders with info
SELECT
    `shopping_cart`.`order_id`,
    `client_order`.`client_name`,
    `client_order`.`phone`,
    `client_order`.`order_status`,
    GROUP_CONCAT(`books`.`title` SEPARATOR '; ') AS `shopping_cart`
FROM
    `shopping_cart`,
    (
        SELECT
            `orders`.`id`,
            CONCAT_WS(' ', `clients`.`firstname`, `clients`.`lastname`) AS `client_name`,
            `clients`.`phone` AS `phone`,
            `order_statuses`.`name` AS `order_status`
        FROM
            `orders`,
            `clients`,
            `order_statuses`
        WHERE
            `orders`.`client_id` = `clients`.`id` AND
            `orders`.`status_id` = `order_statuses`.`id`
        GROUP BY `orders`.`id`
    ) AS `client_order`,
    `books`
WHERE 
`shopping_cart`.`order_id` = `client_order`.`id` AND
`shopping_cart`.`book_id` = `books`.`id`
GROUP BY `shopping_cart`.`order_id`;