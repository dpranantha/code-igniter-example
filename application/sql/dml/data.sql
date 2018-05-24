-- Categories
INSERT INTO category(name, parent_id) values('All', null);
INSERT INTO category(name, parent_id) values('Frozen', 1);
INSERT INTO category(name, parent_id) values('Meat', 2);
INSERT INTO category(name, parent_id) values('Seafood', 2);
INSERT INTO category(name, parent_id) values('Tofu, Mushroom, & Vegetables', 2);
INSERT INTO category(name, parent_id) values('Dry', 1);

-- Products
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('AJ-01','土魠魚','Vegan Fish Steak','Vegan Fischsteak',300,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('AJ-02','素蠔','Vegan Oyster','Vegan Austern',300,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('AJ-03','芙蓉丸','Vegan Stuffing Balls','Vegan Bällchen mit Füllung',300,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('AJ-07','素魚丸','Vegan Fish Balls','Vegan Fischbällchen',300,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('CH-01','百頁豆腐','Vegan Bean Curd','Vegan Tofu',595,30);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('CH-02','全素獅子頭','Vegan Meatballs','Vegan Fleischbällchen',300,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('CH-03','全素燉肉','Vegan Stewed Meat','Vegan Geschmortes Fleisch',300,50);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('CH-04','全素雞塊','Vegan Chicken Chunk','Vegan Chicken Nuggets',300,30);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('CH-05','金牌火腿','Vegan No. 1 Ham','Vegan Nr. 1 Schinken',1000,12);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('CH-06','金牌火腿(小)','Vegan No. 1 Ham','Vegan Nr. 1 Schinken',500,24);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('CK-06','萬家香素火腿','Vegan Nice Ham','Vegan Nice Schinken',500,20);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('CK-03','素香雞排','Vegan Chicken Steak','Vegan Hühnersteak',275,25);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('CK-05','麥克雞塊','Vegan Maik Chicken Nugget','Vegan Hähnchen Nugget',200,25);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('CW-02','素五花肉','Vegan Smoked Bacon','Vegan Räucherspeckc',250,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('CW-03','麵包火腿片','Vegan Ham Slices','Vegan Schinkenstreifen',250,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('CW-07','黑胡椒火腿','Vegan Black PepperHam','Vegan Lecker Bauchspeck',350,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('CW-08','素培根片','Vegan Bacon Slices','Vegan Vegan Speckscheiben',250,50);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('CW-09','香酥花枝圈','Vegan Crispy Squid Ring','Vegan Crispy Calamariringe',250,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('CW-11','燻味火腿','Vegan Smoked-Flavor Ham','Vegan Geraeucherter Kochschinken',500,36);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('CW-12','全素約克火腿','Vegan York Ham','Vegan York Schinken',500,24);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('CW-13','全素火腿丁','Vegan Ham Dices','Vegan Schinkenwürfel',600,30);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('ED-06','素油水雞','Vegan Chicken','Vegan Hähnchen',300,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('FC-01','豆包','Vegan Fresh Bean Curd Peel','Vegan Frische Tofublättertetig',1000,20);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('FC-06','豆卷','Vegan Fresch Bean Curd Roll','Vegan Frische Tofutteigrollen',1000,16);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('GS-03','素烤鴨','Vegan Roast Duck','Vegan Gebratene Ente',500,25);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('HS-01M','紅燒鱸魚','Veggie Braised Sea Bass','Veggie Gedunsteteer Seebarch',250,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('HS-04M','臘肉香腸','Veggie Bacon Sausage','Veggie Speckwurst',300,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('HS-10M','蒟蒻香腸','Veggie Konjac Sausage','Veggie Konjawurst',300,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('HS-11M','一品丸','Veggie Yi-Pin Balls','Veggie  Yi-Pin Bällchen',300,30);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('HS-16M','馬蹄卷','Veggie Water Chestnut Roll','Veggie-Wasser-Kastanie Rollen',300,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('HS-18M','素茶鵝','Veggie Tea-Flavor Goose','Veggie Gans mit Teegeschmack',300,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('HY-04','素草蝦','Vegan Shrimp','Vegan Garnelen',300,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('JC-36G','味火腿(小)','Vegan Chicken Ham (Small)','Vegan Hühnerschinken (Klein)',500,24);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('KC-02','香菇丸','Vegan Shiitake-Mushroom Balls','Vegan Mushroom-Bällchen',600,25);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('KC-10M',' 鹽酥雞','Vegan Salt-roasted Chicken','Vegan Salz-geröstetes Hähnchen',300,30);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('KC-21','黑胡椒大排','Vegan/ Veggie Pepper Steak','Vegan/ Veggie Pfefferschnitzel',300,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('KC-22M','獅子頭','Veggie Lion-Head Meatballs','Veggie Lowenkopf-Fleischklösschen',300,30);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('KC-23','素雞丁','Vegan/ Veggie Chicken Pieces','Vegan/ Veggie Hühnerstücken',300,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('KC-29','小明蝦','Vegan Shrimp','Vegan Garnelen',300,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('KO-25','素鮪魚(冷凍/常溫)','Vegan Tuna Fish','Vegan Thunfisch',300,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('SD-01','大自然雞','Vegan Half Chicken','Vegan Halbes Hühn',200,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('SS-06','素燉羊肉','Vegan Clay Pot Stewed Mutton','Vegan Tontopf Hammelfleisch',600,20);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('SW-01','小香腸','Vegan Small Sausages','Vegan Mini-Würstchen',200,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('SW-02','大熱狗','Vegan Hot Dog','Vegan Hot Dog',240,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('TC-01','素鱈魚排','Vegan Cod Steak','Vegan Kabeljausteak',200,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('TC-02','芝麻鰻','Vegan Sesame Eel','Vegan Sesam Aal',200,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('TC-03','鱈魚排火腿','Vegan Fish Ham','Vegan Fisch-Schinken',600,16);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('TC-04','小鳳腿','Vegan Chicken Leg','Vegan Hühnerkeulen',250,30);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('TC-06','鮭魚','Vegan Salmon','Vegan Salmon',300,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('TC-10','蟹肉片','Vegan Crab Steak','Vegan Krebsfleisch-Steak',250,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('TC-13','當歸素寶湯','Vegan Health Herbal Soup','Vegan Gesundheit Kräuter Suppe',400,20);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('TC-14','素叉燒肉','Vegan Barbecue Meat','Vegan BBQ Fleisch',200,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('TC-16','素魚排漿','Vegan Fish Paste','Vegan Fischpaste',600,20);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('TC-17','素蝦排漿','Vegan Shrimp Paste','Vegan Garnelenpaste',600,20);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('TC-20','新牛肉丸','Vegan Beef Meatballls','Vegan Rindfleisch Fleischbällchen',250,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('TC-21','素鮑魚','Vegan Abalone','Vegan Abalone-Muschel',150,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('TC-23','香酥雞腿','Vegan Spiced Chicken Leg','Vegan Gewuerzte Hühnerkeulen',250,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('TC-24','素麻油雞','Vegan Sesame-Oil Chicken','Vegan Sesameöl Hühn',200,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('TC-26','素炸鮮魷','Vegan Fried Squid Slices','Vegan Gebratener Tintenfisch Scheiben',200,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('TC-27','素三杯雞','Vegan Three-Cup Chicken','Vegan Drei-Tasse Hühner',250,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('TC-29','素燉牛肉','Vegan Stewed Beef','Vegan Geschmortes Rindfleisch',200,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('TY-01','素脆皮鴨','Vegan Barbecued Duck','Vegan Gegrillte Ente',600,25);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('TY-02','素鴨塊','Vegan Duck Pieces','Vegan Ente in Stucken',600,25);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('WL-01M','猴頭菇','Veggie Hericium Mushroom','Veggie Hericium Pilz',300,30);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('WL-02M','百頁條','Veggie Fresh Bean Curd','Veggie Frischen Tofu',300,30);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('WL-03M','珍肉粳','Veggie Chicken Strip','Veggie Hähnchenstreifen',300,30);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('WL-08M','素雞塊','Veggie Chicken Chunk','Veggie Hühn Brocken',300,30);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('WL-09M','烏魚鰾','Veggie Fish Air Bladder','Veggie Fisch-Luftblase',300,30);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('WL-14M','素炸雞塊','Veggie Fried Chicken Chunk','Veggie Brathähnchen Stück',300,30);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('WL-21M','素燉補羊肉','Veggie Stewed Mutton Slice','Veggie Gedämpftes Hannelfleisch Scheibe',300,30);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('YH-01M','餘塊','Veggie Fish Nuggets','Veggie Fisch Nuggets',300,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('YH-02','干貝球','Vegan Scallop Balls','Vegan Jakobsmuschel Bällchen',250,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('YH-04M','香吉排','Vegan Chicken Steak','Vegan Hühnersteak',300,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('YH-08','蟹肉棒','Vegan Crab Surimi','Vegan Krebs-Surimi',250,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('YH-09','如意火煺片','Vegan Ru-Yi Sandwich Ham','Vegan Ru-Yi Schinken Aufschnitte',1000,17);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('YS-02','沙嗲串','Vegan Chicken Skewers','Vegan Hühnerspieße',270,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('D001','健康素肉塊','Vegan Meat Chunk','Vegan Fleisch Chunk',5000,15);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('D002','健康素肉片','Vegan Meat Slice','Vegan Flesich in Scheiben',5000,15);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('D003','健康素肉絲','Vegan Meat Strips','Vegan Fleischstreifen',5000,15);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('JW-08','黑豆酱油','Vegan Natural Soysauce','Vegan Natürliche Sojasauce',450,12);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('D004A','素牛肉片','Vegan Beef Slice','Vegan Rindflesich scheiben',5000,15);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('D005','素豬排','Vegan Pork Steak','Vegan Schweineflisch steak',5000,15);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('D008','素牛肉塊','Vegan Beef Chunk','Vegan Rinderstücke',5000,0);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('D099','海苔素肉鬆','Vegan Seaweed Mushroom Fluff','Vegan Meeresalgen mit Shiitakefaser',300,30);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('AZ-05','素香烤牛肉干','Vegan Beef-Jerky (BBQ)','Vegan Rinder-Jerky (BBQ)',200,40);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('AJ-06','素鱼酥','Vegan Fish Crisp','Vegan  Knusprige Fischhäppchen',300,30);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('D-121','香菇素肉燥','Vegan Minced Meat with Mushrooms','Vegan Hackfleisch mit Pilzen',400,12);
INSERT INTO product(product_code, name_cn, name_en, name_de, weight_gr, n_piece) values('D-126','素鴨寶','Vegan Mock Duck Chunk','Vegan Seitan-Entenstücke',400,12);

-- Product assets (images, ...)
INSERT INTO product_assets(p_id, url) values (1,'assets/img/products/AJ01.jpg');
INSERT INTO product_assets(p_id, url) values (2,'assets/img/products/AJ02.jpg');
INSERT INTO product_assets(p_id, url) values (3,'assets/img/products/AJ03.jpg');
INSERT INTO product_assets(p_id, url) values (4,'assets/img/products/AJ07.jpg');
INSERT INTO product_assets(p_id, url) values (5,'assets/img/products/CH01.jpg');
INSERT INTO product_assets(p_id, url) values (6,'assets/img/products/CH02.jpg');
INSERT INTO product_assets(p_id, url) values (7,'assets/img/products/CH03.jpg');
INSERT INTO product_assets(p_id, url) values (8,'assets/img/products/CH04.jpg');
INSERT INTO product_assets(p_id, url) values (9,'assets/img/products/CH05.jpg');
INSERT INTO product_assets(p_id, url) values (10,'assets/img/products/CH06.jpg');
INSERT INTO product_assets(p_id, url) values (11,'assets/img/products/CK06.jpg');
INSERT INTO product_assets(p_id, url) values (12,'assets/img/products/CK03.jpg');
INSERT INTO product_assets(p_id, url) values (13,'assets/img/products/CK05.jpg');
INSERT INTO product_assets(p_id, url) values (14,'assets/img/products/CW02.jpg');
INSERT INTO product_assets(p_id, url) values (15,'assets/img/products/CW03.jpg');
INSERT INTO product_assets(p_id, url) values (16,'assets/img/products/CW07.jpg');
INSERT INTO product_assets(p_id, url) values (17,'assets/img/products/CW08.jpg');
INSERT INTO product_assets(p_id, url) values (18,'assets/img/products/CW09.jpg');
INSERT INTO product_assets(p_id, url) values (19,'assets/img/products/CW11.jpg');
INSERT INTO product_assets(p_id, url) values (20,'assets/img/products/CW12.jpg');
INSERT INTO product_assets(p_id, url) values (21,'assets/img/products/CW13.jpg');
INSERT INTO product_assets(p_id, url) values (22,'assets/img/products/ED06.jpg');
INSERT INTO product_assets(p_id, url) values (23,'assets/img/products/FC01.jpg');
INSERT INTO product_assets(p_id, url) values (24,'assets/img/products/FC06.jpg');
INSERT INTO product_assets(p_id, url) values (25,'assets/img/products/GS03.jpg');
INSERT INTO product_assets(p_id, url) values (26,'assets/img/products/HS01M.jpg');
INSERT INTO product_assets(p_id, url) values (27,'assets/img/products/HS04M.jpg');
INSERT INTO product_assets(p_id, url) values (28,'assets/img/products/HS10M.jpg');
INSERT INTO product_assets(p_id, url) values (29,'assets/img/products/HS11M.jpg');
INSERT INTO product_assets(p_id, url) values (30,'assets/img/products/HS16M.jpg');
INSERT INTO product_assets(p_id, url) values (31,'assets/img/products/HS18M.jpg');
INSERT INTO product_assets(p_id, url) values (32,'assets/img/products/HY04.jpg');
INSERT INTO product_assets(p_id, url) values (33,'assets/img/products/JC36G.jpg');
INSERT INTO product_assets(p_id, url) values (34,'assets/img/products/KC02.jpg');
INSERT INTO product_assets(p_id, url) values (35,'assets/img/products/KC10M.jpg');
INSERT INTO product_assets(p_id, url) values (36,'assets/img/products/KC21.jpg');
INSERT INTO product_assets(p_id, url) values (37,'assets/img/products/KC22M.jpg');
INSERT INTO product_assets(p_id, url) values (38,'assets/img/products/KC23.jpg');
INSERT INTO product_assets(p_id, url) values (39,'assets/img/products/KC29.jpg');
INSERT INTO product_assets(p_id, url) values (40,'assets/img/products/KO25.jpg');
INSERT INTO product_assets(p_id, url) values (41,'assets/img/products/SD01.jpg');
INSERT INTO product_assets(p_id, url) values (42,'assets/img/products/SS06.jpg');
INSERT INTO product_assets(p_id, url) values (43,'assets/img/products/SW01.jpg');
INSERT INTO product_assets(p_id, url) values (44,'assets/img/products/SW02.jpg');
INSERT INTO product_assets(p_id, url) values (45,'assets/img/products/TC01.jpg');
INSERT INTO product_assets(p_id, url) values (46,'assets/img/products/TC02.jpg');
INSERT INTO product_assets(p_id, url) values (47,'assets/img/products/TC03.jpg');
INSERT INTO product_assets(p_id, url) values (48,'assets/img/products/TC04.jpg');
INSERT INTO product_assets(p_id, url) values (49,'assets/img/products/TC06.jpg');
INSERT INTO product_assets(p_id, url) values (50,'assets/img/products/TC10.jpg');
INSERT INTO product_assets(p_id, url) values (51,'assets/img/products/TC13.jpg');
INSERT INTO product_assets(p_id, url) values (52,'assets/img/products/TC14.jpg');
INSERT INTO product_assets(p_id, url) values (53,'assets/img/products/TC16.jpg');
INSERT INTO product_assets(p_id, url) values (54,'assets/img/products/TC17.jpg');
INSERT INTO product_assets(p_id, url) values (55,'assets/img/products/TC20.jpg');
INSERT INTO product_assets(p_id, url) values (56,'assets/img/products/TC21.jpg');
INSERT INTO product_assets(p_id, url) values (57,'assets/img/products/TC23.jpg');
INSERT INTO product_assets(p_id, url) values (58,'assets/img/products/TC24.jpg');
INSERT INTO product_assets(p_id, url) values (59,'assets/img/products/TC26.jpg');
INSERT INTO product_assets(p_id, url) values (60,'assets/img/products/TC27.jpg');
INSERT INTO product_assets(p_id, url) values (61,'assets/img/products/TC29.jpg');
INSERT INTO product_assets(p_id, url) values (62,'assets/img/products/TY01.jpg');
INSERT INTO product_assets(p_id, url) values (63,'assets/img/products/TY02.jpg');
INSERT INTO product_assets(p_id, url) values (64,'assets/img/products/WL01M.jpg');
INSERT INTO product_assets(p_id, url) values (65,'assets/img/products/WL02M.jpg');
INSERT INTO product_assets(p_id, url) values (66,'assets/img/products/WL03M.jpg');
INSERT INTO product_assets(p_id, url) values (67,'assets/img/products/WL08M.jpg');
INSERT INTO product_assets(p_id, url) values (68,'assets/img/products/WL09M.jpg');
INSERT INTO product_assets(p_id, url) values (69,'assets/img/products/WL14M.jpg');
INSERT INTO product_assets(p_id, url) values (70,'assets/img/products/WL21M.jpg');
INSERT INTO product_assets(p_id, url) values (71,'assets/img/products/YH01M.jpg');
INSERT INTO product_assets(p_id, url) values (72,'assets/img/products/YH02.jpg');
INSERT INTO product_assets(p_id, url) values (73,'assets/img/products/YH04M.jpg');
INSERT INTO product_assets(p_id, url) values (74,'assets/img/products/YH08.jpg');
INSERT INTO product_assets(p_id, url) values (75,'assets/img/products/YH09.jpg');
INSERT INTO product_assets(p_id, url) values (76,'assets/img/products/YS02.jpg');
INSERT INTO product_assets(p_id, url) values (77,'assets/img/products/D001.jpg');
INSERT INTO product_assets(p_id, url) values (78,'assets/img/products/D002.jpg');
INSERT INTO product_assets(p_id, url) values (79,'assets/img/products/D003.jpg');
INSERT INTO product_assets(p_id, url) values (80,'assets/img/products/JW08.jpg');
INSERT INTO product_assets(p_id, url) values (81,'assets/img/products/D004A.jpg');
INSERT INTO product_assets(p_id, url) values (82,'assets/img/products/D005.jpg');
INSERT INTO product_assets(p_id, url) values (83,'assets/img/products/D008.jpg');
INSERT INTO product_assets(p_id, url) values (84,'assets/img/products/D099.jpg');
INSERT INTO product_assets(p_id, url) values (85,'assets/img/products/AZ05.jpg');
INSERT INTO product_assets(p_id, url) values (86,'assets/img/products/AJ06.jpg');
INSERT INTO product_assets(p_id, url) values (87,'assets/img/products/D121.jpg');
INSERT INTO product_assets(p_id, url) values (88,'assets/img/products/D126.jpg');


-- Product category relationship
INSERT INTO product_category values(4,1);
INSERT INTO product_category values(4,2);
INSERT INTO product_category values(4,3);
INSERT INTO product_category values(4,4);
INSERT INTO product_category values(5,5);
INSERT INTO product_category values(3,6);
INSERT INTO product_category values(3,7);
INSERT INTO product_category values(3,8);
INSERT INTO product_category values(3,9);
INSERT INTO product_category values(3,10);
INSERT INTO product_category values(3,11);
INSERT INTO product_category values(3,12);
INSERT INTO product_category values(3,13);
INSERT INTO product_category values(3,14);
INSERT INTO product_category values(3,15);
INSERT INTO product_category values(3,16);
INSERT INTO product_category values(3,17);
INSERT INTO product_category values(4,18);
INSERT INTO product_category values(3,19);
INSERT INTO product_category values(3,20);
INSERT INTO product_category values(3,21);
INSERT INTO product_category values(3,22);
INSERT INTO product_category values(5,23);
INSERT INTO product_category values(5,24);
INSERT INTO product_category values(3,25);
INSERT INTO product_category values(4,26);
INSERT INTO product_category values(3,27);
INSERT INTO product_category values(3,28);
INSERT INTO product_category values(3,29);
INSERT INTO product_category values(5,30);
INSERT INTO product_category values(3,31);
INSERT INTO product_category values(4,32);
INSERT INTO product_category values(3,33);
INSERT INTO product_category values(5,34);
INSERT INTO product_category values(3,35);
INSERT INTO product_category values(5,36);
INSERT INTO product_category values(5,37);
INSERT INTO product_category values(3,38);
INSERT INTO product_category values(4,39);
INSERT INTO product_category values(4,40);
INSERT INTO product_category values(3,41);
INSERT INTO product_category values(3,42);
INSERT INTO product_category values(3,43);
INSERT INTO product_category values(3,44);
INSERT INTO product_category values(4,45);
INSERT INTO product_category values(4,46);
INSERT INTO product_category values(3,47);
INSERT INTO product_category values(3,48);
INSERT INTO product_category values(4,49);
INSERT INTO product_category values(4,50);
INSERT INTO product_category values(5,51);
INSERT INTO product_category values(3,52);
INSERT INTO product_category values(4,53);
INSERT INTO product_category values(4,54);
INSERT INTO product_category values(3,55);
INSERT INTO product_category values(4,56);
INSERT INTO product_category values(3,57);
INSERT INTO product_category values(3,58);
INSERT INTO product_category values(4,59);
INSERT INTO product_category values(3,60);
INSERT INTO product_category values(3,61);
INSERT INTO product_category values(3,62);
INSERT INTO product_category values(3,63);
INSERT INTO product_category values(5,64);
INSERT INTO product_category values(5,65);
INSERT INTO product_category values(3,66);
INSERT INTO product_category values(3,67);
INSERT INTO product_category values(4,68);
INSERT INTO product_category values(3,69);
INSERT INTO product_category values(3,70);
INSERT INTO product_category values(4,71);
INSERT INTO product_category values(4,72);
INSERT INTO product_category values(3,73);
INSERT INTO product_category values(4,74);
INSERT INTO product_category values(3,75);
INSERT INTO product_category values(3,76);
INSERT INTO product_category values(6,77);
INSERT INTO product_category values(6,78);
INSERT INTO product_category values(6,79);
INSERT INTO product_category values(6,80);
INSERT INTO product_category values(6,81);
INSERT INTO product_category values(6,82);
INSERT INTO product_category values(6,83);
INSERT INTO product_category values(6,84);
INSERT INTO product_category values(6,85);
INSERT INTO product_category values(6,86);
INSERT INTO product_category values(6,87);
INSERT INTO product_category values(6,88);

-- Change unavailable image url to NA
update product_assets
set url = 'assets/img/products/NA.jpg'
where p_id in (select id 
                from product 
                where product_code in ('AJ-06','AZ-05','CH-02','CH-03','CH-04',
                'CH-05','CH-06','CK-03','CK-05','CW-12','CW-13',
                'D099','ED-06','HS-01M','HS-18M','JC-36G','YS-02'));

update product_assets
set url = 'assets/img/products/ED06.jpg'
where p_id in (select id 
                from product 
                where product_code = 'ED-06');
update product_assets
set url = 'assets/img/products/CK05.jpg'
where p_id in (select id 
                from product 
                where product_code = 'CK-05');
update product_assets
set url = 'assets/img/products/CK03.jpg'
where p_id in (select id 
                from product 
                where product_code = 'CK-03');                

update product_assets
set url = 'assets/img/products/AJ06.jpg'
where p_id in (select id 
                from product 
                where product_code = 'AJ-06');
update product_assets
set url = 'assets/img/products/HS01M.jpg'
where p_id in (select id 
                from product 
                where product_code = 'HS-01M');
update product_assets
set url = 'assets/img/products/HS18M.jpg'
where p_id in (select id 
                from product 
                where product_code = 'HS-18M');

update product_assets
set url = 'assets/img/products/CH02.jpg'
where p_id in (select id 
                from product 
                where product_code = 'CH-02');
update product_assets
set url = 'assets/img/products/CH03.jpg'
where p_id in (select id 
                from product 
                where product_code = 'CH-03');
update product_assets
set url = 'assets/img/products/CH04.jpg'
where p_id in (select id 
                from product 
                where product_code = 'CH-04');
update product_assets
set url = 'assets/img/products/CW12.jpg'
where p_id in (select id 
                from product 
                where product_code = 'CW-12');
update product_assets
set url = 'assets/img/products/CW13.jpg'
where p_id in (select id 
                from product 
                where product_code = 'CW-13');
update product_assets
set url = 'assets/img/products/YS02.jpg'
where p_id in (select id 
                from product 
                where product_code = 'YS-02');

update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='AJ01';
update product set cooking='Boil water, add desired amount, add vegetables, cook and serve. Ideal for soups.' where replace(product_code,'-','')='AJ02';
update product set cooking='Boil water, add desired amount, add vegetables, cook and serve. Ideal for soups.' where replace(product_code,'-','')='AJ03';
update product set cooking='Consume directly with sushi, bread, or rice.' where replace(product_code,'-','')='AJ06';
update product set cooking='Boil water, add desired amount, add vegetables, cook and serve. Ideal for soups.' where replace(product_code,'-','')='AJ07';
update product set cooking='Consume directly as snack.' where replace(product_code,'-','')='AZ05';
update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='CH01';
update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='CH02';
update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='CH03';
update product set cooking='Deep fry and serve.' where replace(product_code,'-','')='CH04';
update product set cooking='Defrost, cut into desired slices or chunks, pan fry with oil mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='CH05';
update product set cooking='Defrost, cut into desired slices or chunks, pan fry with oil mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='CH06';
update product set cooking='Defrost, pan fry with oil and serve.' where replace(product_code,'-','')='CK03';
update product set cooking='Deep fry and serve.' where replace(product_code,'-','')='CK05';
update product set cooking='Defrost, cut into desired slices or chunks, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='CK06-V';
update product set cooking='Defrost, cut into desired slices or chunks, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='CW02';
update product set cooking='Defrost, pan fry with oil and serve with bread.' where replace(product_code,'-','')='CW03';
update product set cooking='Defrost, cut into desired slices or chunks, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='CW07';
update product set cooking='Defrost, grill or pan fry with oil and serve.' where replace(product_code,'-','')='CW08';
update product set cooking='Deep fry and serve.' where replace(product_code,'-','')='CW09';
update product set cooking='Defrost, cut into desired slices or chunks, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='CW11';
update product set cooking='Defrost, cut into desired slices or chunks, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='CW12';
update product set cooking='Soak in hot water for at least 5 minutes, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='D001';
update product set cooking='Soak in hot water for at least 5 minutes, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='D002';
update product set cooking='Soak in hot water for at least 5 minutes, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='D003';
update product set cooking='Soak in hot water for at least 5 minutes, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='D004';
update product set cooking='Soak in hot water for at least 5 minutes, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='D005';
update product set cooking='Soak in hot water for at least 5 minutes, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='D008';
update product set cooking='Consume directly with sushi, bread, or rice.' where replace(product_code,'-','')='D099';
update product set cooking='1. Add desired amount to noodles or rice, stir and serve.  Or 2. Cook with vegetables and serve.' where replace(product_code,'-','')='D121';
update product set cooking='Cook with vegetables and serve.' where replace(product_code,'-','')='D126';
update product set cooking='Defrost, cut into desired slices or chunks, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='ED06';
update product set cooking='1. Defrost, cut into desired slices, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.  Or 2. Defrost, cut into desired slices, pan fry with oil, serve with noodle soup.' where replace(product_code,'-','')='FC01';
update product set cooking='Defrost, cut into desired chunks, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve. ' where replace(product_code,'-','')='FC06';
update product set cooking='Defrost, cut into desired slices or chunks, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='GS03';
update product set cooking='Defrost, cut into desired slices or chunks, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='HS01';
update product set cooking='Defrost, remove plastic wrap, grill or pan fry with oil and serve.' where replace(product_code,'-','')='HS04';
update product set cooking='Defrost, remove plastic wrap, grill or pan fry with oil and serve.' where replace(product_code,'-','')='HS10';
update product set cooking='1. Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.  Or 2. Boil water, add desired amount, add vegetables, cook and serve. Ideal for soups.' where replace(product_code,'-','')='HS11';
update product set cooking='1. Defrost, pan fry with oil, cook and serve.' where replace(product_code,'-','')='HS16';
update product set cooking='Defrost, cut into desired slices or chunks, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='HS18';
update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='HY04';
update product set cooking='Defrost, cut into desired slices or chunks, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='JC36';
update product set cooking='' where replace(product_code,'-','')='JW08';
update product set cooking='Consumed with sandwiches, salades, or toppings for pizza.' where replace(product_code,'-','')='K025';
update product set cooking='Boil water, add desired amount, add vegetables, cook and serve. Ideal for soups.' where replace(product_code,'-','')='KC02';
update product set cooking='1. Deep fry and serve.  Or 2. Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='KC10';
update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='KC21';
update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='KC23';
update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='KC29';
update product set cooking='Defrost, cut into desired slices or chunks, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='SD01';
update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='SS06';
update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='SW01';
update product set cooking='Defrost, grill or pan fry with oil and serve.' where replace(product_code,'-','')='SW02';
update product set cooking='Defrost, cut into desired slices or chunks, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='TC01';
update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='TC02';
update product set cooking='Defrost, cut into desired slices or chunks, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='TC03';
update product set cooking='Deep fry and serve.' where replace(product_code,'-','')='TC04';
update product set cooking='Defrost, cut into desired slices or chunks, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='TC06';
update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='TC10';
update product set cooking='Boil water, add entire contents, add vegetables, cook and serve.' where replace(product_code,'-','')='TC13';
update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='TC14';
update product set cooking='Defrost, used as fillings for wontons or dumplings.' where replace(product_code,'-','')='TC16';
update product set cooking='Defrost, used as fillings for wontons or dumplings.' where replace(product_code,'-','')='TC17';
update product set cooking='Defrost, used as fillings for wontons or dumplings.' where replace(product_code,'-','')='TC18';
update product set cooking='Boil water, add desired amount, add vegetables, cook and serve. Ideal for soups.' where replace(product_code,'-','')='TC20';
update product set cooking='Defrost, cut into thin slices, cook with vegetables and serve.' where replace(product_code,'-','')='TC21';
update product set cooking='Deep fry or braise and serve.' where replace(product_code,'-','')='TC23';
update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='TC24';
update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='TC26';
update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='TC27';
update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='TC29';
update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='TY01';
update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='TY02';
update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='WL01';
update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='WL02';
update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='WL03';
update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='WL08';
update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='WL09';
update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='WL14';
update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='WL21';
update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='WS01';
update product set cooking='Deep fry and serve.' where replace(product_code,'-','')='YH01';
update product set cooking='Boil water, add desired amount, add vegetables, cook and serve. Ideal for soups.' where replace(product_code,'-','')='YH02';
update product set cooking='Defrost, pan fry with oil and serve.' where replace(product_code,'-','')='YH04';
update product set cooking='Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.' where replace(product_code,'-','')='YH08';
update product set cooking='Defrost, pan fry with oil and serve with bread.' where replace(product_code,'-','')='YH09';
update product set cooking='Deep fry and serve.' where replace(product_code,'-','')='YS02';

update product_assets
set url = 'assets/img/products/JC35.jpg'
where p_id in (select id 
                from product 
                where product_code = 'CH-05');
update product_assets
set url = 'assets/img/products/JC35.jpg'
where p_id in (select id 
                from product 
                where product_code = 'CH-05');
update product_assets
set url = 'assets/img/products/JC35.jpg'
where p_id in (select id 
                from product 
                where product_code = 'JC-36G');
