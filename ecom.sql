-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: ecom
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `adminemail` varchar(255) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varbinary(255) DEFAULT NULL,
  `address` text,
  `agree` enum('on','off') DEFAULT NULL,
  `imgdata` varchar(15) DEFAULT NULL,
  `profilepic` varchar(15) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`adminemail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('sandhya412k3@gmail.com','sandhya',_binary '$2b$12$DYd.heXtj/eikP7idPjMuOAOpFDiIfZqv0yR08dMjl4AWrAsYuKVm','vijayawada','on',NULL,'Kk6Uh8.jpeg','45678');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `itemid` binary(16) NOT NULL,
  `itemname` varchar(255) NOT NULL,
  `description` text,
  `quantity` mediumint DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `category` enum('Home appliances','sports','Electronics','Grocery','Fashion') DEFAULT NULL,
  `imagename` varchar(15) DEFAULT NULL,
  `create_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `added_by` (`added_by`),
  CONSTRAINT `items_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `admin` (`adminemail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (_binary '9\Ô8X\ƒ\ü\À4.∑F•∏','Boldfit Skipping Rope for Men and Women Jumping Rope With Adjustable Height Speed Skipping Rope for Kids, Women, Girls Rassi Jumping Men for Exercise, Gym, Sports Fitness - Black, Polyvinyl Chlorine','About this item\r\nMADE FOR BOLD: Made of bold wire skipping ropes, the cable features durable and smooth, ensures the maximum service life and avoids cracking or breaking. The PVC coating provides better protection for the rope and avoids wearing-out. This jumping rope for men is not only fast but also creates a very stable rope swing so you can easily recover from inaccurate swings.\r\nHEALTH AND FITNESS ROPE: This kind of skipping rope for women is great for cardio training and a fun way to get in shape fast. Improves your balance and quickness/coordination by making your mind focus on your feet for sustained periods of time, improving the muscle tension of your whole body. It‚Äôs an excellent workout and also builds shoulder strength and is great for your legs. This skipping rope is really all you need to stay fit and healthy when working out at home.',9,100.00,'sports','Uq7Yz0.jpg','2025-07-04 16:16:04','sandhya412k3@gmail.com'),(_binary '#8YT\ü\À4.∑F•∏','GAUVIK Mordern Luxury Roof Capsule Style Ring 3 Light (WW/WH/NW) LED Chandelier Light Elegant Circle Ceiling Light Hanging Light for Living Dining Room Office Decorative Lighting (Golden)','About this item\r\n‚û§APPLICATION: Latest Chandelier / Jhoomer Pendant Lamp/celling light for living room, bedroom, staircase, balcony, bar, , nursery, study, office, restaurants, hotels, shop, cafe, dinning, coffee shop, home etc.\r\n‚û§ COLOR: - golden\r\nChandeliers with adjustable Cord length , this living room lighting crystal chandelier can be easily adapted to different space in your home, perfectly fits on high ceiling or lower ceiling.\r\n‚û§Beautiful chandelier hanging ceiling chandelier jhoomer for beautiful house and office\r\n‚û§ ENERGY-EFFICIENT LED: Enjoy long-lasting performance and significant energy savings with the integrated LED Lights.\r\n‚û§„ÄêINSTALLATION GUIDE„Äë:Our Suggestion to call Professional to install any electrical equipment.',5,5399.00,'Home appliances','Ve3Yl9.jpg','2025-07-05 09:27:04','sandhya412k3@gmail.com'),(_binary 'Ç3X\√\ü\À4.∑F•∏','Godrej 1.5 Ton 3 Star, Wi-Fi, 5 Years comprehensive Warranty, 5-In-1 Convertible Cooling Inverter Split AC (Copper, 2025 Model, Heavy duty cooling at 52 ¬∞C, AC 1.5T EI 18A3T PYA IVBL IOT, White)','About this item\r\n5-in-1 Convertible Split AC with inverter compressor: Variable speed compressor which adjusts power depending on heat load. Operates at a cooling capacity ranging from 40% to 110%, adjust cooling capacity at your convenience thus helps in saving energy.\r\nCapacity (1.5 Ton): Suitable for medium sized rooms (111 to 150 sq.ft), 675 CFM & Ambient Temperature: Cooling 52‚ÑÉ\r\nEnergy rating: 3 star :energy efficiency, Annual energy consumption: 1003.51, ISEER value: 3.9\r\nManufacturer Warranty: 5 years free comprehensive, applicable on purchase after 1st Sept 2024 (Coverage: Labor and all functional parts: compressor, Inverter controller drive, Remote, Indoor PCB, Fan Motors, Heat Exchange coils and Gas Charging), 5 years on PCB, 10 years on compressor',5,43000.00,'Electronics','Xs9Vb5.jpg','2025-07-04 16:09:08','sandhya412k3@gmail.com'),(_binary '!\"G<YU\ü\À4.∑F•∏','MAGGI 2-Minute Instant Noodles,Masala Noodles With Goodness Of Iron,Made With Choicest Quality Spices,Favourite Masala Taste, 840g Pouch (Pack of 12, 70 g each)','About this item\r\nINSTANT MASALA NOODLES: Relish your favorite masala taste with MAGGI 2-Minute Instant Noodles\r\nGOODNESS OF IRON: Each serving (70 g) of MAGGI Masala Noodles provides 15% of the daily iron requirement\r\nFAVOURITE MASALA TASTE: MAGGI 2-Minute Masala Instant Noodles are made with the choicest quality spices\r\nTRULY GOOD: Pick the truly good choice with MAGGI Masala Noodles\r\nEASY TO PREPARE: MAGGI Noodles are easy to prepare',30,190.00,'Grocery','Ui7Up9.jpg','2025-07-05 09:34:21','sandhya412k3@gmail.com'),(_binary 'A\ﬂ\‡\«YT\ü\À4.∑F•∏','UHUD Crafts Beautiful Antique Wooden Fold-able Side Table/End Table/Plant Stand/Stool Living Room Kids Play Furniture Table Round Shape','About this item\r\nAntique Foldable table, easy to carry anywhere. A perfect gift item for you.<br>\r\nThis multipurpose table can be used for any showpiece on it , plant stand and more.<br>\r\nProduct Dimension L x B X H - (12 x 12 x 12) inch.<br>\r\nMango wood Folding Table / Side Table / Coffee Table/Kids Study Table/Stool/ Plant Stand.<br>\r\nFurniture Finish: Deco Paint; Assembly Instructions: Diy; Special Features: Collapsible; Size Name: Medium',10,399.00,'Home appliances','Qw6Wf9.jpg','2025-07-05 09:28:06','sandhya412k3@gmail.com'),(_binary 'Gö¿pX\√\ü\À4.∑F•∏','Saffola Honey Active, Made with Sundarban Forest Honey, 100% Pure Honey, No sugar adulteration, Natural Immunity booster, 2 x 350g','About this item\r\nSaffola Honey Active is pure honey, contains natural antioxidants and it is natural immunity booster\r\nBrings Goodness of Forest Honey for your Active life\r\nSaffola Honey Active is 100% Pure and Natural, No Sugar adulteration\r\nCan be used with a glass of warm water for weight management, Serves as a natural sweetner in tea, coffee and breakfast cereals, Honey for weight loss is a commonly used practice by many\r\nSaffola Honey Active complies with 22 stringent FSSAI parameters to ensure it is free from any adulteration and 100% pure\r\nSaffola Honey Active is a rich source of nutrition for you and your family',30,450.00,'Grocery','Nv1Vy5.jpg','2025-07-04 16:10:19','sandhya412k3@gmail.com'),(_binary 'Uy¢YU\ü\À4.∑F•∏','Fortune Sunlite Refined Sunflower Oil, 870gm Pouch (Weight May Vary)','About this item\r\nFortified\r\nLight and healthy that is easy to digest\r\nRich in vitamins, which keeps skin healthy\r\nStrengthens the immune system\r\nGood for the heart\r\nPackaging may vary as per availability',30,171.00,'Grocery','Jj6Kz7.jpg','2025-07-05 09:35:48','sandhya412k3@gmail.com'),(_binary 'W%P\ﬁd~\®\Î4.∑F•∏','Riley Analog Watch - For Women ES2811I','This is a genuine Fossil product. The product comes with a standard brand warranty of 2 Years.\r\nCovered in Warranty\r\nWatch movement will be covered under this warranty. These will be repaired or the watch will be replaced free of repair charges, if it proves to be defective in material or workmanship under normal use.\r\nNot Covered in Warranty\r\nAny defects in materials and workmanship of battery, crystal, case, strap or bracelet . Damage resulting from improper handling, lack of care, accidents or normal wear and tear or Water damage unless marked water-resistant Also if the watch has been damaged by accident, negligence, unauthorized service, or other factors not due to defects in material or workmanship.',5,13495.00,'Fashion','Pd9Oc1.jpg','2025-07-19 14:27:03','sandhya412k3@gmail.com'),(_binary 's˛Y\»YT\ü\À4.∑F•∏','VRB Dec Tm 6 Pcs Penguin Miniature Decor Items Set For Unique Gift,Home,Living Room,Office,Restaurant Decor,Military Showpiece,Perfect Valentine Decoration Items (Cute Penguin Miniature), Multicolour','About this item\r\nPACKAGE: Pack of 1 Set AVAILABLE in Wide Range\r\nMaterial: Poly Rasin Washable: NO\r\nApplicable to kindergarten hand-made, doll house accessories, scene decorations, desktop mini ornaments. Can be placed at home, as a small decoration, can also be given to girlfriend on Valentine\'s Day, give her a surprise romantic gift. Used as a wedding decoration is a good choice, both as a lovely decoration, but also add a romantic atmosphere\r\nPerfect For : Cute and amazing ornaments for doll house, decorating your small garden or bonsai, decoration, art collection, festival, birthday, gift, souvenir and activities celebrating, panda lover, jungle theme, craft work, water proof miniature... etc Ideal For :show pieces for home decor, show pieces for home decor, car accessories interior, idols, home decor items for living room, home decor, decorative items for home, home decor items, gifts for women, gifts for women\r\nIDEAL FOR : home decor items, decorative items for home, home decor items for living room, show pieces for home decor, living room decorative items, decoration items for home, buddha statue, buddha statues for living room, laughing buddha for good luck, buddha idol for home, laughing buddha for home d√©cor, gautam buddha statue, decorative showpiece for home, kitchen, hall, dining center table top, kids room, office, centerpiece, statue for car dashboard, gift items for home decoration',10,299.00,'Home appliances','Ia0Uq3.jpg','2025-07-05 09:29:30','sandhya412k3@gmail.com'),(_binary 'y´-\\YU\ü\À4.∑F•∏','Tata Tea Gold 1kg, Premium Assam Teas With Gently Rolled Aromatic Long Loose Leaves, Rich & Aromatic Chai, Black Tea','About this item\r\nFor discerning tea Drinking consumers: Enjoy the superior balance of rich taste and irresistible aroma with Tata Tea Gold\r\nExquisite Tea Leaves: Made by blending 15% gently rolled aromatic long leaves with 85% Assam CTC tea leaves\r\nQuality Standards: Premium quality tea, selected and blended by Tata Tea experts\r\nSavor Every Moment: Perfect cup of chai to delight you & your loved ones at any time of the day\r\nCommonly Searched Topics: tea 1 kg, tea in pantry, chai patti, masala tea, chai, tea leaves, strong tea, Tata tea, Tata tea gold, Tata tea premium, tea powder, tea, Tata tea premium 1kg pack, black tea, Darjeeling tea, chai tea',20,440.00,'Grocery','Wq2Fj6.jpg','2025-07-05 09:36:49','sandhya412k3@gmail.com'),(_binary '~0K+X\√\ü\À4.∑F•∏','Daawat Rozana Gold Basmati Rice 5Kg| For Everyday Consumption| Cooked Grain Upto 15mm*| Naturally Aged','About this item\r\nNATURALLY AGED BASMATI: Discover the excellence of Daawat Rozana Gold Basmati Rice, aged to perfection to ensure a delightful aroma, superior taste, and long grains that cook up fluffy.\r\nAROMATIC BASMATI: Enjoy the aromatic charm of Rozana Gold Basmati Rice, perfect for various cuisines which enhances the dining experience.\r\nPREMIUM BASMATI QUALITY: Indulge in the premium quality of Basmati rice grains that elongate beautifully upon cooking, ensuring a fluffy and non-sticky texture in every meal.\r\nCOOKED GRAIN UPTO 15MM*: An ideal choice for various dishes, from daily meals to special occasions, this Basmati rice enhances the flavor profile of your culinary creations.\r\nTRUSTED QUALITY ASSURANCE: Embrace the trust of superior Basmati rice, ensuring consistent quality in every grain.',10,401.00,'Grocery','Uz2Is0.jpg','2025-07-04 16:11:50','sandhya412k3@gmail.com'),(_binary 'É\‰q\ÁX\¬\ü\À4.∑F•∏','HindCraft Analog Alarm Clock with Night Light ‚Äì Stylish Table Clock for Bedroom, Office, Study Table, Kids\' Rooms, and Home Decor ‚Äì Ideal Loud Alarm Clock for Heavy Sleepers & Students','About this item\r\nSleek Analog Design: This analog alarm clock features a timeless design that fits perfectly as a table clock for living room stylish or alarm clock for bedroom.\r\nLoud Alarm for Heavy Sleepers: Equipped with a powerful alarm sound, this loud alarm clock is the perfect alarm clock for heavy sleepers who need an extra nudge to start their day.\r\nBuilt-in Night Light: The clock with light feature provides a soft, calming glow, allowing you to easily check the time in the dark‚Äîideal for your small alarm clock for bed or alarm clock for kids.\r\nPerfect for Kids and Adults: With its simple, easy-to-read face, this alarm clock for kids is perfect for children, and the design is equally suitable for adults. It makes a great kids alarm clock for boys and kids alarm clock for girls.',10,250.00,'Home appliances','Xe9Ra2.jpg','2025-07-04 16:04:50','sandhya412k3@gmail.com'),(_binary '†≥ê˝d~\®\Î4.∑F•∏','Dime Store Wooden Wall Shelves | Corner Wall Shelf | Hanging Corner Shelves for Living Room, Floating Wall Mounted Shelfs 5 Tier for Home Decoration Items','About this item\r\nELEGANT WOODEN DESIGN: Our corner wall shelf boasts a sleek wooden construction that adds a touch of sophistication to any room, from living rooms to bedrooms.\r\nMAXIMIZE SPACE: Create stylish storage solutions with our zig-zag corner wall shelf, perfect for displaying books, decorative items, and essentials without taking up valuable floor space.\r\nVERSATILE DECOR PIECE: Elevate your interior design with this versatile furniture item that seamlessly blends as wall decor or a functional storage unit, enhancing your home\'s feel with this aesthetic decor item',6,478.00,'Home appliances','Va0Yr0.jpg','2025-07-19 14:29:07','sandhya412k3@gmail.com'),(_binary '§1\»YT\ü\À4.∑F•∏','Chandni D√©cor Modern Crystal Big Size Jhumar Ceiling Light for Living Room/Hall/Bed Room Ceiling Lamp (Bulb Not Include)','About this item\r\nWe are committed to ensuring complete customer satisfaction, and if you have any questions after receiving your product, please contact us via the Amazon mail system and we will reply you within 24 hours, provide you a satisfactory solutions\r\nSPECIFICATION: This hanging pendant fixture comes fitted with an E27 Edison Vintage bulbs (BULBS INCLUDED), E27/E26 Socket holder and features a 40 inch fully adjustable cord, allowing you to customize the fixture to your lighting needs and desired look and a canopy for the ceiling\r\nIlluminate your dining room or living room with this striking cluster pendant features three graduated Glass Globe Shaped lights suspended from a rectangle plate on black-finished rods artfully displayed at different heights.\r\nA CONVENIENT INSTALLATION PACK: Pendant Light comes with everything you need to install (canopy, a cord with metal base cap.) Around 15 minutes is enough to get the job done!',5,2999.00,'Home appliances','Ex8Jk0.jpg','2025-07-05 09:30:52','sandhya412k3@gmail.com'),(_binary '®›Æ\ÈYU\ü\À4.∑F•∏','Amazon Brand - Vedaka Whole Cashews | 200 Gram | Grade W320 Kaju | Gluten-Free & Plant Based Protein | Firm Texture, Rich Taste | Regular-Sized, Non-Split | Healthy Snack','About this item\r\nallergen information: cashews, item form: Whole\r\nQuality assured - our products are rigorously tested against the industry\'s best quality standards\r\nVedaka popular whole cashews have a nutty flavour and a firm texture for a rich taste\r\nStore in a cool, dry place in an airtight container and preferably refrigerate after opening\r\nPacked in food safe material to retain freshness of cashews\r\nWw320 cashews high quality, regular-sized, non-damaged and non-split cashews that would produce 320 pieces per pound (453.59g)\r\nHygienically packed in a facility meeting food safety standards',20,250.00,'Grocery','Dx2Cg6.jpg','2025-07-05 09:38:08','sandhya412k3@gmail.com'),(_binary '∞¶d\«X\¬\ü\À4.∑F•∏','eCraftIndia Buddha Showpiece (18.5 cm x 13 cm x 24 cm, Blue) - Polyresin','About this item\r\nProduct Size - 16Cm x 6Cm x 22Cm / 6.3 x 2.36 x 8.66\r\nMaterial - Resin, Colour - Blue\r\nPackage Content - 1 Meditating Lord Buddha Idol\r\nAdd a serene touch to your Diwali home decor or car dashboard with this stunning Blue Meditating buddha idol for home decor - 24 cm from eCraftIndia. Perfect as a Diwali gift item and Diwali decoration item for home decor, it adds a calming, spiritual aura to any space.\r\nWhether placed in your bedroom, living room, or home temple, this Blue Meditating Buddha Idol Decorative Showpiece enhances any space. It is ideal for Diwali home decor and Diwali gift items, perfect for anniversaries, birthdays, housewarming, or as a gift for loved ones, including husband, wife, girlfriend, family, or friends.',20,300.00,'Home appliances','Ge5Jr6.jpg','2025-07-04 16:06:05','sandhya412k3@gmail.com'),(_binary '∏U\Ó¿X\√\ü\À4.∑F•∏','Leriya Fashion Summer Dress for Women ‚Äì Short One Piece A-Line Midi Dress | Lightweight Vacation Wear & Daily Casual Outfit','About this item\r\nSoft rayon blend: this one-piece dress for women is made of a soft rayon blend material, featuring with floral printed beach dress for women.\r\nStyle & length:‚Äâthis birthday dress for women western has midi length, front open collar option with button in front of dress characterize this outfit.\r\nOccasions: Leriya Fashion one piece dress for women party wear is used for western wear, office wear, night wear, beach wear, summer wear, hangouts, picnic, vacation wear, and birthday party wear dress.\r\nSummer Beach Wear: beach party wear one piece dress embraces the season in style with our summer collection, designed to keep you cool and fashionable in the warmer months.',10,429.00,'Fashion','Fu0Mb3.jpg','2025-07-04 16:13:28','sandhya412k3@gmail.com'),(_binary '\ﬂ=å9X\√\ü\À4.∑F•∏','Leriya Fashion Summer Dresses for Women ‚Äì Short One Piece A-Line Midi Dress | Lightweight Vacation Wear & Daily Casual Outfit','About this item\r\nExquisite Design: This party wear dress for women blends style and comfort with premium fabric and a flattering silhouette, making it perfect for parties, evening outings, and special occasions.\r\nFlattering Fit: Designed for elegance, this one-piece dress for women enhances your look, ensuring a chic and sophisticated appeal for all body types.\r\nPerfect for Every Occasion: Whether you\'re attending a romantic dinner, cocktail party, wedding, or festive event, this Western dress for women ensures you stand out in style.\r\nVersatile Styling Options: Pair this stylish dress with high heels, statement jewelry, or a chic clutch to create the perfect fashion-forward ensemble.\r\nComfort Meets Style: Crafted from breathable, lightweight fabric, this trendy women\'s dress keeps you feeling comfortable and confident all day long.',12,550.00,'Fashion','Ov4Ll3.jpg','2025-07-04 16:14:33','sandhya412k3@gmail.com'),(_binary '\‡&|∑YT\ü\À4.∑F•∏','One94Store acrylic Romantic Ocean Wave Night Light Projector Lamp, 3D Water Wave Effect, LED Projection Lamp for Bedroom Decor, Remote Control (Cube Shape)Multicolor','About this item\r\nMesmerizing 3D water wave effect projector\r\nRemote control included for easy color and mode selection\r\nChoose from 16 vibrant colors and multiple lighting modes\r\nCompact design: 11cmx11cmX9cm\r\nCreates soothing ambient lighting in any room\r\nEnergy-efficient LED technology for minimal power consumption',10,399.00,'Home appliances','Zx4Zk2.jpg','2025-07-05 09:32:32','sandhya412k3@gmail.com'),(_binary 'Íå≥2X\¬\ü\À4.∑F•∏','Samsung Galaxy A55 5G (Awesome Navy, 12GB RAM, 256GB Storage) | AI | Metal Frame | 50 MP Main Camera (OIS) | Super HDR Video| Nightography | IP67 | Corning Gorilla Glass','About this item\r\nDesign - Experience cinematic scenes with stunning 6.6‚Äù FHD+ Super AMOLED with Vision Booster, 16M Colors and 120Hz Refresh Rate. Premium metal frame. Key-island design for intuitive grip.\r\nAI Enhancements - Circle to search - Music, Image or text. Enhance your photos with Camera enhanced by AI and Intelligent visual editing - Object eraser. Image remaster. AI edit suggestions.\r\nBattery - Do more with long-lasting and massive 5000 mAh battery with 25W fast charging support. Last up to 2 days on a single charge with 28 hours Video playback time.\r\nBuilt to last - Corning Gorilla Glass Victus+ on both front and back. IP67 rated water and dust resistance. Powerful Exynos 1480 processor for fast, flawless mobile experiences. Larger Vapor Chamber for heat control.\r\nExclusive Features - Future-ready with segment best 4x OS upgrades. Defense grade security with Samsung Knox. Hassle free payments with Tap and Pay on Samsung Wallet. Seamless experience with OneUI.',15,33453.00,'Electronics','He6Xy7.jpg','2025-07-04 16:07:43','sandhya412k3@gmail.com');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int unsigned NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) NOT NULL,
  `total_amount` bigint unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `order_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `payment_by` varchar(50) DEFAULT NULL,
  `address` text,
  PRIMARY KEY (`order_id`),
  KEY `payment_by` (`payment_by`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`payment_by`) REFERENCES `users` (`useremail`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'Boldfit Skipping Rope for Men and Women Jumping Rope With Adjustable Height Speed Skipping Rope for Kids, Women, Girls Rassi Jumping Men for Exercise, Gym, Sports Fitness - Black, Polyvinyl Chlorine',10000,1,'2025-07-16 10:16:37','sandhya412k3@gmail.com','vij');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `reviewid` int unsigned NOT NULL AUTO_INCREMENT,
  `review` longtext,
  `rating` enum('1','2','3','4','5') DEFAULT NULL,
  `itemid` binary(16) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`reviewid`),
  KEY `itemid` (`itemid`),
  KEY `user` (`user`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`itemid`) REFERENCES `items` (`itemid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user`) REFERENCES `users` (`useremail`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'dfghjk','4',_binary '#8YT\ü\À4.∑F•∏','sandhya412k3@gmail.com','2025-07-15 16:31:07'),(2,'dfghj','4',_binary '#8YT\ü\À4.∑F•∏','sandhya412k3@gmail.com','2025-07-16 09:38:52'),(3,'',NULL,_binary '#8YT\ü\À4.∑F•∏','sandhya412k3@gmail.com','2025-07-16 09:38:54'),(4,'hi','4',_binary '#8YT\ü\À4.∑F•∏','sandhya412k3@gmail.com','2025-07-16 09:39:20'),(5,'',NULL,_binary '#8YT\ü\À4.∑F•∏','sandhya412k3@gmail.com','2025-07-16 09:39:21'),(6,'',NULL,_binary '#8YT\ü\À4.∑F•∏','sandhya412k3@gmail.com','2025-07-16 09:39:22'),(7,'hello','4',_binary '#8YT\ü\À4.∑F•∏','sandhya412k3@gmail.com','2025-07-16 15:07:58');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `useremail` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `password` varbinary(255) NOT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  PRIMARY KEY (`useremail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('sandhya','sandhya412k3@gmail.com','vij',_binary '$2b$12$7aLqbe0tIPlSROLwGVwHVOjK0GomDdNgysi0BZgOjEHq/ymdjqZYe','female');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-19 15:14:17
