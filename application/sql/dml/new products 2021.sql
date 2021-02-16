-- Products
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('TC05','黑 胡 椒 肉 條','Vegan black pepper strips','250','40','This product contains soy and wheat.');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('TC09','全 素 荷 包 蛋','Vegan over eggs','200','40','This product contains soy.');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('TC15','素 蓮 藕 排 骨','Vegan spare ribs','250','40','This product contains soy and wheat.');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('TC25','素 韓 式 雞 丁','Vegan chili chicken','250','40','This product contains soy and wheat.');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('TC38','全 素 肉 排','Vegan meat burger','250','24','This product contains soy and wheat.');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('AZ07','素 魷 魚 絲','Vegan squid shreds','100','50','This product contains soy and wheat.');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('YH10','全 素 檸 檬 蝦','Vegan lemon shrimp','300','40','This product contains soy and wheat.');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('YH11','全 素 什 錦 蔬 菜 丸','Vegan vegetable stuffing balls','300','40','This product contains soy and wheat.');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('YH12','全 素 海 中 寶','Vegan shiitake balls','300','40','This product contains soy, wheat, and mushroom.');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('YH13','全 素 檸 檬 魚 排','Vegan lemon fish steak','300','40','This product contains soy and wheat.');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('AJ06','素 魚 酥 ','Vegan fish Crisp','300','30','This product contains soy and wheat.');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('AJ08','素 麥 香 條','Vegan fish tofu','300','40','This product contains soy.');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('D007','素 泡 麵 (不定期 多種口味)','Vegan instant noodle','85','30','This product contains soy, wheat, and mushroom.');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('D121','香 菇 素 肉 燥','Vegan minced meat with mushroom(jar)','400','12','This product contains soy, wheat, mushroom, and sesame.');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('D128','海 苔 杏 仁 片','Vegan almond seaweed','40','20','This product contains sesame.');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('DX06','高 麗 菜 包 子','Vegan vegetable bun','12','12','This product contains soy, wheat, and sesame.');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('DX08','芋 泥 包 子','Vegan taro bun','12','12','This product contains milk, wheat, and sesame.');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('C24','辣 豆 瓣','Vegan hot bean paste','230','12','This product contains soy and sesame.');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('C2','愛 之 味 沙 茶 醬 (Small)','Vegan barbecue sauce (Small)','260','12','This product contains soy, wheat, and sesame.');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('C7','愛 之 味 沙 茶 醬 (Large)','Vegan barbecue sauce (Large)','737','12','This product contains soy, wheat, and sesame.');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('JW01','萬 家 香 香 菇 素 蠔 油 (Small)','Vegan mushroom oyster sauce (Small)','300','12','This product contains soy and wheat.');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('JW04','萬 家 香 香 菇 素 蠔 油 (Large)','Vegan mushroom oyster sauce (Large)','1000','12','This product contains soy and wheat.');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('JW08','黑 豆 醬 油','Vegan natural soy sauce','450','12','This product contains soy and wheat.');

-- Image
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='TC05'),'assets/img/products/TC05.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='TC09'),'assets/img/products/TC09.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='TC15'),'assets/img/products/TC15.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='TC25'),'assets/img/products/TC25.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='TC38'),'assets/img/products/TC38.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='AZ07'),'assets/img/products/AZ07.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='YH10'),'assets/img/products/YH10.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='YH11'),'assets/img/products/YH11.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='YH12'),'assets/img/products/YH12.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='YH13'),'assets/img/products/YH13.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='AJ06'),'assets/img/products/AJ06.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='AJ08'),'assets/img/products/AJ08.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='D007'),'assets/img/products/D007.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='D121'),'assets/img/products/D121.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='D128'),'assets/img/products/D128.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='DX06'),'assets/img/products/DX06.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='DX08'),'assets/img/products/DX08.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='C24'),'assets/img/products/C24.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='C2'),'assets/img/products/C2.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='C7'),'assets/img/products/C7.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='JW01'),'assets/img/products/JW01.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='JW04'),'assets/img/products/JW04.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='JW08'),'assets/img/products/JW08.jpg');

-- category
INSERT INTO product_category values(2,(select id from product where product_code='TC05'));
INSERT INTO product_category values(2,(select id from product where product_code='TC09'));
INSERT INTO product_category values(2,(select id from product where product_code='TC15'));
INSERT INTO product_category values(2,(select id from product where product_code='TC25'));
INSERT INTO product_category values(2,(select id from product where product_code='TC38'));
INSERT INTO product_category values(2,(select id from product where product_code='AZ07'));
INSERT INTO product_category values(2,(select id from product where product_code='YH10'));
INSERT INTO product_category values(2,(select id from product where product_code='YH11'));
INSERT INTO product_category values(2,(select id from product where product_code='YH12'));
INSERT INTO product_category values(2,(select id from product where product_code='YH13'));
INSERT INTO product_category values(2,(select id from product where product_code='AJ06'));
INSERT INTO product_category values(2,(select id from product where product_code='AJ08'));
INSERT INTO product_category values(2,(select id from product where product_code='D007'));
INSERT INTO product_category values(2,(select id from product where product_code='D121'));
INSERT INTO product_category values(2,(select id from product where product_code='D128'));
INSERT INTO product_category values(2,(select id from product where product_code='DX06'));
INSERT INTO product_category values(2,(select id from product where product_code='DX08'));
INSERT INTO product_category values(6,(select id from product where product_code='C24'));
INSERT INTO product_category values(6,(select id from product where product_code='C2'));
INSERT INTO product_category values(6,(select id from product where product_code='C7'));
INSERT INTO product_category values(6,(select id from product where product_code='JW01'));
INSERT INTO product_category values(6,(select id from product where product_code='JW04'));
INSERT INTO product_category values(6,(select id from product where product_code='JW08'));


-- update
update product set name_en='Vegan Frozen Tofu' where replace(product_code,'-','')='CH01';
update product set name_en='Vegan Ham (large)' where replace(product_code,'-','')='CK01';
update product set name_en='Vegan Chicken Nuggets' where replace(product_code,'-','')='CK05';
update product set name_en='Vegan Ham (small)' where replace(product_code,'-','')='CK06';
update product set name_en='Vegan Sandwich Ham' where replace(product_code,'-','')='CW03';
update product set name_en='Vegan Smoked Ham' where replace(product_code,'-','')='CW11';
update product set name_en='Vegan Bean Curd' where replace(product_code,'-','')='FC01';
update product set name_en='Vegan Bean Curd roll' where replace(product_code,'-','')='FC06';
update product set name_en='Veggie Asian Style Sausage' where replace(product_code,'-','')='HS10M';
update product set name_en='Vegan Water Chestnut Balls' where replace(product_code,'-','')='HS11M';
update product set name_en='Vegan Grass Shrimp' where replace(product_code,'-','')='HY04';
update product set name_en='Vegan / Veggie Salt-roasted Chicken' where replace(product_code,'-','')='KC10M';
update product set name_en='Vegan Mutton' where replace(product_code,'-','')='SS06';
update product set name_en='Vegan Beef Balls' where replace(product_code,'-','')='TC20';
update product set name_en='Vegan Dong-Po Pork' where replace(product_code,'-','')='WS01';
update product set name_en='Veggie Fish Nuggets' where replace(product_code,'-','')='YH01M';
update product set name_en='Vegan Ham Slices' where replace(product_code,'-','')='YH09';


-- delete
delete from product_category where p_id in (select id from product where replace(product_code,'-','') in ('CH03','CH04','CH05','CH06','HS04M','HS18M','TC18','SB01','SB02','AJ03','WL02M','ED06','TC33','SW01','WL09M','KC22M'));
delete from product_assets where p_id in (select id from product where replace(product_code,'-','') in ('CH03','CH04','CH05','CH06','HS04M','HS18M','TC18','SB01','SB02','AJ03','WL02M','ED06','TC33','SW01','WL09M','KC22M'));
delete from product where replace(product_code,'-','') in ('CH03','CH04','CH05','CH06','HS04M','HS18M','TC18','SB01','SB02','AJ03','WL02M','ED06','TC33','SW01','WL09M','KC22M');


-- question
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('CK01','萬 家 香 火 腿 (大)','Vegan ham (Large)','1000','10','This product contains soy and wheat');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('TC34','素檸檬雞','Vegan lemon chicken','250','40','This product contains soy and wheat');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('SW03','吳 郭 魚','Vegan mouth breeder','300','40','This product contains soy');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('CW01','全 素 墨 西 哥 大 熱 狗','Vegan Mexico hotdog','500','30','This product contains soy');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('AJ11','全 素 福 壽 丸','Vegan vegetable balls','300','30','This product contains soy and wheat.');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('AJ12','全 素 淡 水 魚 丸','Vegan fish balls','300','40','This product contains soy and wheat.');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece) values('D035','素 魚 翅','Vegan shark''s fin','100','50');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece) values('D088','十 穀 米','Vegan five-grain rice','1000','24');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('D106','全 素 芝 麻 醬','Vegan sesame paste','1000','6','This product contains soy and sesame.');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('D123','XO 醬','Vegan XO sauce (jar)','260','12','This product contains soy, wheat, and mushroom.');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('D129','海 苔 杏 仁 片 (辣)','Vegan almond seaweed (spicy)','40','20','This product contains sesame.');
INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('D130','香 菇 海 苔 酥','Vegan mushroom seaweed','150','40','This product contains soy, wheat, mushroom, and sesame.');

INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='CK01'),'assets/img/products/CK01.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='TC34'),'assets/img/products/TC34.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='SW03'),'assets/img/products/NA.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='CW01'),'assets/img/products/NA.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='AJ11'),'assets/img/products/NA.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='AJ12'),'assets/img/products/NA.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='D035'),'assets/img/products/NA.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='D088'),'assets/img/products/NA.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='D106'),'assets/img/products/NA.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='D123'),'assets/img/products/NA.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='D129'),'assets/img/products/D128.jpg');
INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='D130'),'assets/img/products/NA.jpg');

INSERT INTO product_category values(2,(select id from product where product_code='CK01'));
INSERT INTO product_category values(2,(select id from product where product_code='TC34'));
INSERT INTO product_category values(2,(select id from product where product_code='SW03'));
INSERT INTO product_category values(2,(select id from product where product_code='CW01'));
INSERT INTO product_category values(2,(select id from product where product_code='AJ11'));
INSERT INTO product_category values(2,(select id from product where product_code='AJ12'));
INSERT INTO product_category values(2,(select id from product where product_code='D035'));
INSERT INTO product_category values(2,(select id from product where product_code='D088'));
INSERT INTO product_category values(2,(select id from product where product_code='D106'));
INSERT INTO product_category values(2,(select id from product where product_code='D123'));
INSERT INTO product_category values(2,(select id from product where product_code='D129'));
INSERT INTO product_category values(2,(select id from product where product_code='D130'));

-- INSERT INTO product(product_code, name_cn, name_en,  weight_gr, n_piece, allergy_info) values('D099','海 苔 素 肉 鬆','Vegan floss with seaweed','300','30','This product contains soy and sesame.');
-- INSERT INTO product_assets(p_id, url) values ((select id from product where product_code='D099'),'assets/img/products/NA.jpg');
-- INSERT INTO product_category values(2,(select id from product where product_code='D099')); 
