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


CREATE VIEW `books_by_authors` AS
SELECT
    `authors`.`id` AS `id`,
    GROUP_CONCAT(CONCAT_WS(' ', `authors`.`firstname`, `authors`.`lastname`) SEPARATOR ' & ') AS `authors`,
    GROUP_CONCAT(`books`.`title` SEPARATOR ', ') AS `books`,
    `authors`.`about` AS `about`
FROM
    `book_authors`,
    `authors`,
    `books`
WHERE
    `book_authors`.`book_id` = `books`.`id` AND
    `book_authors`.`author_id` = `authors`.`id`
GROUP BY `book_authors`.`book_id`;


SELECT
    `books`.`title` AS `books`,
    GROUP_CONCAT(CONCAT_WS(' ', `authors`.`firstname`, `authors`.`lastname`) SEPARATOR ' & ') AS `authors`,
FROM
    `books`,
    `authors`
    `book_authors`
WHERE
    `book_authors`.`book_id` = `books`.`id` AND
    `book_authors`.`author_id` = `authors`.`id`;



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
    `BISAC categories`
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
GROUP BY `books`.`title`
LIMIT 1;