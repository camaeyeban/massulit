-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2014 at 11:19 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `massulitdotcom`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `Product_id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Product_name` text NOT NULL,
  `Product_stock` int(6) unsigned NOT NULL,
  `Product_price` float(9,2) unsigned NOT NULL,
  `Product_description` text NOT NULL,
  `Product_manufacturing_date` date DEFAULT NULL,
  `Product_expiration_date` date DEFAULT NULL,
  `Product_category` enum('Bakery','Beverage','Dairy','Delicacies','Fruits','Household Supplies','Meat','Poultry','School Supplies','Seafood','Vegetables') NOT NULL,
  `Product_Featured` tinyint(1) NOT NULL,
  `Product_imageaddr` varchar(200) NOT NULL,
  PRIMARY KEY (`Product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=147 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_id`, `Product_name`, `Product_stock`, `Product_price`, `Product_description`, `Product_manufacturing_date`, `Product_expiration_date`, `Product_category`, `Product_Featured`, `Product_imageaddr`) VALUES
(00000001, 'Absolute Distilled Water 500mL', 50, 12.75, 'Access to clean and pure water is everyone’s right, especially children. That’s why when it comes to superior and consistent water quality, there’s Absolute Pure Distilled Drinking Water. Its high quality distillation process makes it the first and currently the only bottled water brand manufactured in the Philippines to be certified by the National Sanitation Foundation International, one of the world’s most trusted certification organizations. It is also a member of the International Bottled Water Association that ensures compliance among bottled water makers around the world.', '2014-06-05', '2016-06-05', 'Beverage', 0, 'http:/massulit/assets/images/beverage/Absolute2.jpg'),
(00000011, 'Homemade Egg rolls / piece', 10, 20.00, 'Satisfy your egg roll cravings! Eat a healthier version, not deep-fried but baked! This will cut the fat and calories. ', '2014-11-30', '2014-12-30', 'Bakery', 0, 'http:/massulit/assets/images/bakery/b1.jpg'),
(00000013, 'Homemade chocolate brownies / pack (10 pcs)', 10, 15.00, 'All you need is love. But a little chocolate now and then doesn''t hurt.\r\n - Charles M. Schulz', '2014-11-24', '2014-11-29', 'Bakery', 0, 'http:/massulit/assets/images/bakery/b2.jpg'),
(00000015, 'Scrumptious Tuna Turnover / piece', 10, 15.00, 'You’ll have both kids and adults eating out of your hand with these speedy and simple pockets of tuna, celery and cheese tucked in a warm, flaky crust. ', '2014-11-29', '2014-12-30', 'Bakery', 0, 'http:/massulit/assets/images/bakery/b3.jpg'),
(00000016, 'Delicious Almond Croissant / piece', 10, 30.00, 'You shouldn''t miss the chance to buy one! A great bread with the toasted almonds adorning the top of the flakey layers that hid the sugary almond paste.', '2014-11-30', '2014-12-30', 'Bakery', 0, 'http:/massulit/assets/images/bakery/b4.jpg'),
(00000017, 'Wholewheat Baguette', 10, 60.00, 'A greater depth of flavor, lovely caramel color and a fantastic rustic appearance created by the flakes of bran.', '2014-11-30', '2014-12-30', 'Bakery', 0, 'http:/massulit/assets/images/bakery/b5.jpg'),
(00000018, 'Burger Buns', 10, 25.00, 'Perfect match for burger patties and make every snack time an awesome family bonding time!', '2014-11-30', '2014-12-30', 'Bakery', 1, 'http:/massulit/assets/images/bakery/b6.jpg'),
(00000019, 'English bread', 10, 45.00, 'Always have atleast one on your table! Can be paired to any sandwich spread! compliments the taste well so buy now!', '2014-11-30', '2014-12-30', 'Bakery', 1, 'http:/massulit/assets/images/bakery/b7.jpg'),
(00000020, 'Chocolate Chip Cookies', 10, 35.00, 'Chocolate chip cookies are among only four foods acceptable to even the pickiest of eaterer. Make sure you buy and include it in your cart!', '2014-11-30', '2014-12-30', 'Bakery', 0, 'http:/massulit/assets/images/bakery/b8.jpg'),
(00000021, 'Hot dog rolls', 10, 25.00, 'Make a great meal year-round, but they are especially tasty barbecued on warm summer nights.', '2014-11-30', '2014-12-30', 'Bakery', 0, 'http:/massulit/assets/images/bakery/b9.jpg'),
(00000022, 'Blueberry Bagel', 10, 34.80, 'Love the little bits of blueberry in each bite of these bagels! ', '2014-11-30', '2014-12-30', 'Bakery', 0, 'http:/massulit/assets/images/bakery/b10.jpg'),
(00000023, 'Absolute Pure Distilled Drinking Water 5 Liters', 22, 75.00, 'Love is pure, love is absolute.', '2014-11-30', '2014-12-30', 'Beverage', 0, 'http:/massulit/assets/images/beverage/Absolute1.jpg'),
(00000024, 'Absolute Pure Distilled Drinking Water 1500 mL', 20, 25.00, 'Love is pure, love is absolute.', '0000-00-00', '0000-00-00', 'Beverage', 0, 'http:/massulit/assets/images/beverage/Absolute2.jpg'),
(00000025, 'C2 Cool and Clean Green Tea Lemon Flavor 1 Liter', 30, 60.80, 'Cool and clean', '2014-11-25', '2014-12-11', 'Beverage', 0, 'http:/massulit/assets/images/beverage/C21.jpg'),
(00000026, 'C2 Cool and Clean Green Tea Apple Flavor 1 Liter', 30, 60.80, 'Cool and clean', '2014-11-25', '2014-12-06', 'Beverage', 0, 'http:/massulit/assets/images/beverage/C22.jpg'),
(00000027, 'C2 Cool and Clean Green Tea 1 Liter', 30, 60.80, 'Cool and clean', '2014-11-25', '2014-12-06', 'Beverage', 0, 'http:/massulit/assets/images/beverage/C23.jpg'),
(00000028, 'Cobra Energy Drink Citrus Blast', 25, 45.50, 'Kapag meron ka nito, wala kang talo.', '2014-11-25', '2014-12-25', 'Beverage', 0, 'http:/massulit/assets/images/beverage/Cobra1.jpg'),
(00000029, 'Cobra Energy Drink Gingko Biloba', 25, 45.50, 'Kapag meron ka nito, wala kang talo', '2014-11-25', '2014-12-25', 'Beverage', 1, 'http:/massulit/assets/images/beverage/Cobra2.jpg'),
(00000030, 'Cobra Fit Energy Drink', 18, 35.80, 'Kapag meron ka nito, wala kang talo', '2014-11-25', '2014-12-25', 'Beverage', 0, 'http:/massulit/assets/images/beverage/Cobra3.jpg'),
(00000031, 'Cobra Defense Energy Drink', 20, 45.90, 'Kapag meron ka nito, wala kang talo', '2014-11-25', '2014-12-25', 'Beverage', 0, 'http:/massulit/assets/images/beverage/Cobra4.jpg'),
(00000032, 'Coca cola Coke-in-Can', 15, 42.00, 'Open happiness', '2014-11-25', '2014-12-25', 'Beverage', 0, 'http:/massulit/assets/images/beverage/Coke1.jpg'),
(00000033, 'Coca Cola Light Coke-in-Can', 10, 30.00, 'Open happiness', '2014-11-25', '2014-12-25', 'Beverage', 0, 'http:/massulit/assets/images/beverage/Coke2.jpg'),
(00000034, 'Coca Cola Zero Coke-in-Can', 13, 30.00, 'Open happiness', '2014-11-25', '2014-12-25', 'Beverage', 0, 'http:/massulit/assets/images/beverage/Coke3.jpg'),
(00000035, 'Nestea Flavored Tea Drink Lemon Flavor', 16, 15.00, 'Cool to the core', '2014-11-25', '2014-12-25', 'Beverage', 0, 'http:/massulit/assets/images/beverage/Nestea1.jpg'),
(00000036, 'Nestea Flavored Tea Drink Apple Flavor', 13, 15.00, 'Cool to the core', '2014-11-25', '2014-12-25', 'Beverage', 0, 'http:/massulit/assets/images/beverage/Nestea2.jpg'),
(00000037, 'Nestea Flavored Tea Drink Lemon Ice Flavor', 14, 15.00, 'Cool to the core', '2014-11-25', '2014-12-25', 'Beverage', 0, 'http:/massulit/assets/images/beverage/Nestea3.jpg'),
(00000038, 'Powerade Blue', 15, 32.00, 'It''s Blue and Delicious!!!', NULL, NULL, 'Beverage', 0, 'http:/massulit/assets/images/beverage/Powerade1.jpg'),
(00000039, 'Powerade Red', 14, 30.00, 'It''s Red and Energetic!!!', '2014-11-01', '2015-11-01', 'Beverage', 0, 'http:/massulit/assets/images/beverage/Powerade2.jpg'),
(00000040, 'Powerade Orange', 18, 30.00, 'It''s Orange and Luscious!!!', NULL, NULL, 'Beverage', 0, 'http:/massulit/assets/images/beverage/Powerade3.jpg'),
(00000041, 'Powerade Blue Small', 18, 30.00, 'It''s Small but Worth It!!!', NULL, NULL, 'Beverage', 0, 'http:/massulit/assets/images/beverage/Powerade4.jpg'),
(00000042, 'Nestea Real Leaf Green Tea Honey Apple Flavor', 20, 38.50, 'A healthy and delicious fruity green tea', NULL, NULL, 'Beverage', 0, 'http:/massulit/assets/images/beverage/Realleaf1.jpg'),
(00000043, 'Nestea Real Leaf Green Tea Honey Lemon Flavor', 18, 38.50, 'A healthy and delicious fruity green tea', NULL, NULL, 'Beverage', 0, 'http:/massulit/assets/images/beverage/Realleaf2.jpg'),
(00000044, 'Nestea Real Leaf Green Tea Honey Lychee Flavor', 19, 38.50, 'A healthy and delicious fruity green tea', NULL, NULL, 'Beverage', 0, 'http:/massulit/assets/images/beverage/Realleaf3.jpg'),
(00000045, 'Wilkins Distilled Drinking Water 1 Liter', 17, 45.00, 'Alagang Distilled, Alagang Wilkins', NULL, NULL, 'Beverage', 0, 'http:/massulit/assets/images/beverage/Wilkins1.jpg'),
(00000046, 'Wilkins Distilled Drinking Water 5 Liters', 15, 120.00, 'Alagang Distilled, Alagang Wilkins', NULL, NULL, 'Beverage', 0, 'http:/massulit/assets/images/beverage/Wilkins2.jpg'),
(00000047, 'Wilkins Distilled Drinking Water 5 Gallons', 17, 150.00, 'Alagang Distilled, Alagang Wilkins', NULL, NULL, 'Beverage', 0, 'http:/massulit/assets/images/beverage/Wilkins3.jpg'),
(00000048, 'Magnolia Butter-licious Dairy Blend 200g', 19, 30.00, 'Indulge in the goodness of butter with Magnolia Butter-licious! Made from a blend of high quality butterfat, vegetable oil, and strong butter flavor giving you the indulgent taste of butter that is both healthy and light on the pocket.\r\nMagnolia Butter-licious! 75% less cholesterol, Zero Trans Fat, 100% Butter Taste. SPREAD THE GOODNESS!', '2014-11-24', '2014-12-25', 'Dairy', 0, 'http:/massulit/assets/images/dairy/Butterlicious.jpg'),
(00000049, 'Magnolia DariCreme Buttermilk 525g', 12, 35.00, 'Premium table margarine made from special oil blends. It has provided generations of Filipino families with healthy and delicious food, making any simple dish, extra special. Perfect for bread spreads and other pastry. It comes in two delightful flavors: Dari Crème Classic and Dari Crème Buttermilk. Dari Crème is the number one refrigerated margarine in the Philippines, kaya naman ang Dari Crème and Pinipili ng \r\nMapiling Ina.\r\n', '2014-11-23', '2014-12-25', 'Dairy', 0, 'http:/massulit/assets/images/dairy/Daricreme1.jpg'),
(00000050, 'Magnolia DariCreme Classic 525g', 19, 38.00, 'Premium table margarine made from special oil blends. It has provided generations of Filipino families with healthy and delicious food, making any simple dish, extra special. Perfect for bread spreads and other pastry. It comes in two delightful flavors: Dari Crème Classic and Dari Crème Buttermilk. Dari Crème is the number one refrigerated margarine in the Philippines, kaya naman ang Dari Crème and Pinipili ng Mapiling Ina.', '2014-11-23', '2014-12-25', 'Dairy', 0, 'http:/massulit/assets/images/dairy/Daricreme2.jpg'),
(00000051, 'Magnolia DariCreme Buttermilk 300g', 7, 33.80, 'Premium table margarine made from special oil blends. It has provided generations of Filipino families with healthy and delicious food, making any simple dish, extra special. Perfect for bread spreads and other pastry. It comes in two delightful flavors: Dari Crème Classic and Dari Crème Buttermilk. Dari Crème is the number one refrigerated margarine in the Philippines, kaya naman ang Dari Crème and Pinipili ng Mapiling Ina.', '2014-11-23', '2014-12-25', 'Dairy', 0, 'http:/massulit/assets/images/dairy/Daricreme3.jpg'),
(00000052, 'Magnolia DariCreme Classic 300g', 12, 34.50, 'Premium table margarine made from special oil blends. It has provided generations of Filipino families with healthy and delicious food, making any simple dish, extra special. Perfect for bread spreads and other pastry. It comes in two delightful flavors: Dari Crème Classic and Dari Crème Buttermilk. Dari Crème is the number one refrigerated margarine in the Philippines, kaya naman ang Dari Crème and Pinipili ng Mapiling Ina.', '2014-11-25', '2014-12-25', 'Dairy', 0, 'http:/massulit/assets/images/dairy/Daricreme4.jpg'),
(00000053, 'Magnolia Gold Pure and Creamy Butter Salted 225g', 15, 50.60, 'A pure and creamy butter freshly made from excellent quality butterfat and milk solids. It has a natural buttery flavor adding superb taste and aroma to your favorite dishes. ', '2014-11-25', '2014-12-25', 'Dairy', 1, 'http:/massulit/assets/images/dairy/Magnoliagold1.jpg'),
(00000054, 'Magnolia Gold Pure and Creamy Butter Unsalted 225g', 13, 40.00, 'A pure and creamy butter freshly made from excellent quality butterfat and milk solids. It has a natural buttery flavor adding superb taste and aroma to your favorite dishes. ', '2014-11-25', '2014-12-25', 'Dairy', 0, 'http:/massulit/assets/images/dairy/Magnoliagold2.jpg'),
(00000055, 'Nestle Fruit Selection Low-fat Yogurt Berry Delight', 13, 45.00, 'Delicious but not healthy? Healthy but not delicious? Who says you can’t have both?', '2014-11-25', '2014-12-06', 'Dairy', 0, 'http:/massulit/assets/images/dairy/Yogurt1.jpg'),
(00000056, 'Nestle Fruit Selection Low-fat Yogurt Buco Delight', 18, 45.00, 'Delicious but not healthy? Healthy but not delicious? Who says you can’t have both?', '2014-11-25', '2014-12-06', 'Dairy', 0, 'http:/massulit/assets/images/dairy/Yogurt2.jpg'),
(00000057, 'Nestle Fruit Selection Low-fat Yogurt Heavenly Mango', 13, 45.00, 'Delicious but not healthy? Healthy but not delicious? Who says you can’t have both?', '2014-12-25', '2014-12-06', 'Dairy', 0, 'http:/massulit/assets/images/dairy/Yogurt3.jpg'),
(00000058, 'Bibingka 5 per package', 17, 50.00, 'Enjoy the delicious delicacies of the Philippines. It''s more fun in the Philippines!', '2014-11-30', '2014-12-30', 'Delicacies', 0, 'http:/massulit/assets/images/delicacies/bibingka.jpg'),
(00000059, 'Buko Pie 6 slices', 10, 190.00, 'Enjoy the delicious delicacies of the Philippines. It''s more fun in the Philippines!', '2014-11-30', '2014-12-30', 'Delicacies', 0, 'http:/massulit/assets/images/delicacies/buko.jpg'),
(00000060, 'Empanada 5 per package', 10, 45.00, 'Enjoy the delicious delicacies of the Philippines. It''s more fun in the Philippines!', '2014-11-30', '2014-12-30', 'Delicacies', 0, 'http:/massulit/assets/images/delicacies/empanada.jpg'),
(00000061, 'Hopia', 10, 50.00, 'Enjoy the delicious delicacies of the Philippines. It''s more fun in the Philippines!', '2014-11-30', '2014-12-30', 'Delicacies', 0, 'http:/massulit/assets/images/delicacies/hopia.jpg'),
(00000062, 'Kutsinta', 10, 50.00, 'Enjoy the delicious delicacies of the Philippines. It''s more fun in the Philippines!', '2014-11-30', '2014-12-30', 'Delicacies', 0, 'http:/massulit/assets/images/delicacies/kutsinta.jpg'),
(00000063, 'Leche Flan', 10, 60.00, 'Enjoy the delicious delicacies of the Philippines. It''s more fun in the Philippines!', '2014-11-30', '2014-12-30', 'Delicacies', 0, 'http:/massulit/assets/images/delicacies/leche.jpg'),
(00000064, 'Macapuno', 10, 60.00, 'Enjoy the delicious delicacies of the Philippines. It''s more fun in the Philippines!', '2014-11-30', '2014-12-30', 'Delicacies', 0, 'http:/massulit/assets/images/delicacies/macapuno.jpg'),
(00000065, 'Dried Mango', 10, 80.00, 'Enjoy the delicious delicacies of the Philippines. It''s more fun in the Philippines!', '2014-11-30', '2014-12-30', 'Delicacies', 1, 'http:/massulit/assets/images/delicacies/mango.jpg'),
(00000066, 'Otap', 10, 70.00, 'Enjoy the delicious delicacies of the Philippines. It''s more fun in the Philippines!', '2014-11-30', '2014-12-30', 'Delicacies', 0, 'http:/massulit/assets/images/delicacies/otap.jpg'),
(00000067, 'Pastillas', 10, 60.00, 'Enjoy the delicious delicacies of the Philippines. It''s more fun in the Philippines!', '2014-11-30', '2014-12-30', 'Delicacies', 0, 'http:/massulit/assets/images/delicacies/pastillas.jpg'),
(00000068, 'Peanut Brittle', 10, 80.00, 'Enjoy the delicious delicacies of the Philippines. It''s more fun in the Philippines!', '2014-11-30', '2014-12-30', 'Delicacies', 0, 'http:/massulit/assets/images/delicacies/peanut.jpg'),
(00000069, 'Sampaloc Sour Candy', 10, 60.00, 'Enjoy the delicious delicacies of the Philippines. It''s more fun in the Philippines!', '2014-11-30', '2014-12-30', 'Delicacies', 0, 'http:/massulit/assets/images/delicacies/sampaloc.jpg'),
(00000070, 'Yema', 10, 70.00, 'Enjoy the delicious delicacies of the Philippines. It''s more fun in the Philippines!', '2014-11-30', '2014-12-30', 'Delicacies', 0, 'http:/massulit/assets/images/delicacies/yema.jpg'),
(00000071, 'Red Apple', 10, 20.00, 'An apple a day keeps the doctor away, But if the doctor is cute forget the fruit...', '2014-11-25', '2014-11-27', 'Fruits', 0, 'http:/massulit/assets/images/fruits/apple.jpg'),
(00000072, 'Banana', 10, 20.00, 'Eating a banana can cheer you up. Bananas are the only fruit to contain the amino acid tryptophan plus vitamin B6 which together help the body produce serotonin – the natural chemical which alleviates mental depression.', '2014-11-25', '2014-11-27', 'Fruits', 0, 'http:/massulit/assets/images/fruits/banana.jpg'),
(00000073, 'Dragon Fruit', 10, 25.00, 'Dragon fruit prevent formation of cancer causing free radicals. Dragon fruit is rich in minerals and fibers that aids in digestion, cleans toxic ingredients thus preventing the occurrence of colon cancer.', '2014-11-25', '2014-11-27', 'Fruits', 0, 'http:/massulit/assets/images/fruits/dragonfruit.jpg'),
(00000074, 'Grapes', 10, 39.00, 'Widely popular, grapes are regarded in many cultures as “the queen of fruits," since centuries. These tiny berries are the storehouse of numerous health promoting phyto-nutrients such as poly-phenolic antioxidants, vitamins, and minerals. No wonder why so many of us often include them in our diet, be it in the form of fresh table fruits, dry fruits, juice, or simply in salads!', '2014-11-25', '2014-11-27', 'Fruits', 1, 'http:/massulit/assets/images/fruits/grapes.jpg'),
(00000075, 'Kiwi', 10, 40.00, 'Inositol is found in kiwifruit. Recent studies have shown that inositol, because of its function as a precursor of an intracellular second messenger system, can be beneficial in the treatment of depression.', '2014-11-25', '2014-11-27', 'Fruits', 0, 'http:/massulit/assets/images/fruits/kiwi.jpg'),
(00000076, 'Mango', 10, 45.00, 'Mango, being high in calories and carbohydrates, is good for those who are trying to gain weight. It is believed to be effective in relieving clogged pores of the skin.', '2014-11-25', '2014-11-27', 'Fruits', 0, 'http:/massulit/assets/images/fruits/mango.jpg'),
(00000077, 'Orange', 10, 30.00, 'Orange packs over 170 different phytonutrients and more than 60 flavonoids, many of which have been shown to have anti-inflammatory, anti-tumour and blood clot inhibiting properties, as well as strong anti-oxidant effects. \r\n\r\nThe combination of the high amount of anti-oxidant (vitamin C) and flavonoids in oranges makes it one of the best fruits in helping to promote optimal health. \r\n', '2014-11-25', '2014-11-27', 'Fruits', 0, 'http:/massulit/assets/images/fruits/orange.jpg'),
(00000078, 'Pineapple', 10, 50.50, 'Pineapples are actually not just one fruit but a composite of many flowers whose individual fruitlets fuse together around a central core. Each fruitlet can be identified by an ''eye,'' the rough spiny marking on the pineapple''s surface.', '2014-11-25', '2014-11-27', 'Fruits', 0, 'http:/massulit/assets/images/fruits/pineapple.jpg'),
(00000079, 'Strawberry', 10, 60.00, 'Strawberries are very good in potassium and magnesium content, both of which are very effective in lowering high blood pressure caused by sodium.', '2014-11-25', '2014-11-27', 'Fruits', 0, 'http:/massulit/assets/images/fruits/strawberry.jpg'),
(00000080, 'Watermelon', 10, 60.00, 'The health benefits of watermelon are really great. No matter how it is sliced, it is packed with some of the most important antioxidants found in nature.\r\n\r\nIt is an excellent source of vitamin C and a very good source of vitamin A, particularly through its concentration of beta-carotene.\r\n', '2014-11-25', '2014-11-27', 'Fruits', 0, 'http:/massulit/assets/images/fruits/watermelon.jpg'),
(00000081, 'Baygon Multi-Insect Killer', 20, 70.00, 'Kills bugs dead...protects your family!', '2014-11-30', NULL, 'Household Supplies', 0, 'http:/massulit/assets/images/household-supplies/baygon.jpg'),
(00000082, 'Zonrox Bleach Color Safe', 20, 70.00, 'Tough on stains, but gentle on colors.  Clean and brighten your colored clothes with Zonrox Colorsafe Bleach.  It boosts the performance of your detergent, helping your clothes stay looking brand new.  Zonrox Colorsafe Bleach may be used as a pre-treater or during washing.', '2014-11-30', NULL, 'Household Supplies', 0, 'http:/massulit/assets/images/household-supplies/bleach.jpg'),
(00000083, 'Brush', 30, 80.00, 'deep dirt? Help your soap with the power of brush and clean it all', '2014-11-30', NULL, 'Household Supplies', 0, 'http:/massulit/assets/images/household-supplies/brush.jpg'),
(00000084, 'Joy Ultraconcentrated Dish washing Liquid', 30, 40.00, 'dermatologist-tested dishwashing liquid is gentle on your hands and 98% naturally derived. And our formula cuts through tough grease, removes baked-on food and easily rinses away for a natural, streak-free shine on all your glasses, plates, pots and pans.', '2014-11-30', NULL, 'Household Supplies', 0, 'http:/massulit/assets/images/household-supplies/dishwashing.jpg'),
(00000085, 'Surf Fabric Conditioner', 30, 10.00, 'Double in fresh fragrance and cleaning power. It is true that less is more in Surf’s concentrated liquids!', '2014-11-30', NULL, 'Household Supplies', 0, 'http:/massulit/assets/images/household-supplies/fabcon.jpg'),
(00000086, 'Glade Solid Air Freshener Clean Linen', 10, 90.00, 'These days, we could all use a refreshing dose of the sensible. Meet the Glade® Solid Air Freshener – just twist to release the rich fragrance within and set the intensity by adjusting the lid. With a variety of scents to choose from, it''s the perfectly practical way to add continuous fragrance to your home.', '2014-11-30', NULL, 'Household Supplies', 0, 'http:/massulit/assets/images/household-supplies/glade.jpg'),
(00000087, 'Gloves', 10, 50.00, 'These gloves are engineered to provide protection against cuts, abrasions and punctures in addition to grip properties for handling materials in light oil or dry applications. They also deliver varying levels of liquid repellency and a variety of special properties, while offering dexterity and comfort.', '2014-11-30', NULL, 'Household Supplies', 0, 'http:/massulit/assets/images/household-supplies/gloves.jpg'),
(00000088, 'Mop', 10, 90.00, 'Made for everyone’s convenience. Easy to dry, use and bring anywhere', '2014-11-30', NULL, 'Household Supplies', 0, 'http:/massulit/assets/images/household-supplies/mop.jpg'),
(00000089, 'Surf Detergent Powder Tropical Lily and Ylang ylang with Essential Oils', 10, 90.00, 'Surf provides you with great cleaning with amazing fragrances – giving your laundry a lift with every wash.', '2014-11-30', NULL, 'Household Supplies', 0, 'http:/massulit/assets/images/household-supplies/powder.jpg'),
(00000090, 'Sponge', 10, 30.00, 'Take away your troubles in your kitchen. Make your life easy using sponge in washing your dishes!', '2014-11-30', NULL, 'Household Supplies', 0, 'http:/massulit/assets/images/household-supplies/sponge.jpg'),
(00000091, 'Tissue', 10, 50.00, 'Can be used to clean the upper area of the toilet, around the bowl.', '2014-11-30', NULL, 'Household Supplies', 0, 'http:/massulit/assets/images/household-supplies/tissue.jpg'),
(00000092, 'Toilet brush', 10, 90.00, 'Designed to facilitate the expulsion of nasal mucus from the nose although it may refer to other types of facial tissues including napkins and wipes.', '2014-11-30', NULL, 'Household Supplies', 0, 'http:/massulit/assets/images/household-supplies/toilet-brush.jpg'),
(00000093, 'Bacon', 10, 90.00, 'Bacon has a very valuable amount of protein that is "valuable to maintaining our energy levels and a fully functioning, healthy body, with a minimum of those nasty, waist, thigh and butt expanding, fat building carbohydrates.', '2014-11-30', '2014-12-30', 'Meat', 0, 'http:/massulit/assets/images/meat/bacon.jpg'),
(00000094, 'Beef slice', 20, 90.00, 'Beef is an excellent source of complete protein and minerals such as zinc,selenium, phosphorus and iron, and B vitamins.', '2014-11-30', '2014-12-30', 'Meat', 0, 'http:/massulit/assets/images/meat/beef.jpg'),
(00000095, 'Burger Patties', 10, 80.00, 'Make your snacks more amazing than ever! Cook burgers for your kids! Give them a treat for today!', '2014-11-30', '2014-12-30', 'Meat', 0, 'http:/massulit/assets/images/meat/burgers.jpg'),
(00000096, 'Ham', 10, 50.00, 'Ham is typically used in its sliced form, often as a filling for sandwiches and similar foods, such as in the ham sandwich and ham and cheese sandwich. Other variations include toasted sandwiches such as the croque-monsieur.\r\nIt is also used chopped in a wide range of dishes, such as omelettes.\r\n', '2014-11-30', '2014-12-30', 'Meat', 0, 'http:/massulit/assets/images/meat/ham.jpg'),
(00000097, 'Purefoods Tenderjuicy Hotdog Classic', 10, 80.00, 'Made from ground meat with a skin around it. Easy to cook and serve! Favorite of kids. Perfect for everyone!', '2014-11-30', '2014-12-30', 'Meat', 0, 'http:/massulit/assets/images/meat/hotdog.jpg'),
(00000098, 'Longganisa', 10, 90.00, 'Filipino-style sausage flavoured with indigenous spices', '2014-11-30', '2014-12-30', 'Meat', 0, 'http:/massulit/assets/images/meat/longganisa.jpg'),
(00000099, 'Meat Loaf', 10, 90.00, 'Mothers out there! If you want your family to experience more love through cooking, buy meatloaf now and let it do the talking!', '2014-11-30', '2014-12-30', 'Meat', 0, 'http:/massulit/assets/images/meat/meat loaf.jpg'),
(00000100, 'Pork Chop', 10, 100.00, 'Chop of pork (a meat chop) cut perpendicularly to the spine of the pig and usually containing a rib or part of a vertebra, served as an individual portion.  Suitable for roasting, grilling, or frying, but there are also recipes of stuffed pork chops. ', '2014-11-30', '2014-12-30', 'Meat', 0, 'http:/massulit/assets/images/meat/pork chop.jpg'),
(00000101, 'Salami', 10, 90.00, 'Salami is cured sausage usually made from beef or pork, and is a common ingredient in sandwiches, pasta salads and Italian cuisine. While salami contains 12.6 grams of protein per 3.5-ounce serving, as well as certain vitamins and minerals, it is also high in saturated fat and sodium.', '2014-11-30', '2014-12-30', 'Meat', 0, 'http:/massulit/assets/images/meat/salami.jpg'),
(00000102, 'Sausage', 10, 95.00, 'Did you know derived from the Latin word salsus which means something salted?Sausages should be cooked slowly either under a grill or in a pan, on a medium heat and should not be pricked, as this lets out the flavour.  They will burst if cooked too quickly!  Sausages evoke strong emotional ties to childhood, memories of favourite comforting meals such as Bangers and Mash, happy family occasions such as weekend or holiday breakfasts cooked by Dad! ', NULL, NULL, 'Meat', 0, 'http:/massulit/assets/images/meat/sausage.jpg'),
(00000103, 'Whole Chicken', 10, 150.00, 'How refreshing! How Chicken!', '2014-11-30', '2014-12-30', 'Poultry', 0, 'http:/massulit/assets/images/poultry/chicken.png'),
(00000104, 'Chicken Breast', 10, 95.00, 'Where''s the chicken breast? It''s right here! Buy some now!', '2014-11-30', '2014-12-30', 'Poultry', 0, 'http:/massulit/assets/images/poultry/chickenbreast.jpg'),
(00000105, 'Chicken Ham', 10, 120.00, 'What is delicious, sweet, and healthy? That''s the chicken ham. Buy some now!', '2014-11-30', '2014-12-30', 'Poultry', 1, 'http:/massulit/assets/images/poultry/chickenHam.jpg'),
(00000106, 'Chicken Leg', 10, 100.00, 'Good things come to those who wait. But why wait? Buy chicken leg now!', '2014-11-30', '2014-12-30', 'Poultry', 0, 'http:/massulit/assets/images/poultry/chickenleg.jpg'),
(00000107, 'Chicken Nuggets', 10, 100.00, 'Deliciously fun to eat. That''s the chicken nuggets!', '2014-11-30', '2014-12-30', 'Poultry', 0, 'http:/massulit/assets/images/poultry/chickenNuggets.png'),
(00000108, 'Chicken Wings', 10, 130.00, 'Bet you can''t eat chicken wings. Oh really? Why don''t you buy one now to try for yourself!', '2014-11-30', '2014-12-30', 'Poultry', 0, 'http:/massulit/assets/images/poultry/chickenwings.jpg'),
(00000109, 'Chicken Egg', 10, 90.00, 'We don''t just produce chicken egg. We produce better chicken egg. Buy some now!', '2014-11-30', '2014-12-30', 'Poultry', 0, 'http:/massulit/assets/images/poultry/Egg.jpg'),
(00000110, 'Ostrich Egg', 10, 90.00, 'How many licks does it take to get to the center of an ostrich egg? Buy one now to try for yourself!', '2014-11-30', '2014-12-30', 'Poultry', 0, 'http:/massulit/assets/images/poultry/ostrichegg.jpg'),
(00000111, 'Quail Egg', 10, 60.00, 'When the going get''s tough, the tough get quail egg. Buy one now!', '2014-11-30', '2014-12-30', 'Poultry', 0, 'http:/massulit/assets/images/poultry/quailegg.jpg'),
(00000112, 'Whole Undressed Turkey', 10, 150.00, 'Turkey that smiles back. Buy one now!', '2014-11-30', '2014-12-30', 'Poultry', 0, 'http:/massulit/assets/images/poultry/turkey.jpg'),
(00000113, 'Ballpoint Pen', 10, 12.00, 'Did you know that The average person uses up 1 year 4.3 pens, each with a good pen can write 50 thousand words? So buy your pen now !', '2014-11-30', NULL, 'School Supplies', 0, 'http:/massulit/assets/images/school-supplies/ballpens.jpg'),
(00000114, 'Pilot Bond Paper Substance 20', 10, 85.00, 'High quality paper made from an excellent source. compatible to any printer and any ink!', '2014-11-30', NULL, 'School Supplies', 0, 'http:/massulit/assets/images/school-supplies/bond-paper.jpg'),
(00000115, 'Crayola Crayons 24 pieces per pack', 10, 20.00, 'Did you know that Crayon is the French word for pencil? They come in 120 Colors. Color your drawings now and make it more alive. Buy this !', '2014-11-30', NULL, 'School Supplies', 0, 'http:/massulit/assets/images/school-supplies/crayons.jpg'),
(00000116, 'Duct tape', 10, 35.00, 'Did you know that this name attached to the duck tape was given because of its waterproof system? When you like to cut a duct tape, you can use your bare hand. There is no need to find any scissors, very convenient to use.', '2014-11-30', NULL, 'School Supplies', 0, 'http:/massulit/assets/images/school-supplies/duct-tape.jpg'),
(00000117, 'Envelope', 10, 12.00, 'Make life easier by carrying your files and documents using an envelope. Buy now!', '2014-11-30', NULL, 'School Supplies', 1, 'http:/massulit/assets/images/school-supplies/envelope.jpg'),
(00000118, 'Folders', 10, 8.00, 'Secure your documents and keep it from crumpling in your bag. Buy now!', '2014-11-30', NULL, 'School Supplies', 0, 'http:/massulit/assets/images/school-supplies/folders.jpg'),
(00000119, 'Elmer''s School Glue (Washable, No Run)', 10, 12.00, 'There are some things worth being stuck with each other so buy this glue to make it happen!', '2014-11-30', NULL, 'School Supplies', 0, 'http:/massulit/assets/images/school-supplies/glue.jpg'),
(00000120, 'Permanent Markers', 10, 50.00, 'Permanent markers are derivative of soot-based inks from thousands of years ago', '2014-11-30', NULL, 'School Supplies', 0, 'http:/massulit/assets/images/school-supplies/markers.jpg'),
(00000121, 'Noteback', 10, 12.00, 'Write your notes properly and comfortably using this notebook with the best quality paper. Excell in school!', '2014-11-30', NULL, 'School Supplies', 0, 'http:/massulit/assets/images/school-supplies/notebook.jpg'),
(00000122, 'Packaging Tape', 10, 25.00, 'Pack your things well using this tape! Nothing can go wrong. ', '2014-11-30', NULL, 'School Supplies', 0, 'http:/massulit/assets/images/school-supplies/packing-tape.jpg'),
(00000123, 'Glue Stick', 10, 20.00, 'There are some things worth being stuck with each other so buy this glue to make it happen!', '2014-11-30', NULL, 'School Supplies', 0, 'http:/massulit/assets/images/school-supplies/paste.jpg'),
(00000124, 'Colored Pencils', 10, 20.00, 'Color your drawings now and make it more alive. Buy this !', '2014-11-30', NULL, 'School Supplies', 0, 'http:/massulit/assets/images/school-supplies/pencils.jpg'),
(00000127, 'Bangus or Milk Fish', 10, 80.00, 'Do you, uh, bangus? Uuuhhh, buy one now?', '2014-11-30', '2014-12-30', 'Seafood', 0, 'http:/massulit/assets/images/seafood/bangus.jpg'),
(00000128, 'Catfish', 10, 70.00, 'Seafood is a nutrient rich food that is a good source of protein, vitamins and minerals. Buy some catfish now!', '2014-11-30', '2014-12-30', 'Seafood', 0, 'http:/massulit/assets/images/seafood/catfish.jpg'),
(00000129, 'Crab', 10, 90.00, 'Seafood is a nutrient rich food that is a good source of protein, vitamins and minerals. Try some crab now!', '2014-11-30', '2014-12-30', 'Seafood', 1, 'http:/massulit/assets/images/seafood/crab.jpg'),
(00000130, 'Eel', 10, 90.00, 'Seafood is a nutrient rich food that is a good source of protein, vitamins and minerals. Buy some eel now!', '2014-11-30', '2014-12-30', 'Seafood', 0, 'http:/massulit/assets/images/seafood/eel.jpg'),
(00000131, 'Salmone', 10, 90.00, 'Seafood is a nutrient rich food that is a good source of protein, vitamins and minerals. Try some salmone now!', '2014-11-30', '2014-12-30', 'Seafood', 0, 'http:/massulit/assets/images/seafood/salmone.jpg'),
(00000132, 'Sardine', 10, 80.00, 'Seafood is a nutrient rich food that is a good source of protein, vitamins and minerals.  Try some sardine now!', '2014-11-30', '2014-12-30', 'Seafood', 0, 'http:/massulit/assets/images/seafood/sardine.gif'),
(00000133, 'Shark meat', 10, 90.00, 'Seafood is a nutrient rich food that is a good source of protein, vitamins and minerals. Try some shark meat now! You won''t regret it.', '2014-11-30', '2014-12-30', 'Seafood', 0, 'http:/massulit/assets/images/seafood/shark meat.jpg'),
(00000134, 'Squid', 10, 80.00, 'Seafood is a nutrient rich food that is a good source of protein, vitamins and minerals. Buy some squid now!', '2014-11-30', '2014-12-30', 'Seafood', 0, 'http:/massulit/assets/images/seafood/squid.jpg'),
(00000135, 'Tilapia', 10, 50.00, 'Seafood is a nutrient rich food that is a good source of protein, vitamins and minerals. Buy some tilapia now!', '2014-11-30', '2014-12-30', 'Seafood', 0, 'http:/massulit/assets/images/seafood/tilapia.jpg'),
(00000136, 'Tuna', 10, 90.00, 'Seafood is a nutrient rich food that is a good source of protein, vitamins and minerals. Buy some tuna now!', '2014-11-30', '2014-12-30', 'Seafood', 0, 'http:/massulit/assets/images/seafood/tuna.jpg'),
(00000137, 'Bellpepper', 10, 40.00, 'Compared to green peppers, red peppers are known to have more vitamins and nutrients and contain the antioxidant lycopene. The level of carotene, like lycopene, is nine times higher in red peppers. Red peppershave twice the vitamin C content of green peppers.', '2014-11-30', '2014-12-30', 'Vegetables', 0, 'http:/massulit/assets/images/vegetables/bellpepper.jpg'),
(00000138, 'Broccoli', 10, 60.00, 'Broccoli is high in fiber. Not only in soluble fiber but insoluble as well. Since your body needs both types, it''s great to know that broccoli is can fulfill both your needs. Broccoli contains the flavonoid kaempferol. Kaempferol is an anti-inflammatory, helps fight against cancer and heart disease, and has been shown to be preventative in adult diabetes onset.', '2014-11-30', '2014-12-30', 'Vegetables', 0, 'http:/massulit/assets/images/vegetables/broccoli.jpg'),
(00000139, 'Cabbage', 10, 50.00, 'Cabbage is a nutritional powerhouse that is an excellent source of manganese, vitamin B6, and folate; and a good source of thiamin, riboflavin, calcium, potassium, vitamin A, tryptophan, protein and magnesium.', '2014-11-30', '2014-12-30', 'Vegetables', 0, 'http:/massulit/assets/images/vegetables/cabbage.jpg'),
(00000140, 'Carrot', 10, 60.00, 'Carrots are cooked and eaten in various different ways. The vegetable is often pulped, mashed, boiled, puréed, grated, fried, steamed, stewed, baked, juiced or eaten raw. Carrots are typically used in stir-fries and salads but also in soups and added to baby foods or pet foods. They can be dehydrated or deep-fried to make chips, flakes, and powder.', '2014-11-30', '2014-12-30', 'Vegetables', 0, 'http:/massulit/assets/images/vegetables/carrot.jpg'),
(00000141, 'Corn', 10, 70.00, 'Did you know that Juices and soft drinks like Coca-Cola and Pepsi contain corn sweeteners. A bushel of corn can sweeten 400 cans of soft drink?', '2014-11-30', '2014-12-30', 'Vegetables', 1, 'http:/massulit/assets/images/vegetables/corn.jpg'),
(00000142, 'Eggplant', 10, 50.00, 'It is a low calorie food full of vitamin C, calcium and potassium. An eggplant is VERY low in carbs as well, which is surprising because it''s a member of the potato family.', '2014-11-30', '2014-12-30', 'Vegetables', 0, 'http:/massulit/assets/images/vegetables/eggplant.jpg'),
(00000143, 'Garlic', 10, 60.00, 'Raw, freshly minced garlic has the most health benefits. If you cannot stand the smell and must cook it, you need at least four and a half cloves to get the same effect.', '2014-11-30', '2014-12-30', 'Vegetables', 0, 'http:/massulit/assets/images/vegetables/garlic.jpg'),
(00000144, 'Okra', 10, 70.00, 'Okra is also high is calcium, fiber, vitamin C, protein, folate, manganese and magnesium. Why munch not-nutrient-dense celery or iceberg lettuce for a low-calorie veggie when you can munch themuch-more-nutrient-dense super food veggie okra!', '2014-11-30', '2014-12-30', 'Vegetables', 0, 'http:/massulit/assets/images/vegetables/okra.jpg'),
(00000145, 'Onion', 10, 60.00, 'Onions are rich source of chromium, the trace mineral that helps tissue cells respond appropriately to insulin levels in the blood. It thus helps facilitate insulin action and control sugar levels in diabetes.', '2014-11-30', '2014-12-30', 'Vegetables', 0, 'http:/massulit/assets/images/vegetables/onion.jpg'),
(00000146, 'Potato', 10, 50.00, 'Potatoes are a good source of potassium…more potassium than a banana. Potatoes are an excellent source of vitamin C (45% of the DV), which is more vitamin C than one medium tomato (40% DV) or sweet potato (30% DV). ', '2014-11-30', '2014-12-30', 'Vegetables', 0, 'http:/massulit/assets/images/vegetables/potato.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_bought`
--

CREATE TABLE IF NOT EXISTS `product_bought` (
  `Transaction_id` int(8) unsigned zerofill NOT NULL,
  `Product_id` int(8) unsigned zerofill NOT NULL,
  `Quantity_per_product` int(6) unsigned NOT NULL,
  `Amount_per_product` float(6,2) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_bought`
--

INSERT INTO `product_bought` (`Transaction_id`, `Product_id`, `Quantity_per_product`, `Amount_per_product`) VALUES
(00000001, 00000004, 12, 180.00),
(00000001, 00000007, 1, 125.25),
(00000001, 00000001, 2, 24.50),
(00000002, 00000006, 12, 96.00),
(00000002, 00000009, 1, 403.65),
(00000002, 00000008, 3, 1147.50),
(00000002, 00000005, 1, 35.00),
(00000003, 00000010, 3, 186.30),
(00000003, 00000001, 15, 191.25),
(00000003, 00000004, 15, 225.00);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `Transaction_id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Total_amount` float(6,2) unsigned NOT NULL,
  `Total_quantity` int(6) unsigned NOT NULL,
  `User_id` int(8) unsigned zerofill NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`Transaction_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`Transaction_id`, `Total_amount`, `Total_quantity`, `User_id`, `datetime`) VALUES
(00000001, 329.00, 15, 00000006, '0000-00-00 00:00:00'),
(00000002, 1682.15, 17, 00000006, '0000-00-00 00:00:00'),
(00000003, 602.55, 33, 00000007, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `User_id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `User_fname` varchar(30) NOT NULL,
  `User_lname` varchar(30) NOT NULL,
  `User_account` varchar(30) NOT NULL,
  `User_password` varchar(30) NOT NULL,
  `User_email_address` varchar(30) NOT NULL,
  `User_home_address` varchar(100) NOT NULL,
  `User_delivery_address` varchar(100) NOT NULL,
  `User_contact_number` bigint(11) NOT NULL,
  `User_gender` varchar(6) NOT NULL,
  `User_bday` date NOT NULL,
  `User_age` int(3) unsigned NOT NULL,
  `User_isadmin` tinyint(1) NOT NULL,
  `User_session_id` varchar(32) NOT NULL,
  PRIMARY KEY (`User_id`),
  UNIQUE KEY `User_account` (`User_account`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_id`, `User_fname`, `User_lname`, `User_account`, `User_password`, `User_email_address`, `User_home_address`, `User_delivery_address`, `User_contact_number`, `User_gender`, `User_bday`, `User_age`, `User_isadmin`, `User_session_id`) VALUES
(00000001, 'Erica Mae', 'Yeban', 'camaeyeban', 'ayawkongsabihin', 'camaeyeban@gmail.com', 'Brgy. Sta. Cecilia Tagkawayan, Quezon', 'Brgy. Sta. Cecilia Tagkawayan, Quezon', 9057148221, 'Female', '1996-03-19', 18, 1, ''),
(00000002, 'Mayrielle Anne', 'Bermas', 'maldita_05', 'bermasinthehouseyow', 'mabermas@gmail.com', '7-A 4th st. West Tapinac Olongapo City', '7-A 4th st. West Tapinac Olongapo City', 9166172828, 'Female', '1995-04-08', 19, 1, ''),
(00000003, 'Carl Jaylord', 'Tagle', 'carljaylord', '30whsph0uhszx', 'fcjptagle@gmail.com', 'Block 1 Lot 10 Daang Bakal St., Burgos, Rodriguez, Rizal', 'Casa Francisco, Dinorado cor. Milagrosa St. Batong Malake, Los Baños 4031, Laguna', 9165900924, 'Male', '1995-11-09', 19, 1, ''),
(00000004, 'Felicia Mae', 'Sace', 'mae_sace', 'pheliziahmei', 'feliciamaesace@gmail.com', 'Pinggan, Gasan, Marinduque', 'Door 8 Perez Apartments, Grove Street, Batong Malake, Los Baños, Laguna', 9496036620, 'Female', '1996-07-15', 18, 1, ''),
(00000005, 'Marion', 'Dagang', 'justinbieberno1fan', 'batkayaangpogiko', 'mariondagang@gmail.com', 'Don Onofre Village, Banay Banay, Cabuyao, Laguna', 'Mochang Tahanan Dorm Arayat Street Umali Subdivision Batong Malake, Los Baños, Laguna', 9363313062, 'Male', '1995-02-13', 0, 1, ''),
(00000006, 'Henry', 'Sy', 'richandfamous', 'sm_sm_sm', 'retail_king@gmail.com', 'Somewhere in Xiamen, China', 'SM Supermall, SM City North EDSA, Philippines', 9090909090, 'Male', '1924-12-25', 89, 0, ''),
(00000007, 'Jhonlo', 'Yap', 'oyo_yap', 'huhuhaha', 'jhonloyap26@yahoo.com', 'Brgy. Poblacion Tagkawayan, Quezon', 'Brgy. Poblacion Tagkawayan, Quezon', 9123456789, 'Male', '1996-04-26', 18, 0, ''),
(00000008, 'Czes Arianne', 'Yeban', 'czesarianne', 'massulitdotcom', 'czesarianne@gmail.com', 'Brgy. Sta. Cecilia\r\nTagkawayan, Quezon', 'Brgy. Sta. Cecilia\r\nTagkawayan, Quezon', 9307291011, 'Female', '1998-06-23', 18, 0, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
