INSERT INTO category(name, parent_id) values('All', null);
INSERT INTO category(name, parent_id) values('Frozen', 1);
INSERT INTO category(name, parent_id) values('Meat', 2);
INSERT INTO category(name, parent_id) values('Seafood', 2);
INSERT INTO category(name, parent_id) values('Dry', 1);

/* Frozen */
INSERT INTO product(product_code, name_en, name_nl, name_cn, weight_gr, n_piece) values('SD-01', 'Vegan Half Chicken', 'Vegan Halbes Huhn', '大自然雞', 200, 40);
INSERT INTO product(product_code, name_en, name_nl, name_cn, weight_gr, n_piece) values('CW-08', 'Vegan Bacon Slices', 'Vegan Speckscheiben', '素培根片', 250, 50);
INSERT INTO product(product_code, name_en, name_nl, name_cn, weight_gr, n_piece) values('AJ-02', 'Vegan Oysters', 'Vegan Austern', '素蠔', 300, 40);
INSERT INTO product(product_code, name_en, name_cn, weight_gr, n_piece) values('CW11', "Vegan Smoked Ham", '燻味素火腿', 500, 30);
INSERT INTO product(product_code, name_en, name_cn, weight_gr, n_piece) values('TC15a', "Vegan Shrimp Roll", '素蝦仁卷', 200, 40);
INSERT INTO product(product_code, name_en, name_cn, weight_gr, n_piece) values('TC02', "Vegan Sesame Eel", '芝麻鰻', 200, 0);

/* Dry */
INSERT INTO product(product_code, name_en, name_cn, weight_gr, n_piece) values('D004S', 'Vegan Beef Slice', '素牛片', 150, 0);
INSERT INTO product(product_code, name_en, name_cn, weight_gr, n_piece) values('D004T', 'Vegan Beef Slice', '素牛片', 1000, 0);
INSERT INTO product(product_code, name_en, name_cn, weight_gr, n_piece) values('DO35', "Vegan Shark's Fin", '素魚翅', 150, 5);
INSERT INTO product(product_code, name_en, name_cn, weight_gr, n_piece) values('D106', 'Black Sesame Butter', '芝麻醬', 300, 0);
INSERT INTO product(product_code, name_en, name_cn, weight_gr, n_piece) values('D003S', "Vegan Meat Strip", '素肉絲', 150, 0);
INSERT INTO product(product_code, name_en, name_cn, weight_gr, n_piece) values('D003T', "Vegan Meat Strip", '素肉絲', 1000, 0);


INSERT INTO product_assets(p_id, url) values (1, 'assets/img/products/frozen/vegan_half_chicken.jpg');
INSERT INTO product_assets(p_id, url) values (2, 'assets/img/products/frozen/vegan_bacon_slice.jpg');
INSERT INTO product_assets(p_id, url) values (3, 'assets/img/products/frozen/vegan_oyster.jpg');
INSERT INTO product_assets(p_id, url) values (4, 'assets/img/products/frozen/vegan_smoked_ham.jpg');
INSERT INTO product_assets(p_id, url) values (5, 'assets/img/products/frozen/vegan_shrimp_roll.jpg');
INSERT INTO product_assets(p_id, url) values (6, 'assets/img/products/frozen/vegan_sesame_eel.jpg');
INSERT INTO product_assets(p_id, url) values (7, 'assets/img/products/dry/vegan_beef_slice.jpg');
INSERT INTO product_assets(p_id, url) values (8, 'assets/img/products/dry/vegan_beef_slice.jpg');
INSERT INTO product_assets(p_id, url) values (9, 'assets/img/products/dry/vegan_sharks_fin.jpg');
INSERT INTO product_assets(p_id, url) values (10, 'assets/img/products/dry/black_sesame_butter.jpg');
INSERT INTO product_assets(p_id, url) values (11, 'assets/img/products/dry/vegan_meat_strip.jpg');
INSERT INTO product_assets(p_id, url) values (12, 'assets/img/products/dry/vegan_meat_strip.jpg');


INSERT INTO product_category values(3, 1);
INSERT INTO product_category values(3, 2);
INSERT INTO product_category values(4, 3);
INSERT INTO product_category values(3, 4);
INSERT INTO product_category values(4, 5);
INSERT INTO product_category values(4, 6);
INSERT INTO product_category values(5, 7);
INSERT INTO product_category values(5, 8);
INSERT INTO product_category values(5, 9);
INSERT INTO product_category values(5, 10);
INSERT INTO product_category values(5, 11);
INSERT INTO product_category values(5, 12);