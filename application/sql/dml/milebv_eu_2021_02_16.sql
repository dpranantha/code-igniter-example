-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: milebv.eu.mysql.service.one.com:3306
-- Generation Time: Feb 16, 2021 at 08:54 PM
-- Server version: 10.3.27-MariaDB-1:10.3.27+maria~focal
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `milebv_eu`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `parent_id`) VALUES
(1, 'All', NULL),
(2, 'Frozen foods', 1),
(6, 'Dry foods', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_code` varchar(20) NOT NULL,
  `name_en` varchar(250) NOT NULL,
  `name_de` varchar(250) DEFAULT NULL,
  `name_cn` varchar(250) DEFAULT NULL,
  `weight_gr` int(11) NOT NULL,
  `n_piece` int(11) NOT NULL,
  `cooking` varchar(500) DEFAULT NULL,
  `weight_gr2` int(11) DEFAULT NULL,
  `n_piece2` int(11) DEFAULT NULL,
  `allergy_info` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_code`, `name_en`, `name_de`, `name_cn`, `weight_gr`, `n_piece`, `cooking`, `weight_gr2`, `n_piece2`, `allergy_info`) VALUES
(1, 'AJ-01', 'Vegan Fish Steak', 'Vegan Fischsteak', '土魠魚', 300, 40, 'Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', NULL, NULL, 'This product contains soy.'),
(2, 'AJ-02', 'Vegan Oyster', 'Vegan Austern', '素蠔', 300, 40, 'Boil water, add desired amount, add vegetables, cook and serve. Ideal for soups.', NULL, NULL, 'This product contains soy.'),
(4, 'AJ-07', 'Vegan Fish Balls', 'Vegan Fischbällchen', '素魚丸', 300, 40, 'Boil water, add desired amount, add vegetables, cook and serve. Ideal for soups.', NULL, NULL, ''),
(5, 'CH-01', 'Vegan Frozen Tofu', 'Vegan Tofu', '百頁豆腐', 595, 30, 'Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', NULL, NULL, 'This product contains soy.'),
(6, 'CH-02', 'Vegan Meatballs', 'Vegan Fleischbällchen', '全素獅子頭', 300, 40, 'Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', NULL, NULL, 'This product contains soy and wheat.'),
(11, 'CK-06', 'Vegan Ham (small)', 'Vegan Nice Schinken', '萬家香素火腿', 500, 20, NULL, NULL, NULL, 'This product contains soy.'),
(12, 'CK-03', 'Vegan Chicken Steak', 'Vegan Hühnersteak', '素香雞排', 275, 25, 'Defrost, pan fry with oil and serve.', NULL, NULL, 'This product contains soy.'),
(13, 'CK-05', 'Vegan Chicken Nuggets', 'Vegan Hähnchen Nugget', '麥克雞塊', 200, 25, 'Deep fry and serve.', NULL, NULL, 'This product contains soy, wheat and sesame.'),
(14, 'CW-02', 'Vegan Smoked Bacon', 'Vegan Räucherspeckc', '素五花肉', 250, 40, 'Defrost, cut into desired slices or chunks, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', NULL, NULL, 'This product contains soy and wheat.'),
(15, 'CW-03', 'Vegan Sandwich Ham', 'Vegan Schinkenstreifen', '麵包火腿片', 250, 40, 'Defrost, pan fry with oil and serve with bread.', NULL, NULL, 'This product contains soy and wheat.'),
(16, 'CW-07', 'Vegan Black PepperHam', 'Vegan Lecker Bauchspeck', '黑胡椒火腿', 350, 40, 'Defrost, cut into desired slices or chunks, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', NULL, NULL, 'This product contains soy and wheat.'),
(17, 'CW-08', 'Vegan Bacon Slices', 'Vegan Vegan Speckscheiben', '素培根片', 250, 50, 'Defrost, grill or pan fry with oil and serve.', NULL, NULL, 'This product contains soy and wheat.'),
(18, 'CW-09', 'Vegan Crispy Squid Ring', 'Vegan Crispy Calamariringe', '香酥花枝圈', 250, 48, 'Deep fry and serve.', NULL, NULL, 'This product contains soy, wheat  and celery.'),
(19, 'CW-11', 'Vegan Smoked Ham', 'Vegan Geraeucherter Kochschinken', '燻味火腿', 500, 36, 'Defrost, cut into desired slices or chunks, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', NULL, NULL, 'This product contains soy and wheat.'),
(20, 'CW-12', 'Vegan York Ham', 'Vegan York Schinken', '全素約克火腿', 500, 24, 'Defrost, cut into desired slices or chunks, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', NULL, NULL, 'This product contains soy and wheat.'),
(21, 'CW-13', 'Vegan Ham Dices', 'Vegan Schinkenwürfel', '全素火腿丁', 600, 30, NULL, NULL, NULL, 'This product contains soy and wheat.'),
(23, 'FC-01', 'Vegan Bean Curd', 'Vegan Frische Tofublättertetig', '豆包', 1000, 20, '1. Defrost, cut into desired slices, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.  Or 2. Defrost, cut into desired slices, pan fry with oil, serve with noodle soup.', NULL, NULL, 'This product contains soy.'),
(24, 'FC-06', 'Vegan Bean Curd roll', 'Vegan Frische Tofutteigrollen', '豆卷', 1000, 16, 'Defrost, cut into desired chunks, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve. ', NULL, NULL, 'This product contains soy.'),
(25, 'GS-03', 'Vegan Roast Duck', 'Vegan Gebratene Ente', '素烤鴨', 500, 25, 'Defrost, cut into desired slices or chunks, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', NULL, NULL, 'This product contains soy and wheat.'),
(26, 'HS-01M', 'Veggie Braised Sea Bass', 'Veggie Gedunsteteer Seebarch', '紅燒鱸魚', 250, 40, NULL, NULL, NULL, 'This product contains soy and milk.'),
(28, 'HS-10M', 'Veggie Asian Style Sausage', 'Veggie Konjawurst', '蒟蒻香腸', 300, 40, NULL, NULL, NULL, 'This product contains soy, wheat and milk.'),
(29, 'HS-11M', 'Vegan Water Chestnut Balls', 'Veggie  Yi-Pin Bällchen', '一品丸', 300, 30, NULL, NULL, NULL, 'This product contains soy and milk.'),
(30, 'HS-16M', 'Veggie Water Chestnut Roll', 'Veggie-Wasser-Kastanie Rollen', '馬蹄卷', 300, 40, NULL, NULL, NULL, 'This product contains soy and milk.'),
(32, 'HY-04', 'Vegan Grass Shrimp', 'Vegan Garnelen', '素草蝦', 300, 40, 'Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', NULL, NULL, ''),
(33, 'JC-36G', 'Vegan Chicken Ham (Small)', 'Vegan Hühnerschinken (Klein)', '味火腿(小)', 500, 24, NULL, NULL, NULL, NULL),
(34, 'KC-02', 'Vegan Shiitake-Mushroom Balls', 'Vegan Mushroom-Bällchen', '香菇丸', 600, 25, 'Boil water, add desired amount, add vegetables, cook and serve. Ideal for soups.', NULL, NULL, 'This product contains soy, wheat and sesame.'),
(35, 'KC-10V/KC-10M', 'Vegan / Veggie Salt-roasted Chicken', 'Vegan Salz-geröstetes Hähnchen', ' 鹽酥雞', 300, 30, NULL, NULL, NULL, 'This product contains soy, wheat and milk.'),
(36, 'KC-21V/KC-21M', 'Vegan/ Veggie Pepper Steak', 'Vegan/ Veggie Pfefferschnitzel', '黑胡椒大排', 300, 40, 'Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', NULL, NULL, 'This product contains soy.'),
(38, 'KC-23V/KC-23M', 'Vegan/ Veggie Chicken Pieces', 'Vegan/ Veggie Hühnerstücken', '素雞丁', 300, 40, 'Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', NULL, NULL, 'This product contains soy and wheat.'),
(39, 'KC-29', 'Vegan Shrimp', 'Vegan Garnelen', '小明蝦', 300, 40, 'Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', NULL, NULL, 'This product contains soy and wheat.'),
(40, 'KO-25', 'Vegan Tuna Fish', 'Vegan Thunfisch', '素鮪魚(冷凍/常溫)', 300, 40, NULL, NULL, NULL, 'This product contains soy.'),
(41, 'SD-01', 'Vegan Half Chicken', 'Vegan Halbes Hühn', '大自然雞', 200, 40, 'Defrost, cut into desired slices or chunks, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', NULL, NULL, 'This product contains soy and wheat.'),
(42, 'SS-06', 'Vegan Mutton', 'Vegan Tontopf Hammelfleisch', '素燉羊肉', 600, 20, 'Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', NULL, NULL, 'This product contains soy.'),
(44, 'SW-02', 'Vegan Hot Dog', 'Vegan Hot Dog', '大熱狗', 240, 40, 'Defrost, grill or pan fry with oil and serve.', NULL, NULL, 'This product contains soy.'),
(45, 'TC-01', 'Vegan Cod Steak', 'Vegan Kabeljausteak', '素鱈魚排', 200, 40, 'Defrost, cut into desired slices or chunks, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', NULL, NULL, 'This product contains soy and wheat.'),
(46, 'TC-02', 'Vegan Sesame Eel', 'Vegan Sesam Aal', '芝麻鰻', 200, 40, 'Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', NULL, NULL, 'This product contains soy, wheat and sesame.'),
(47, 'TC-03', 'Vegan Fish Ham', 'Vegan Fisch-Schinken', '鱈魚排火腿', 600, 16, 'Defrost, cut into desired slices or chunks, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', NULL, NULL, 'This product contains soy and wheat.'),
(48, 'TC-04', 'Vegan Chicken Leg', 'Vegan Hühnerkeulen', '小鳳腿', 250, 30, 'Deep fry and serve.', NULL, NULL, 'This product contains soy and wheat.'),
(49, 'TC-06', 'Vegan Salmon', 'Vegan Salmon', '鮭魚', 300, 40, 'Defrost, cut into desired slices or chunks, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', NULL, NULL, 'This product contains soy and wheat.'),
(50, 'TC-10', 'Vegan Crab Steak', 'Vegan Krebsfleisch-Steak', '蟹肉片', 250, 40, 'Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', NULL, NULL, 'This product contains soy.'),
(51, 'TC-13', 'Vegan Health Herbal Soup', 'Vegan Gesundheit Kräuter Suppe', '當歸素寶湯', 400, 20, 'Boil water, add entire contents, add vegetables, cook and serve.', NULL, NULL, 'This product contains soy and wheat.'),
(52, 'TC-14', 'Vegan Barbecue Meat', 'Vegan BBQ Fleisch', '素叉燒肉', 200, 40, 'Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', NULL, NULL, 'This product contains soy and wheat.'),
(53, 'TC-16', 'Vegan Fish Paste', 'Vegan Fischpaste', '素魚排漿', 600, 20, 'Defrost, used as fillings for wontons or dumplings.', NULL, NULL, 'This product contains soy and wheat.'),
(54, 'TC-17', 'Vegan Shrimp Paste', 'Vegan Garnelenpaste', '素蝦排漿', 600, 20, 'Defrost, used as fillings for wontons or dumplings.', NULL, NULL, 'This product contains soy and wheat.'),
(55, 'TC-20', 'Vegan Beef Balls', 'Vegan Rindfleisch Fleischbällchen', '新牛肉丸', 250, 40, 'Boil water, add desired amount, add vegetables, cook and serve. Ideal for soups.', NULL, NULL, 'This product contains soy.'),
(56, 'TC-21', 'Vegan Abalone', 'Vegan Abalone-Muschel', '素鮑魚', 150, 40, 'Defrost, cut into thin slices, cook with vegetables and serve.', NULL, NULL, 'This product contains soy and wheat.'),
(57, 'TC-23', 'Vegan Spiced Chicken Leg', 'Vegan Gewuerzte Hühnerkeulen', '香酥雞腿', 250, 40, 'Deep fry or braise and serve.', NULL, NULL, 'This product contains soy and wheat.'),
(58, 'TC-24', 'Vegan Sesame-Oil Chicken', 'Vegan Sesameöl Hühn', '素麻油雞', 200, 40, 'Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', NULL, NULL, 'This product contains soy, wheat and sesame.'),
(59, 'TC-26', 'Vegan Fried Squid Slices', 'Vegan Gebratener Tintenfisch Scheiben', '素炸鮮魷', 200, 40, 'Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', NULL, NULL, 'This product contains soy.'),
(60, 'TC-27', 'Vegan Three-Cup Chicken', 'Vegan Drei-Tasse Hühner', '素三杯雞', 250, 40, 'Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', NULL, NULL, 'This product contains soy and wheat.'),
(61, 'TC-29', 'Vegan Stewed Beef', 'Vegan Geschmortes Rindfleisch', '素燉牛肉', 200, 40, 'Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', NULL, NULL, 'This product contains soy and wheat.'),
(62, 'TY-01', 'Vegan Barbecued Duck', 'Vegan Gegrillte Ente', '素脆皮鴨', 600, 25, 'Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', NULL, NULL, 'This product contains soy, wheat and sesame.'),
(63, 'TY-02', 'Vegan Duck Pieces', 'Vegan Ente in Stucken', '素鴨塊', 600, 25, 'Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', NULL, NULL, 'This product contains soy, wheat and sesame.'),
(64, 'WL-01M', 'Veggie Hericium Mushroom', 'Veggie Hericium Pilz', '猴頭菇', 300, 30, NULL, NULL, NULL, 'This product contains soy and milk.'),
(66, 'WL-03M', 'Veggie Chicken Strip', 'Veggie Hähnchenstreifen', '珍肉粳', 300, 30, NULL, NULL, NULL, 'This product contains soy and milk.'),
(67, 'WL-08M', 'Veggie Chicken Chunk', 'Veggie Hühn Brocken', '素雞塊', 300, 30, NULL, NULL, NULL, 'This product contains soy and milk.'),
(69, 'WL-14M', 'Veggie Fried Chicken Chunk', 'Veggie Brathähnchen Stück', '素炸雞塊', 300, 30, NULL, NULL, NULL, 'This product contains soy and milk.'),
(70, 'WL-21M', 'Veggie Stewed Mutton Slice', 'Veggie Gedämpftes Hannelfleisch Scheibe', '素燉補羊肉', 300, 30, NULL, NULL, NULL, 'This product contains soy and milk.'),
(71, 'YH-01M', 'Veggie Fish Nuggets', 'Veggie Fisch Nuggets', '餘塊', 300, 40, NULL, NULL, NULL, 'This product contains soy, wheat and milk.'),
(72, 'YH-02', 'Vegan Scallop Balls', 'Vegan Jakobsmuschel Bällchen', '干貝球', 250, 40, 'Boil water, add desired amount, add vegetables, cook and serve. Ideal for soups.', NULL, NULL, 'This product contains soy and wheat.'),
(73, 'YH-04M', 'Veggie Chicken Steak', 'Veggie Hühnersteak', '香吉排', 300, 40, NULL, NULL, NULL, 'This product contains soy, wheat and milk.'),
(74, 'YH-08', 'Vegan Crab Surimi', 'Vegan Krebs-Surimi', '蟹肉棒', 250, 40, 'Defrost, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', NULL, NULL, 'This product contains soy and wheat.'),
(75, 'YH-09', 'Vegan Ham Slices', 'Vegan Ru-Yi Schinken Aufschnitte', '如意火煺片', 1000, 17, 'Defrost, pan fry with oil and serve with bread.', NULL, NULL, 'This product contains soy.'),
(76, 'YS-02', 'Vegan Chicken Skewers', 'Vegan Hühnerspieße', '沙嗲串', 270, 40, 'Deep fry and serve.', NULL, NULL, 'This product contains soy and wheat.'),
(77, 'D001', 'Vegan Meat Chunk', 'Vegan Fleisch Chunk', '健康素肉塊', 300, 15, 'Soak in hot water for at least 5 minutes, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', 5000, 1, 'This product contains soy and wheat.'),
(78, 'D002', 'Vegan Meat Slice', 'Vegan Flesich in Scheiben', '健康素肉片', 300, 15, 'Soak in hot water for at least 5 minutes, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', 5000, 1, 'This product contains soy and wheat.'),
(79, 'D003', 'Vegan Meat Strips', 'Vegan Fleischstreifen', '健康素肉絲', 300, 15, 'Soak in hot water for at least 5 minutes, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', 5000, 1, 'This product contains soy and wheat.'),
(80, 'JW-08', 'Vegan Natural Soysauce', 'Vegan Natürliche Sojasauce', '黑豆酱油', 450, 12, '', NULL, NULL, 'This product contains soy and wheat.'),
(81, 'D004A', 'Vegan Beef Slice', 'Vegan Rindflesich scheiben', '素牛肉片', 300, 15, NULL, 5000, 1, NULL),
(82, 'D005', 'Vegan Pork Steak', 'Vegan Schweineflisch steak', '素豬排', 300, 15, 'Soak in hot water for at least 5 minutes, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', 5000, 1, 'This product contains soy and wheat.'),
(83, 'D008', 'Vegan Beef Chunk', 'Vegan Rinderstücke', '素牛肉塊', 300, 15, 'Soak in hot water for at least 5 minutes, pan fry with oil, mix with vegetables, add desired sauce(s), cook and serve.', 5000, 1, 'This product contains soy and wheat.'),
(84, 'D099', 'Vegan Seaweed Mushroom Fluff', 'Vegan Meeresalgen mit Shiitakefaser', '海苔素肉鬆', 300, 30, 'Consume directly with sushi, bread, or rice.', NULL, NULL, 'This product contains soy and sesame.'),
(85, 'AZ-05', 'Vegan Beef-Jerky (BBQ)', 'Vegan Rinder-Jerky (BBQ)', '素香烤牛肉干', 200, 40, 'Consume directly as snack.', NULL, NULL, 'This product contains soy and wheat.'),
(86, 'AJ-06', 'Vegan Fish Crisp', 'Vegan  Knusprige Fischhäppchen', '素鱼酥', 300, 30, 'Consume directly with sushi, bread, or rice.', NULL, NULL, 'This product contains soy and wheat.'),
(87, 'D-121', 'Vegan Minced Meat with Mushrooms', 'Vegan Hackfleisch mit Pilzen', '香菇素肉燥', 400, 12, '1. Add desired amount to noodles or rice, stir and serve.  Or 2. Cook with vegetables and serve.', NULL, NULL, NULL),
(88, 'D-126', 'Vegan Mock Duck Chunk', 'Vegan Seitan-Entenstücke', '素鴨寶', 400, 12, 'Cook with vegetables and serve.', NULL, NULL, NULL),
(91, 'TC-05', 'Vegan black pepper strips', NULL, '黑 胡 椒 肉 條', 250, 40, NULL, NULL, NULL, 'This product contains soy and wheat.'),
(92, 'TC-09', 'Vegan over eggs', NULL, '全 素 荷 包 蛋', 200, 40, NULL, NULL, NULL, 'This product contains soy.'),
(93, 'TC-15', 'Vegan spare ribs', NULL, '素 蓮 藕 排 骨', 250, 40, NULL, NULL, NULL, 'This product contains soy and wheat.'),
(94, 'TC25', 'Vegan chili chicken', NULL, '素 韓 式 雞 丁', 250, 40, NULL, NULL, NULL, 'This product contains soy and wheat.'),
(95, 'TC38', 'Vegan meat burger', NULL, '全 素 肉 排', 250, 24, NULL, NULL, NULL, 'This product contains soy and wheat.'),
(96, 'AZ07', 'Vegan squid shreds', NULL, '素 魷 魚 絲', 100, 50, NULL, NULL, NULL, 'This product contains soy and wheat.'),
(97, 'YH10', 'Vegan lemon shrimp', NULL, '全 素 檸 檬 蝦', 300, 40, NULL, NULL, NULL, 'This product contains soy and wheat.'),
(98, 'YH11', 'Vegan vegetable stuffing balls', NULL, '全 素 什 錦 蔬 菜 丸', 300, 40, NULL, NULL, NULL, 'This product contains soy and wheat.'),
(99, 'YH12', 'Vegan shiitake balls', NULL, '全 素 海 中 寶', 300, 40, NULL, NULL, NULL, 'This product contains soy, wheat, and mushroom.'),
(100, 'YH13', 'Vegan lemon fish steak', NULL, '全 素 檸 檬 魚 排', 300, 40, NULL, NULL, NULL, 'This product contains soy and wheat.'),
(102, 'AJ08', 'Vegan fish tofu', NULL, '素 麥 香 條', 300, 40, NULL, NULL, NULL, 'This product contains soy.'),
(103, 'D007', 'Vegan instant noodle', NULL, '素 泡 麵 (不定期 多種口味)', 85, 30, NULL, NULL, NULL, 'This product contains soy, wheat, and mushroom.'),
(104, 'D121', 'Vegan minced meat with mushroom(jar)', NULL, '香 菇 素 肉 燥', 400, 12, NULL, NULL, NULL, 'This product contains soy, wheat, mushroom, and sesame.'),
(105, 'D128', 'Vegan almond seaweed', NULL, '海 苔 杏 仁 片', 40, 20, NULL, NULL, NULL, 'This product contains sesame.'),
(106, 'DX06', 'Vegan vegetable bun', NULL, '高 麗 菜 包 子', 12, 12, NULL, NULL, NULL, 'This product contains soy, wheat, and sesame.'),
(107, 'DX08', 'Vegan taro bun', NULL, '芋 泥 包 子', 12, 12, NULL, NULL, NULL, 'This product contains milk, wheat, and sesame.'),
(108, 'C24', 'Vegan hot bean paste', NULL, '辣 豆 瓣', 230, 12, NULL, NULL, NULL, 'This product contains soy and sesame.'),
(109, 'C2', 'Vegan barbecue sauce (Small)', NULL, '愛 之 味 沙 茶 醬 (Small)', 260, 12, NULL, NULL, NULL, 'This product contains soy, wheat, and sesame.'),
(110, 'C7', 'Vegan barbecue sauce (Large)', NULL, '愛 之 味 沙 茶 醬 (Large)', 737, 12, NULL, NULL, NULL, 'This product contains soy, wheat, and sesame.'),
(111, 'JW01', 'Vegan mushroom oyster sauce (Small)', NULL, '萬 家 香 香 菇 素 蠔 油 (Small)', 300, 12, NULL, NULL, NULL, 'This product contains soy and wheat.'),
(112, 'JW04', 'Vegan mushroom oyster sauce (Large)', NULL, '萬 家 香 香 菇 素 蠔 油 (Large)', 1000, 12, NULL, NULL, NULL, 'This product contains soy and wheat.'),
(114, 'CK01', 'Vegan ham (Large)', NULL, '萬 家 香 火 腿 (大)', 1000, 10, NULL, NULL, NULL, 'This product contains soy and wheat'),
(115, 'TC34', 'Vegan lemon chicken', NULL, '素檸檬雞', 250, 40, NULL, NULL, NULL, 'This product contains soy and wheat'),
(116, 'SW03', 'Vegan mouth breeder', NULL, '吳 郭 魚', 300, 40, NULL, NULL, NULL, 'This product contains soy'),
(117, 'CW01', 'Vegan Mexico hotdog', NULL, '全 素 墨 西 哥 大 熱 狗', 500, 30, NULL, NULL, NULL, 'This product contains soy'),
(118, 'AJ11', 'Vegan vegetable balls', NULL, '全 素 福 壽 丸', 300, 30, NULL, NULL, NULL, 'This product contains soy and wheat.'),
(119, 'AJ12', 'Vegan fish balls', NULL, '全 素 淡 水 魚 丸', 300, 40, NULL, NULL, NULL, 'This product contains soy and wheat.'),
(120, 'D035', 'Vegan shark\'s fin', NULL, '素 魚 翅', 100, 50, NULL, NULL, NULL, NULL),
(121, 'D088', 'Vegan five-grain rice', NULL, '十 穀 米', 1000, 24, NULL, NULL, NULL, NULL),
(122, 'D106', 'Vegan sesame paste', NULL, '全 素 芝 麻 醬', 1000, 6, NULL, NULL, NULL, 'This product contains soy and sesame.'),
(123, 'D123', 'Vegan XO sauce (jar)', NULL, 'XO 醬', 260, 12, NULL, NULL, NULL, 'This product contains soy, wheat, and mushroom.'),
(124, 'D129', 'Vegan almond seaweed (spicy)', NULL, '海 苔 杏 仁 片 (辣)', 40, 20, NULL, NULL, NULL, 'This product contains sesame.'),
(125, 'D130', 'Vegan mushroom seaweed', NULL, '香 菇 海 苔 酥', 150, 40, NULL, NULL, NULL, 'This product contains soy, wheat, mushroom, and sesame.');

-- --------------------------------------------------------

--
-- Table structure for table `product_assets`
--

CREATE TABLE `product_assets` (
  `id` int(10) UNSIGNED NOT NULL,
  `p_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_assets`
--

INSERT INTO `product_assets` (`id`, `p_id`, `url`) VALUES
(1, 1, 'assets/img/products/AJ01.jpg'),
(2, 2, 'assets/img/products/AJ02.jpg'),
(4, 4, 'assets/img/products/AJ07.jpg'),
(5, 5, 'assets/img/products/CH01.jpg'),
(6, 6, 'assets/img/products/CH02.jpg'),
(11, 11, 'assets/img/products/CK06.jpg'),
(12, 12, 'assets/img/products/CK03.jpg'),
(13, 13, 'assets/img/products/CK05.jpg'),
(14, 14, 'assets/img/products/CW02.jpg'),
(15, 15, 'assets/img/products/CW03.jpg'),
(16, 16, 'assets/img/products/CW07.jpg'),
(17, 17, 'assets/img/products/CW08.jpg'),
(18, 18, 'assets/img/products/CW09.jpg'),
(19, 19, 'assets/img/products/CW11.jpg'),
(20, 20, 'assets/img/products/CW12.jpg'),
(21, 21, 'assets/img/products/CW13.jpg'),
(23, 23, 'assets/img/products/FC01.jpg'),
(24, 24, 'assets/img/products/FC06.jpg'),
(25, 25, 'assets/img/products/GS03.jpg'),
(26, 26, 'assets/img/products/HS01M.jpg'),
(28, 28, 'assets/img/products/HS10M.jpg'),
(29, 29, 'assets/img/products/HS11M.jpg'),
(30, 30, 'assets/img/products/HS16M.jpg'),
(32, 32, 'assets/img/products/HY04.jpg'),
(33, 33, 'assets/img/products/JC35.jpg'),
(34, 34, 'assets/img/products/KC02.jpg'),
(35, 35, 'assets/img/products/KC10M.jpg'),
(36, 36, 'assets/img/products/KC21.jpg'),
(38, 38, 'assets/img/products/KC23.jpg'),
(39, 39, 'assets/img/products/KC29.jpg'),
(40, 40, 'assets/img/products/KO25.jpg'),
(41, 41, 'assets/img/products/SD01.jpg'),
(42, 42, 'assets/img/products/SS06.jpg'),
(44, 44, 'assets/img/products/SW02.jpg'),
(45, 45, 'assets/img/products/TC01.jpg'),
(46, 46, 'assets/img/products/TC02.jpg'),
(47, 47, 'assets/img/products/TC03.jpg'),
(48, 48, 'assets/img/products/TC04.jpg'),
(49, 49, 'assets/img/products/TC06.jpg'),
(50, 50, 'assets/img/products/TC10.jpg'),
(51, 51, 'assets/img/products/TC13.jpg'),
(52, 52, 'assets/img/products/TC14.jpg'),
(53, 53, 'assets/img/products/TC16.jpg'),
(54, 54, 'assets/img/products/TC17.jpg'),
(55, 55, 'assets/img/products/TC20.jpg'),
(56, 56, 'assets/img/products/TC21.jpg'),
(57, 57, 'assets/img/products/TC23.jpg'),
(58, 58, 'assets/img/products/TC24.jpg'),
(59, 59, 'assets/img/products/TC26.jpg'),
(60, 60, 'assets/img/products/TC27.jpg'),
(61, 61, 'assets/img/products/TC29.jpg'),
(62, 62, 'assets/img/products/TY01.jpg'),
(63, 63, 'assets/img/products/TY02.jpg'),
(64, 64, 'assets/img/products/WL01M.jpg'),
(66, 66, 'assets/img/products/WL03M.jpg'),
(67, 67, 'assets/img/products/WL08M.jpg'),
(69, 69, 'assets/img/products/WL14M.jpg'),
(70, 70, 'assets/img/products/WL21M.jpg'),
(71, 71, 'assets/img/products/YH01M.jpg'),
(72, 72, 'assets/img/products/YH02.jpg'),
(73, 73, 'assets/img/products/YH04M.jpg'),
(74, 74, 'assets/img/products/YH08.jpg'),
(75, 75, 'assets/img/products/YH09.jpg'),
(76, 76, 'assets/img/products/YS02.jpg'),
(77, 77, 'assets/img/products/D001.jpg'),
(78, 78, 'assets/img/products/D002.jpg'),
(79, 79, 'assets/img/products/D003.jpg'),
(80, 80, 'assets/img/products/JW08.jpg'),
(81, 81, 'assets/img/products/D004A.jpg'),
(82, 82, 'assets/img/products/D005.jpg'),
(83, 83, 'assets/img/products/D008.jpg'),
(84, 84, 'assets/img/products/D099.jpg'),
(85, 85, 'assets/img/products/AZ05.jpg'),
(86, 86, 'assets/img/products/AJ06.jpg'),
(87, 87, 'assets/img/products/D121.jpg'),
(88, 88, 'assets/img/products/D126.jpg'),
(91, 91, 'assets/img/products/TC05.jpg'),
(92, 92, 'assets/img/products/TC09.jpg'),
(93, 93, 'assets/img/products/TC15.jpg'),
(94, 94, 'assets/img/products/TC25.jpg'),
(95, 95, 'assets/img/products/TC38.jpg'),
(96, 96, 'assets/img/products/AZ07.jpg'),
(97, 97, 'assets/img/products/YH10-new.jpg'),
(98, 98, 'assets/img/products/YH11.jpg'),
(99, 99, 'assets/img/products/YH12.jpg'),
(100, 100, 'assets/img/products/YH13.jpg'),
(102, 102, 'assets/img/products/AJ08.jpg'),
(103, 103, 'assets/img/products/D007.jpg'),
(104, 104, 'assets/img/products/D121.jpg'),
(105, 105, 'assets/img/products/D128.jpg'),
(106, 106, 'assets/img/products/DX06.jpg'),
(107, 107, 'assets/img/products/DX08.jpg'),
(108, 108, 'assets/img/products/C24.jpg'),
(109, 109, 'assets/img/products/C2.jpg'),
(110, 110, 'assets/img/products/C7.jpg'),
(111, 111, 'assets/img/products/JW01.jpg'),
(112, 112, 'assets/img/products/JW04.jpg'),
(114, 114, 'assets/img/products/CK01.jpg'),
(115, 115, 'assets/img/products/TC34.jpg'),
(116, 116, 'assets/img/products/NA.jpg'),
(117, 117, 'assets/img/products/NA.jpg'),
(118, 118, 'assets/img/products/NA.jpg'),
(119, 119, 'assets/img/products/NA.jpg'),
(120, 120, 'assets/img/products/NA.jpg'),
(121, 121, 'assets/img/products/NA.jpg'),
(122, 122, 'assets/img/products/NA.jpg'),
(123, 123, 'assets/img/products/NA.jpg'),
(124, 124, 'assets/img/products/D128.jpg'),
(125, 125, 'assets/img/products/NA.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `c_id` int(10) UNSIGNED NOT NULL,
  `p_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`c_id`, `p_id`) VALUES
(2, 1),
(2, 2),
(2, 4),
(2, 5),
(2, 6),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 28),
(2, 29),
(2, 30),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 38),
(2, 39),
(2, 40),
(2, 41),
(2, 42),
(2, 44),
(2, 45),
(2, 46),
(2, 47),
(2, 48),
(2, 49),
(2, 50),
(2, 51),
(2, 52),
(2, 53),
(2, 54),
(2, 55),
(2, 56),
(2, 57),
(2, 58),
(2, 59),
(2, 60),
(2, 61),
(2, 62),
(2, 63),
(2, 64),
(2, 66),
(2, 67),
(2, 69),
(2, 70),
(2, 71),
(2, 72),
(2, 73),
(2, 74),
(2, 75),
(2, 76),
(2, 91),
(2, 92),
(2, 93),
(2, 94),
(2, 95),
(2, 96),
(2, 97),
(2, 98),
(2, 99),
(2, 100),
(2, 102),
(2, 103),
(2, 104),
(2, 105),
(2, 106),
(2, 107),
(2, 114),
(2, 115),
(2, 116),
(2, 117),
(2, 118),
(2, 119),
(2, 120),
(2, 121),
(2, 122),
(2, 123),
(2, 124),
(2, 125),
(6, 77),
(6, 78),
(6, 79),
(6, 80),
(6, 81),
(6, 82),
(6, 83),
(6, 84),
(6, 85),
(6, 86),
(6, 87),
(6, 88),
(6, 108),
(6, 109),
(6, 110),
(6, 111),
(6, 112);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_parent_id` (`parent_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `product` ADD FULLTEXT KEY `search_index` (`product_code`,`name_de`,`name_en`);

--
-- Indexes for table `product_assets`
--
ALTER TABLE `product_assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_id_assets` (`p_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD UNIQUE KEY `product_id_cat_id` (`c_id`,`p_id`),
  ADD KEY `fk_product_id` (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `product_assets`
--
ALTER TABLE `product_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `fk_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `product_assets`
--
ALTER TABLE `product_assets`
  ADD CONSTRAINT `fk_product_id_assets` FOREIGN KEY (`p_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `fk_category_id` FOREIGN KEY (`c_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `fk_product_id` FOREIGN KEY (`p_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
