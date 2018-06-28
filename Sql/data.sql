-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: winestore
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `chitiethoadon`
--

LOCK TABLES `chitiethoadon` WRITE;
/*!40000 ALTER TABLE `chitiethoadon` DISABLE KEYS */;
INSERT INTO `chitiethoadon` VALUES (37,'M040',3);
/*!40000 ALTER TABLE `chitiethoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dondathang`
--

LOCK TABLES `dondathang` WRITE;
/*!40000 ALTER TABLE `dondathang` DISABLE KEYS */;
INSERT INTO `dondathang` VALUES (37,'kimthao','2018-06-28 02:50:30',21,34640000,'Chưa giao'),(38,'kimthao','2018-06-28 02:53:59',41,67620000,'Chưa giao'),(39,'kimthao','2018-06-28 02:54:27',41,67620000,'Chưa giao'),(40,'kimthao','2018-06-28 02:55:17',41,67620000,'Chưa giao'),(41,'kimthao','2018-06-28 02:56:35',41,67620000,'Chưa giao'),(42,'kimthao','2018-06-28 02:56:41',41,67620000,'Chưa giao'),(43,'kimthao','2018-06-28 02:56:51',41,67620000,'Chưa giao'),(44,'kimthao','2018-06-28 02:57:03',3,1800000,'Chưa giao'),(45,'kimthao','2018-06-28 05:07:55',6,29600000,'Chưa giao');
/*!40000 ALTER TABLE `dondathang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sanpham`
--

LOCK TABLES `sanpham` WRITE;
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` VALUES ('M001','BalAbsolut Vodka',1700000,'Ruou-Ballantine-s-Finest-hop-qua-750x7500,38.jpg','Mang hương thơm dịu nhẹ của lúa mạch, hương vị thanh và đặc tính nhẹ của trái cây cùng với vị êm mượt vô cùng tinh khiết và đậm đà với phong cách cực kỳ dễ chịu.','Rượu Vodka','Robert Mondavi, Mỹ',3,12,27),('M002','Absolut Mandrin',1850000,'camus-extra-750x7507,7.jpg','Mang hương vị tinh tế của cam và quýt, hương thơm nồng đến từng giọt','Rượu Vodka','Robert Mondavi, Mỹ',5,12,23),('M003','Absolut Apeach:',2300000,'Ruou-Remy-Martin-Club-Hop-Qua-2018-2-750x750.jpg','Giàu hương vị chiết xuất từ đào tươi nhưng không quá ngọt như các loại rượu hương đào truyền thống khác.','Rượu Vodka','Robert Mondavi, Mỹ',1,32,42),('M004','Absolut Citron',600000,'ballantine%2012-750x7500,6.jpg','Vị êm dịu, mượt mà tinh khiết cùng với hương thơm của trái chanh, lá chanh và hậu lại gợi nhớ đến một chút đắng của vỏ chanh.','Rượu Vodka','Hardys, Úc',34,43,43),('M005','Absolut Mango',7700000,'1.jpg','Mang một hương vị tuyệt vời và mang lại một trải nghiệm Cocktail nhiệt đới hoàn toàn mới mẻ. Nó có vị êm mượt nhẹ nhàng cùng với hương thơm từ xoài chín mọng.','Rượu Vodka','Hardys, Úc',2,23,23),('M006','Absolut Kurant',1340000,'chivas18_blue_signature-1,34.jpg','Vị êm dịu pha với một chút vị chát của quả nho đen Hy Lạp. Hương vị đậm đà xem lẫn vị chát sẽ giúp làm nên một ly Cocktail thật hấp dẫn nếu biết cách kết hợp với Orangina, Tonic và Sprite.','Rượu Vodka','Hardys, Úc',1,2,7),('M007','Absolut Raspberri',1030000,'johnnie-walker-gold-label-2018-3-ruoungoaigiasi.vn-1,03.jpg','Mang hương vị đặc biệt của quả mâm xôi - một trong những hương vị trái cây tự nhiên thuần túy nhất, làm tăng thêm hương vị khiến người uống có cảm giác như đang ở giữa thiên nhiên trong lành.','Rượu Vodka','Château Gruaud-Larose, Pháp',6,23,78),('M008','Hennessy XO (Extra Old)',300000,'Ruou-Ballantine-s-Finest-hop-qua-2018-0,3.jpg','Đây là sự pha trộn của hơn 100 loại rượu cốt khác nhau (Sự phối hợp của rượu 6 tuổi với rượu 12 - 20 tuổi). Hennessy XO là sự kết hợp giữa vị cay cay của gỗ sồi, mùi da thuộc mới cùng với mùi thơm của hoa và trái cây chín mọng. Mặc dù giá của nó khá đắt nhưng chất lượng lại rất đảm bảo.','Rượu Hennessy','Château Gruaud-Larose, Pháp',1,2,78),('M009','Hennessy Extra',380000,'Ruou-Ballantine-s-Finest-hop-qua-750x7500,38.jpg','Hennessy Paradis Extra được pha chế cầu kì từ hơn 100 loại rượu cốt hảo hạng nhất. Nó đã mở ra khuynh hướng cho phong cách tận hưởng lạc thú đầy tao nhã và lịch lãm. Nó thường được thưởng thức ở dạng nguyên chất trong ly pha lê hình hoa Tulip.','Rượu Hennessy','Château Gruaud-Larose, Pháp',3,5,67),('M010','Hennessy VSOP (Very Superior Old Pale)',1300000,'Ruou-Remy-Martin-VSOP-Hop-Qua-2018-1,3.jpg','Đây là sản phẩm được đặt tên theo yêu cầu của vị vua George V của Anh Quốc vào năm 1817. Hennessy VSOP là sự pha trộn của khoảng 60 loại rượu nho cao tuổi Eau-De-Vie (Sự phối hợp nhuần nhuyễn của rượu 4 tuổi với rượu 12 - 20 tuổi). Hennessy có vị của mật ong, cam thảo, lá cây đinh hương cùng với vị ngọt mật của trái chín cây. Đây chính là đặc trưng của sự cân bằng hoàn hảo và kết thúc êm dịu.','Rượu Hennessy','Concha Y Toro, Chile',1,2,3),('M011','c',7700000,'camus-extra-750x7507,7.jpg','Đây là sự pha trộn đầy khéo léo giữa nhiều loại Whisky lâu năm, quý hiếm với nhau. Được lấy cảm hứng từ những hương vị lâu đời được lưu giữ bởi Alexander Walker. Và hơn hết nó được sản xuất tại một số rất ít những xưởng chưng cất rượu nổi tiếng nhất xứ Scotland với thời gian ủ từ rất lâu, khoảng 18 năm trở lên.','Rượu Johnnie Walker','Concha Y Toro, Chile',0,1,0),('M012','Johnnie Walker Red Label',1700000,'Johnnie Walker 16.jpg','Mang hình dáng chai vuông in hình ông già chống gậy đặc trưng có màu vàng nhạt, là sự kết hợp hoàn hảo từ 35 loại rượu Whisky thượng hạng. Điều này giúp cho Red Label trở thành một loại thức uống tuyệt vời để thưởng thức mỗi ngày. Mạnh mẽ, trẻ trung, sống động với vị khói nhẹ nhàng cùng hương vanilla thơm ngọt pha lẫn với hương vị cay nồng của gỗ Sồi, là những điều người ta nói về sản phẩm này sau khi thưởng thức. Johnnie Walker Red chính là sự kết hợp tuyệt vời của niềm đam mê và cá tính mạnh mẽ. ','Rượu Johnnie Walker','Concha Y Toro, Chile',2,3,21),('M013','Johnnie Walker X.R',600000,'Johnnie Walker 12.png','Đây là sản phẩm 21 năm tuổi đầy danh giá dành cho những sự kiện quan trọng hay những người trót đem lòng say mê loại whisky Scotland Johnnie Walker thượng hạng. Được chế tác từ các loại whisky thượng hạng và được ủ trong những thùng gỗ sồi ít nhất là 21 năm cùng với sự hòa quyện hoàn hảo của mùi gỗ sồi lâu năm và hương vị vanilla phảng phất. Ngoài ra còn có sự ngọt ngào đến kỳ lạ của mật ong, cũng như sự lắng đọng rất lâu sau khi uống.','Rượu Johnnie Walker','Concha Y Toro, Chile',7,23,7),('M014','Johnnie Walker Platinum 18',1030000,'Johnnie Walker 10.jpg','Được chế tác từ những loại whisky có độ tuổi ít nhất phải từ 18 năm tuổi trong kho tàng các loại rượu quý. Johnnie Platinum 18 năm tuổi mang đến cho rượu Johnnie Walker Platinum hương vị đậm đà, ngọt ngào của đa phần các loại whisky lâu năm cùng với hương vị Khói đặc trưng của thương hiệu rượu Johnnie Walker.','Rượu Johnnie Walker','Yellow tail, Úc',34,56,54),('M015','Johnnie Walker Double Black',3000000,'Johnnie Walker 9,jpg','Đây chính là sự bổ sung mới nhất và phá cách nhất của Johnnie Walker vào mùa thu năm 2014. Nó có hương vị khói tự nhiên, hương gỗ sồi kinh điển cộng với một chút nhẹ nhàng của trái cây chín. Johnnie Walker Double Black là một sự lựa chọn hoàn hảo không thể bỏ qua nhất là đối với những người đã trót say mê hương vị của người anh em Black Label.','Rượu Johnnie Walker','Yellow tail, Úc',4,54,35),('M016','Johnnie Walker King George V',7000000,'Johnnie Walker 8.jpg','Ban đầu khi mới thưởng thức, King George V mang một hương thơm sâu sắc đặc trưng của khói, tiếp theo là vị hoa quả tươi ngọt (táo, lê, chuối) và gia vị phức tạp, phong phú như nho khô, quả sung, quế,... Vòm miệng sẽ có sự trơn tru nhất định khi ta nếm cùng với vị ngọt trái cây phong phú trong quá trình thưởng thức chúng ta sẽ cảm nhận được vị  ấm đi kèm hương vị tinh tế của gỗ đàn hương và vị  khói. Đó quả là một hương vị đầy mạnh mẽ, phức tạp, phong phú nhưng mịn màng. Không chỉ mang vị của sự ấm áp tức thì mà nó còn kéo dài rồi kết thúc bởi vị đặc biệt của than bùn.','Rượu Johnnie Walker','Yellow tail, Úc',6,34,78),('M017','Chivas 12',1000000,'chivas7.png','Chivas 12 là kết quả hoàn hảo của sự pha trộn các loại Whisky với nhau, với độ tuổi trưởng thành của rượu trong những thùng gỗ sồi ít nhất là 12 năm. Nói theo một cách khác thì Chivas 12 là sự pha trộn hài hòa giữa truyền thống lâu đời với sự hiện đại của đất nước Scotland để tạo ra một loại rượu Whisky pha trộn có thương hiệu nổi tiếng thế giới.','Rượu Chivas','Yellow tail, Úc',38,32,23),('M018','Chivas 18',1200000,'chivas4.png','Trong các loại rượu Chivas Regal, Chivas 18 luôn biết cách mang đến cho người thưởng thức những trải nghiệm vô cùng đáng giá bởi vì đây là một loại Whisky với nguyên liệu ban đầu là các hạt ngũ cốc và mạch nha tốt nhất, được lựa chọn một cách kỹ càng bằng tay, sau đó chúng mới được chưng cất, ủ riêng biệt trong những thùng gỗ sồi trong một thời gian nhất định. Cuối cùng, các loại rượu Whisky này được hòa trộn với nhau theo một công thức riêng để tạo nên Rượu Chivas 18.','Rượu Chivas','Hennessy, Pháp',2,6,13),('M019','Chivas 25',6100000,'chivas2.png','Đây là dòng Whisky hiếm có được pha trộn từ những loại rượu Whisky thượng hạng nhất, được sản xuất với số lượng có hạn và được đánh số se-ri riêng trên mỗi chai. Chivas 25 có màu vàng hổ phách đặc trưng và mang hương thơm nhiều lớp của trái cây khô và kẹo bơ, socola đắng cùng một ít vị khó. Dư vị ấm áp kéo dài và đáng nhớ với một chút hương mai và đào.','Rượu Chivas','Hennessy, Pháp',1,5,1),('M020','Chivas 38',8500000,'Chivas Revolve.png','Chivas 38 có vẻ ngoài thủ công vô cùng tinh xảo giống như đá Granite với cổ bình sứ được nạm vàng 24 cara, gợi nhớ tới chuôi của thanh gươm cổ Scotland. Mỗi bình sứ được bọc một cách cẩn thận trong một hộp nhung đỏ đầy tao nhã. Ngoài ra, Chivas 38 còn có thiết kế ổ khóa trên hộp, nắp mở ra từ phía trên giúp truyền tải được hình ảnh sang trọng và quý phái của sản phẩm.','Rượu Chivas','Hennessy, Pháp',0,0,0),('M021','Chivas 62 Gun Salute',56000000,'Chivas Revolve.png','Giám đốc thương hiệu cho biết: “Royal Salute là nhãn hiệu duy nhất sử dụng whisky tuổi từ 21 năm trở lên, dựa theo truyền thống của Chivas Brothers trong quá trình ủ whisky. Chúng tôi vui mừng khi đẩy xa ranh giới với sự ra mắt của Royal Salute 62 Gun Salute, dòng whisky duy nhất, cho một hỗn hợp chỉ sử dụng whisky được ủ ít nhất 40 năm. Nghiên cứu của chúng tôi cho thấy một sự khát khao thực sự từ chính những khách hàng của chúng tôi trông đợi sự đổi mới thú vị này, và chỉ Royal Salute 62 có được sự thuần túy, để nắm giữ vị trí \"chỉ huy\" này.','Rượu Chivas','Hennessy, Pháp',0,0,0),('M022','Chivas Revolve',1350000,'Chivas Revolve.jpg','Có hình dáng chai rượu đầy phá cách và lạ mắt. Đây là loại rượu Blended Scotch Whisky mịn có màu vàng hổ phách và mùi hương cân bằng của socola đắng, thạch nam đốt, táo đỏ và hạnh nhân nghiền và một ít vị khói','Rượu Chivas','Château Lagrange, Pháp',0,0,0),('M023','Champagne Moet & Chandon Rose Imperial',1450000,'moet_chandon_imperial_brut_champagne.jpg','Đây là loại Champagne pha trộn (Blend Champagne), được sản xuất từ 30 - 40% giống Nho Pinot Noir, 30 - 40% giống Nho Pinot Menniel và 30% giống Nho Chardonnay. Loại Champagne này có màu vàng rơm thanh nhã cùng sắc hổ phách, có hương vị mạnh mẽ nồng nàn với vị trái cây điểm thêm hương vị của đào chín và một chút vị cay của vỏ cam sẽ lưu lại khá lâu trong vòm họng sau khi uống. Đó là một hương vị đầy thanh nhã và lịch lãm','Rượu Vang & Champane','Château Lagrange, Pháp',0,0,0),('M024','Sauvignon Blanc',1800000,'timthumb.jpg','Đây là một loại rượu vang trắng nổi tiếng được tạo nên bởi chính loại nho làm ra nó. Loại nho được sử dụng để sản xuất là thường những trái có màu xanh. Từ đó, hương vị của rượu sẽ có vị rất gắt, nếu không biết thưởng thức nhiều người sẽ nghĩ đó là thứ rượu hỏng.','Rượu Vang & Champane','Château Lagrange, Pháp',0,0,0),('M025','Gewurztraminer',1750000,'1.png','Một lựa chọn phổ biến cho các món ăn châu Á chính là Gewurztramine. Đây là một loại rượu vang trắng đặc biệt phong phú về hương vị như cay, ngọt.  Với hương vị của hạt vải, bánh gừng, vani, bưởi, và cây kim ngân hoa.','Rượu Remy Martin','Lucente, Ý',0,0,0),('M026','Remy Martin VSOP',900000,'Remy martin VSOP.png','Đây là sự kết hợp hoàn hảo đầy đồng điệu của những hương vị mạnh mẽ, say đắm lòng người và không thể nào chối từ. Một chút phảng phất của vanilla hòa quyện cùng hương gỗ trầm ấm, một chút cảm giác trọn vẹn và ngọt ngào cùng hương trái cây thơm mát, đặc biệt là hương của mơ và đào chín đã làm nên hỗn hợp tuyệt vời này. Tất cả sẽ lan tỏa nhẹ nhàng trong từng ngụm rượu. Người thưởng thức có thể tận hưởng vị nguyên chất, thêm đá hoặc sáng tạo các cách pha chế khác.','Rượu Remy Martin','Lucente, Ý',0,0,0),('M027','Remy Martin Extra',4800000,'Remy martin Louis 13.png','Đây được xem là tinh hoa của dòng Champagne Cognac. Sản phẩm mang đến một trải nghiệm khó quên. Remy Martin Extra là một Cognac hiếm có và tinh tế.  Nó có màu gỗ gụ cùng mùi thơm của hộp xì gà, cà ri và nghệ tây. Mùi hương thứ 2 đó là hoa thủy tiên, hoa quả khô, gỗ cây tuyết tùng và nhục đậu khẩu. Cuối cùng là cảm giác ấm áp, hài hòa với sự phức tạp cao.','Rượu Remy Martin','Lucente, Ý',0,0,0),('M028','Remy Martin Club',1550000,'Remy martin club.png','Đây là loại rượu đầu tiên tổ hợp đầy đủ các dòng rượu Cognac được ủ bằng nguyên liệu của Nhà Remy Martin với tỉ lệ là 70% nho của vùng Grande Champagne và 30% từ nho của vùng Petite Champagne. Nó là kết quả của sự pha trộn sành điệu của các loại rượu chưng cất độ tuổi từ 5 đến 25 tuổi, trưởng thành trong thùng gỗ sồi trong hầm rượu đặc biệt của Remy Martin.','Rượu Remy Martin','Urbina, Tây Ban Nha',0,0,0),('M029','Remy Martin XO',2600000,'Remy martin XO.png','Đây là một \"Bản giao hưởng\" của hơn 300 loại rượu chưng cất từ 10 cho đến 37 tuổi. Nhờ đó đã tạo nên vô số các hương vị hảo hạng với một kết cấu phức tạp, độc đáo và phong phú. Remy Martin XO có hương thơm của các loại hoa trắng (Đặc biệt là hoa nhài) kết hợp với mùi vị của quả mận ngọt, quả sung chín, cam tây, quế nghiền và quả phỉ mang đến dư vị mượt mà, phong phú và dài lâu.','Rượu Remy Martin','Urbina, Tây Ban Nha',0,0,0),('M030','Remy Martin Louis XIII',52000000,'Remy martin 3l.png','Được hoàn thiện thành một loại rượu độc nhất vô nhị, pha chế từ hơn 1.200 loại rượu chưng cất được ủ trong thùng gỗ sồi Limousin từ 40 - 100 năm và tất cả đều là Grande Champagne (Vùng trồng Nho tốt nhất của làng Cognac). Remy Martin mang hương vị của nhựa cây, mật ong, mận chín, kim ngân, gỗ sồi, da thuộc và chanh dây. Tất cả đã tạo nên một loại rượu Cognac hài hòa và uy tín nhất.','Rượu Remy Martin','Urbina, Tây Ban Nha',0,0,0),('M031','Martell Cordon Bleu',2000000,'xo_2.jpg','Martell Cordon Bleu được pha chế vào năm 1912. Nhờ hương vị hấp dẫn rất đặc trưng, Cordon Bleu đã chiếm được một vị thế rất riêng trong dòng Cognac cũng như thu hút một lượng lớn giới sành điệu thưởng thức. ','Các dòng rượu khác','Urbina, Tây Ban Nha',0,0,0),('M032','Martell Noblige',1550000,'martell_v_s_o_p.jpg','Noblige được lấy cảm hứng từ câu tục ngữ nổi tiếng của Pháp “Noblesse Oblige”, đây là thông điệp về nét văn hóa luôn cư xử đúng mực của các nhà quý tộc, dám đảm nhiệm những trọng trách xứng đáng với cương vị của mình. Đây là một bản cam kết mà Martell vinh dự được kế thừa và gìn giữ từ năm 1715 đến nay theo dấu ấn người sáng lập là Ông Jean Martell.','Các dòng rượu khác','Almaviva, Chile',0,0,0),('M033','Martell XO',4400000,'MARTELL_NOBLIGE.jpg','Martell XO là sự biểu trưng đặc sắc của cảm hứng và tầm nhìn của ông Jean Martell. Nó là sự kết hợp xuất sắc của 4 vùng sản xuất rượu Cognac nổi tiếng của Pháp. Vị rượu mạnh mẽ và lưu lại lâu sau khi uống là đặc điểm lưu ý của loại rượu này. Rượu Martell XO có màu vàng hổ phách đặc trưng với những điểm nhấn màu đồng sậm và màu gụ cùng với mùi của tiêu đen, ngò và dâu tằm đỏ hòa với hương vị trái cây phong phú như vả, quả óc chó, hạnh nhân, sáp ong và gỗ trầm hương. Dư vị dài lâu và mềm mại.','Các dòng rượu khác','Almaviva, Chile',0,0,0),('M034','Martell VSOP',1050000,'MARTELL_CORDON_BLEU_750ML.jpg','Martell Vsop là loại rượu êm dịu, hương vị phức hợp tinh tế. Trên nhãn chai còn có chạm trổ Huy chương vàng và chân dung của vị vua Louis XIV, vị vua trị vì triều đại Pháp khi Martell ra đời vào năm 1715.','Các dòng rượu khác','Almaviva, Chile',0,0,0),('M035','Cardhu 12',900000,'Cardhu_12_nm.jpg','Cardhu 12 được Diageo nhập khẩu trực tiếp vào Việt Nam và là một loại Whisky mạch nha có độ cân bằng, êm mượt và thoảng hương vị của táo, lê cùng một ít vị khói.','Rượu Glenfiddich','Almaviva, Chile',0,0,0),('M036','Cardhu 18',1600000,'Cardhu_18_new.jpg','Cardhu 18 được đựng trong chai thủy tinh mang phong cách cổ điển, sang trọng với nút chai được làm từ gỗ sồi. Đặc trưng điển hình của dòng Whisky mạch nha vùng Speyside này là cực kỳ dễ chịu, vị êm mượt, ngọt dịu, không quá cầu kỳ nhưng luôn tròn đầy hương vị. Rượu Cardhu 18 là sản phẩm tinh tế và cao cấp nhất của thương hiệu Cardhu, có mang một chút hương vị tự nhiên và phong phú của nhiều loại trái cây như: lê, táo, mận, anh đào và dứa. Hương thơm nhẹ của socola và hoa hồng dại, phảng phất hương của gỗ sồi và một ít vị khói.','Rượu Glenfiddich','Các nhà sản xuất khác',0,0,0),('M037','Rhum Bacardi Gold',260000,'Ruou-Rum-Bacardi-Carta-Oro.jpg','Rhum Bacardi Gold là sự kết hợp của 14 loại rượu Rhum khác nhau và được ủ ròng từ 3 đến 5 năm để tạo nên một hương vị ngon nổi bật đem đến cho người thưởng thức một cảm giác ngọt ngào từ một loại rượu Rhum cao cấp. Bacardi Gold Rhum có màu vàng hổ phách rực rỡ, mùi mạnh mẽ với hương vanilla, lê, caramel, chuối và hương gỗ sồi. Đây là loại Rhum rất thích hợp cho việc pha chế và làm bánh.','Rượu Macallan','Các nhà sản xuất khác',0,0,0),('M038','Bacardi Superior:',250000,'bacardi_75cl.jpg','Bacardi Superior là một trong những loại Rhum trắng có chất lượng vượt trội nhất. Rượu Bacardi Superior được ủ ròng ở trong thùng gỗ sồi trong thời gian khoảng 3 năm. Bacardi Superior có màu trong suốt cùng hương vanilla, hạnh nhân và trái cây miền nhiệt đới. Đây là loại rượu có vị ngon nổi bật đem đến cho người thưởng thức một cảm giác ngọt ngào của rượu Rhum cao cấp.','Rượu Macallan','Các nhà sản xuất khác',0,0,0),('M039','Ballantines Finest',320000,'ballantines finest.png','Có màu vàng sáng lộng lẫy và hương vị không thể nhầm lẫn đến từ hỗn hợp pha trộn của các loại rượu Whisky , mạch nha và ngũ cốc được lựa chọn tỉ mỉ, có độ tuổi trưởng thành trong những thùng gỗ sồi ít nhất là 3 năm . Rượu Ballantines Finest chính là khởi nguồn của dòng rượu Ballantines, mang hương thơm ngọt ngào của chocola, thạch nam đốt, táo đỏ, mật ong và trái cây thơm mát. Điểm nổi bật của Ballantines Finest chính là sự cân bằng, êm mượt của rượu với các hương vị phảng phất trên nền của socola đắng, táo đỏ, hạnh nhân nghiền và vani...','Rượu Ballantine\'s','Các nhà sản xuất khác',0,0,0),('M040','Ballanties 12',610000,'ballantines 12 years.png','Ballantines 12 là loại Whisky phong phú, trơn mượt và phức tạp, được pha trộn từ các Single Malt và các Whisky ngũ cốc đã được chọn lựa đặc biệt. Rượu Ballantines 12 có màu vàng hổ phách và hương vị mật ong, socola, táo đỏ và vani. Đây chính là dòng rượu chủ lực tạo nên doanh thu cùng thương hiệu rất nổi tiếng Ballantines.','Rượu Ballantine\'s','Các nhà sản xuất khác',0,0,0),('M041','Ballantines 17',1080000,'ballantines 17 years.png','Ballantine 17 có chất lượng rất tốt, độ tin cậy cao và giá thành hợp lý, phù hợp với tất cả và đáp ứng được những tiêu chí của các Khách hàng khó tính nhất. Ballantines 17 thể hiện tất cả những hương vị thuần túy nhất của dòng rượu Whisky pha trộn của Scotland. Với màu vàng hổ phách, hương vị của trái cây và gỗ sồi đã tạo nên sự độc đáo riêng đưa Ballantines 17 trở thành một trong những loại Whisky cổ điển được đánh giá cao trên thị trường Việt Nam và thế giới.','Rượu Ballantine\'s','Château Gruaud-Larose, Pháp',0,0,0),('M042','Ballantines Christmas Reserve',850000,'ballantines christmas.png','Đây là dòng Whisky pha trộn đặc biệt với chất lượng cao, được sản xuất với số lượng có hạn hàng năm và cũng được bán ra trong khoảng thời gian rất giới hạn. Dòng rượu không công bố tuổi là thể loại Blend Scotch Whisky đầu tiên với ghi chú quen thuộc theo mùa, mang hương vị sang trọng của mùa Giáng sinh như hương gỗ sồi ngọt ngào, trái cây khô, nho khô và quế. ','Rượu Ballantine\'s','Château Gruaud-Larose, Pháp',0,0,0),('M043','Ballantines 30',5200000,'ballantines 30 years.png','Nằm trong số những dòng Whisky cổ điển tinh tế và đắt tiền, tối thượng trong phân khúc Scotch Whisky siêu sang trọng. Màu vàng đậm cổ xưa của rượu Ballatines 30 kết hợp với hương thơm nhẹ nhàng mùi trái cây sấy khô cộng với vị tròn đều, mạnh mẽ của mật ong, hoa cỏ và trái cây tạo nên một Ballantines 30 rất hiếm có và không tìm thấy ở đâu khác. Đây chính là một loại rượu Whisky siêu sang trọng, hiếm có và độc quyền.','Rượu Ballantine\'s','Robert Mondavi, Mỹ',0,0,0),('M044','Dewars 12 Ýears Old',530000,'dewars12.jpg','với hương vị đặc biệt và nồng nàn đã mang đến một thức uống thật tuyệt vời, một sự lựa chọn hoàn hảo để chào đón một ngày mới. Ngày nay, Whisky Dewar\'s trở nên rất phổ biến và có thể được tìm thấy tại hơn 200 quốc gia trên thế giới.','Rượu Blended Scotch Whisky','Robert Mondavi, Mỹ',0,0,0);
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('1O6mj1wSEQZWVLfX-AbnVn3sgc2HmbW2',1530281788,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":true,\"user\":{\"username\":\"kimthao\"},\"cart\":[{\"maSP\":\"\",\"soluong\":17},{\"maSP\":\"M012\",\"soluong\":3},{\"maSP\":\"M014\",\"soluong\":6}]}'),('8WA966v0A1lvNkbc2tQ6GpRX8gA4AuHu',1530307053,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":true,\"user\":{\"username\":\"kimthao\"},\"cart\":[]}'),('JawZyW0ZkAlueZNd7BOHV_YHi-JCufFT',1530285819,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":true,\"user\":{\"username\":\"kimthao\"},\"cart\":[{\"maSP\":\"M040\",\"soluong\":3},{\"maSP\":\"M011\",\"soluong\":4}]}'),('SLeBy0G4W-7dFR2Eo_buyy58H4UkcvuU',1530280129,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":false,\"user\":null,\"cart\":[{\"ProId\":\"M010\",\"Quantity\":3,\"soluong\":null},{\"maSP\":\"M010\",\"soluong\":\"4431143\"}]}'),('_qlLnXcI_fYVkbJq-tbPKe7qiqfqVj8P',1530309987,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":true,\"user\":{\"username\":\"kimthao\"},\"cart\":[{\"maSP\":\"M043\",\"soluong\":3},{\"soluong\":1}]}'),('rlX9s0NlOgDWiz57pdsxHMgm9nG883ix',1530288676,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":true,\"user\":{\"username\":\"kimthao\"},\"cart\":[{\"maSP\":\"M039\",\"soluong\":3},{\"maSP\":\"M008\",\"soluong\":6},{\"soluong\":null}]}'),('yDYc8ouyHVKrYsMlVZjycE_7wETzKiUp',1530310871,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":true,\"user\":{\"username\":\"kimthao\"},\"cart\":[]}'),('yF5f2_QYM2VL06u81c-JGU2bFX_Zk2ah',1530280350,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":true,\"user\":{\"username\":\"kimthao\"},\"cart\":[{\"maSP\":\"\",\"soluong\":8}]}'),('ypm5pr4OIFhkmh_3B_RuUqRZRTBlbV3F',1530309500,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"isLogged\":true,\"user\":{\"username\":\"kimthao\"},\"cart\":[{\"maSP\":\"M042\",\"soluong\":1},1]}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('kimthao','123','taonuaa004@gmail.com','undefined','123'),('tram',' tramngochuynh20@gmail.com ','123','Cap nhat','Cap nhat');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-29  5:25:06
