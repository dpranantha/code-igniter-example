INSERT INTO category(name, parent_id) values('All', null);
INSERT INTO category(name, parent_id) values('Frozen', 1);
INSERT INTO category(name, parent_id) values('Meat', 2);
INSERT INTO category(name, parent_id) values('Seafood', 2);
INSERT INTO category(name, parent_id) values('Dry', 1);

INSERT INTO product(product_code, name_nl, name_en, name_cn, weight_gr, n_piece) values('SD-01', 'Vegan Half Chicken', 'Vegan Halbes Huhn', '大自然雞', 200, 40);
INSERT INTO product(product_code, name_nl, name_en, name_cn, weight_gr, n_piece) values('CW-08', 'Vegan Bacon Slices', 'Vegan Speckscheiben', '素培根片', 250, 50);
INSERT INTO product(product_code, name_nl, name_en, name_cn, weight_gr, n_piece) values('AJ-02', 'Vegan Oysters', 'Vegan Austern', '素蠔', 300, 40);
INSERT INTO product(product_code, name_en, name_cn, weight_gr, n_piece) values('D106', 'Black Sesame Butter', '芝麻醬', 300, 40);

INSERT INTO product_assets(p_id, url) values (1, 'assets/img/products/frozen/vegan_half_chicken.jpg');
INSERT INTO product_assets(p_id, url) values (2, 'assets/img/products/frozen/vegan_bacon_slice.jpg');
INSERT INTO product_assets(p_id, url) values (3, 'assets/img/products/frozen/vegan_oyster.jpg');
INSERT INTO product_assets(p_id, url) values (4, 'assets/img/products/dry/black_sesame_butter.jpg');

INSERT INTO product_category values(3, 1);
INSERT INTO product_category values(3, 2);
INSERT INTO product_category values(4, 3);
INSERT INTO product_category values(5, 4);