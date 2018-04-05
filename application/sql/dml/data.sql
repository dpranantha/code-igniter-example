INSERT INTO category(name, parent_id) values('All', null);
INSERT INTO category(name, parent_id) values('Frozen', 1);
INSERT INTO category(name, parent_id) values('Meat', 2);
INSERT INTO category(name, parent_id) values('Seafood', 2);
INSERT INTO category(name, parent_id) values('Dry', 1);

INSERT INTO product(product_code, name_nl, name_en, name_cn, weight_gr, n_piece, price) values('SD-01', 'Vegan Half Chicken', 'Vegan Halbes Huhn', '大自然雞', 200, 40, 20);
INSERT INTO product(product_code, name_nl, name_en, name_cn, weight_gr, n_piece, price) values('CW-08', 'Vegan Bacon Slices', 'Vegan Speckscheiben', '素培根片', 250, 50, 30);
INSERT INTO product(product_code, name_nl, name_en, name_cn, weight_gr, n_piece, price) values('AJ-02', 'Vegan Oysters', 'Vegan Austern', '素蠔', 300, 40, 30);

INSERT INTO product_assets(p_id, url) values (1, '../assets/img/products/frozen/vegan_half_chicken.jpg');
INSERT INTO product_assets(p_id, url) values (2, '../assets/img/products/frozen/vegan_bacon_slice.jpg');
INSERT INTO product_assets(p_id, url) values (3, '../assets/img/products/frozen/vegan_oysters.jpg');

INSERT INTO product_category values(3, 1);
INSERT INTO product_category values(3, 2);
INSERT INTO product_category values(4, 3);