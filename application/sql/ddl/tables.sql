CREATE TABLE category (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(50),
    parent_id INT UNSIGNED,
    CONSTRAINT `fk_parent_id` FOREIGN KEY (parent_id) REFERENCES category (id)
);

CREATE TABLE product (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    product_code VARCHAR(10) NOT NULL,
    name_en VARCHAR(250) NOT NULL,
    name_de VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci,    
    name_cn VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci,
    weight_gr INT NOT NULL,
    n_piece INT NOT NULL
);

CREATE FULLTEXT INDEX search_index ON product (product_code, name_de, name_en);

CREATE TABLE product_assets (   
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    p_id INT UNSIGNED NOT NULL,
    url VARCHAR(1000) NOT NULL,
    CONSTRAINT `fk_product_id_assets` FOREIGN KEY (p_id) REFERENCES product (id)
);

CREATE TABLE product_category (
    c_id INT UNSIGNED NOT NULL,
    p_id INT UNSIGNED NOT NULL,
    CONSTRAINT `fk_category_id` FOREIGN KEY (c_id) REFERENCES category (id),
    CONSTRAINT `fk_product_id` FOREIGN KEY (p_id) REFERENCES product (id)
);

ALTER TABLE product_category ADD UNIQUE product_id_cat_id (c_id, p_id);

alter table product add cooking varchar(500);

alter table product add weight_gr2 INT;
alter table product add n_piece2 INT;
