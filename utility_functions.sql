CREATE FUNCTION get_publisher_location_id(city VARCHAR(255), 
                                          region VARCHAR(255), 
                                          country VARCHAR(255))
RETURNS INT UNSIGNED DETERMINISTIC
RETURN (SELECT `l`.`id` FROM `publisher_location` `l` WHERE 
`l`.`city` = city AND
`l`.`region` = region AND
`l`.`country` = country
LIMIT 1
);


CREATE FUNCTION get_lang_id(lang VARCHAR(255))
RETURNS INT UNSIGNED DETERMINISTIC
RETURN (SELECT `id` FROM `languages` WHERE `name` = lang LIMIT 1);


CREATE FUNCTION get_publisher_id(publisher VARCHAR(255))
RETURNS INT UNSIGNED DETERMINISTIC
RETURN (SELECT `id` FROM `publishers` WHERE `name` = publisher LIMIT 1);


CREATE FUNCTION get_genre_id(genre VARCHAR(255))
RETURNS INT UNSIGNED DETERMINISTIC
RETURN (SELECT `id` FROM `book_genres` WHERE `name` = genre LIMIT 1);