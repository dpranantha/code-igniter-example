CREATE TABLE category (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(50),
    parent_id INT UNSIGNED,
    CONSTRAINT `fk_parent_id` FOREIGN KEY (parent_id) REFERENCES category (id)
);



