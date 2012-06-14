-- MySQL dump 10.13  Distrib 5.5.24, for Win32 (x86)
--
-- Host: localhost    Database: trafficfinessystem
-- ------------------------------------------------------
-- Server version	5.5.24

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
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car` (
  `carNo` varchar(20) NOT NULL,
  `carStyle` varchar(20) DEFAULT NULL,
  `carFrameNo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`carNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES ('ABC123','小型汽车','12345'),('ABC234','大型汽车','23456');
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driverlicense`
--

DROP TABLE IF EXISTS `driverlicense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driverlicense` (
  `driverLicenseNo` varchar(40) NOT NULL,
  `driverName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`driverLicenseNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driverlicense`
--

LOCK TABLES `driverlicense` WRITE;
/*!40000 ALTER TABLE `driverlicense` DISABLE KEYS */;
INSERT INTO `driverlicense` VALUES ('123456789012345678','小米'),('123456789123456789','小三');
/*!40000 ALTER TABLE `driverlicense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driverlisencepayonline`
--

DROP TABLE IF EXISTS `driverlisencepayonline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driverlisencepayonline` (
  `DriverLisenceNo` varchar(50) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `ID` varchar(45) DEFAULT NULL,
  `psw` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DriverLisenceNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driverlisencepayonline`
--

LOCK TABLES `driverlisencepayonline` WRITE;
/*!40000 ALTER TABLE `driverlisencepayonline` DISABLE KEYS */;
INSERT INTO `driverlisencepayonline` VALUES ('123456789123456789','小三','1231312313123123','123');
/*!40000 ALTER TABLE `driverlisencepayonline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finescodeinfo`
--

DROP TABLE IF EXISTS `finescodeinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finescodeinfo` (
  `codeID` varchar(30) NOT NULL,
  `dePoint` varchar(10) DEFAULT NULL,
  `finesMoney` varchar(45) DEFAULT NULL,
  `finesBehavior` varchar(200) DEFAULT NULL,
  `according` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finescodeinfo`
--

LOCK TABLES `finescodeinfo` WRITE;
/*!40000 ALTER TABLE `finescodeinfo` DISABLE KEYS */;
INSERT INTO `finescodeinfo` VALUES ('1001','0','1500吊销','驾驶拼装的机动车上道路行驶的B:驾驶拼装的汽车上道路行驶的','《法》第100条第2款、《省条例》第64条第1款第10项第1种行为\r'),('1002','0','1000吊销','驾驶已达报废标准的车辆上道路行驶的A:驾驶已达报废标准的非汽车类机动车上道路行驶的','《法》第100条第2款《省条例》第64条第1款第10项第2种行为\r'),('1003','0','吊销','造成交通事故后逃逸，构成犯罪的A:持有机动车驾驶证','《法》第101条第2款\r'),('1004','0','吊销','违反道路交通安全法律、法规的规定，发生重大事故，构成犯罪的','《法》第101条第1款\r'),('1005','0','1000可以并处拘留15天以下','未取得驾驶证驾驶机动车的A:未取得驾驶证驾驶非汽车类机动车的','《法》第99条第1款第1项第1种行为、《省条例》第64条第1款第1项第1种行为\r'),('1006','0','1000可以并处拘留15天以下','驾驶证被吊销期间驾驶机动车的A:驾驶证被吊销期间驾驶非汽车类机动车的','《法》第99条第1款第1项第2种行为、《省条例》第64条第1款第1项第2种行为\r'),('1007','0','1500可以并处吊销','把机动车交给未取得机动车驾驶证的人驾驶的','《法》第99条第1款第2项第1种行为、《省条例》第64条第1款第2项第1种行为\r'),('1008','0','1500可以并处吊销','把机动车交给机动车驾驶证被吊销的人驾驶的','《法》第99条第1款第2项第2种行为、《省条例》第64条第1款第2项第2种行为\r'),('1009','0','1500可以并处吊销','把机动车交给机动车驾驶证被暂扣的人驾驶的','《法》第99条第1款第2项第3种行为、《省条例》第64条第1款第2项第3种行为\r'),('1010','0','1000','驾驶人在驾驶证超过有效期仍驾驶机动车的A驾驶人在驾驶证超过有效期仍驾驶非汽车类机动车的','《条例》第28条第3种行为、《法》第99条第1款第1项《省条例》第64条第1款第1项\r'),('1011','0','1000','非法安装警报器的','《法》第97条第1款第1种行为、《法》第15条、《省条例》第63条第1种行为\r'),('1012','0','1000','非法安装标志灯具的','《法》第97条第1款第2种行为、《法》第15条、《省条例》第63条第2种行为\r'),('1013','0','200','驾驶证丢失期间仍驾驶机动车的','《条例》第28条第1种行为、《法》第90条、95条\r'),('1014','0','200','驾驶证损毁期间仍驾驶机动车的','《条例》第28条第2种行为、《法》第90条\r'),('1015','0','200','驾驶证被依法扣留期间仍驾驶机动车的','《条例》第28条第4种行为、《法》第90条、95条\r'),('1016','0','200','违法记分达到12分仍驾驶机动车的','《条例》第28条第6种行为、《法》第90条\r'),('1017','0','150','不按规定投保机动车第三者责任险的','《法》第98条第1款\r'),('1018','0','150','机动车不在机动车道内行驶的','《法》第36条第1种行为、第90条\r'),('1019','0','150','机动车违反规定使用专用车道的','《法》第37条、第90条\r'),('1020','0','200','机动车驾驶人不服从交警指挥的','《法》第38条第1种行为、第90条\r'),('1021','0','200','遇前方机动车停车排队等候或者缓慢行驶时，从前方车辆两侧穿插行驶的','《法》第45条第1款、第90条、《条例》第53条第2款第1种行为\r'),('1022','0','200','遇前方机动车停车排队等候或者缓慢行驶时，从前方车辆两侧穿插行驶的','《法》第45条第1款、第90条、《条例》第53条第2款第1种行为\r'),('1023','0','100','遇前方机动车停车排队等候或者缓慢行驶时，未依次交替驶入车道减少后的路口、路段的','《法》第45条第2款、第90条、《条例》第53条第3款\r'),('1024','0','100','在没有交通信号灯、交通标志、交通标线或者交警指挥的交叉路口遇到停车排队等候或者缓慢行驶时，机动车未依次交替通行的','《法》第45条第2款第2种行为、第90条\r'),('1025','0','100','遇前方机动车停车排队等候或者缓慢行驶时，在人行横道、网状线区域内停车等候的','《条例》第53条第2款第2种行为、《法》第90条\r'),('1026','0','50','行经铁路道口，不按规定通行的','《法》第46条、第90条\r'),('1027','0','150','机动车载货长度、宽度、高度超过规定的','《法》第48条第1款第1种、第90条、《条例》第54条第1款\r'),('1028','0','150','机动车载物行驶时遗洒、飘散载运物的','《法》第48条第1款第2种行为、第90条、《条例》第62条第5项第1种行为\r'),('1029','0','150','运载超限物品时不按规定的时间、路线、速度行驶的','《法》第48条第2款第1种行为、第90条\r'),('1030','0','150','运载超限物品时未悬挂明显标志的','《法》第48条第2款第2种行为、第90条\r'),('1031','0','200','运载危险物品未经批准的','《法》第48条第3款第1种行为、第90条\r'),('1032','0','200','运载危险物品时不按规定的时间、路线、速度行驶的','《法》第48条第3款第2种行为、第90条\r'),('1033','0','200','运载危险物品时未悬挂警示标志的','《法》第48条第3款第3种行为、第90条\r'),('1034','0','200','运载危险物品时未采取必要的安全措施的','《法》第48条第3款第4种行为、第90条\r'),('1035','0','200','载客汽车载货违反规定的','《法》第49条第2种行为、第90条、《条例》第54条第2款\r'),('1036','0','200','货运机动车违反规定载人的','《法》第50条、第90条、《条例》第55条第2项\r'),('1037','0','200','未将故障车辆移到不妨碍交通的地方停放的','《法》第52条第1种行为、《法》第90条\r'),('1038','0','50','不避让正在作业的道路养护车、工程作业车的','《法》第54条第1款、第90条\r'),('1039','0','200','机动车违反规定停放、临时停车且驾驶人不在现场或驾驶人虽在现场拒绝立即驶离，妨碍其它车辆、行人通行的','《法》第56条第1款、第93条第2款、第90条、《条例》第63条\r'),('1040','0','150','机动车喷涂、粘贴标识或者车身广告影响安全驾驶的','《条例》第13条第3款、《法》第90条\r'),('1041','0','200','道路养护施工作业车辆、机械作业时未开启示警灯和危险报警闪光灯的','《条例》第35条第1款、《法》第90条\r'),('1042','0','200','机动车不按规定车道行驶的','《条例》第44条第1款、《法》第90条\r'),('1043','0','200','变更车道时影响正常行驶的机动车的','《条例》第44条第2款、《法》第90条\r'),('1044','0','200','在禁止掉头或者禁止左转弯标志、标线的地点掉头的','《条例》第49条第1款第1种行为、《法》第90条\r'),('1045','0','200','在容易发生危险的路段掉头的','《条例》第49条第1款第2种行为、《法》第90条\r'),('1046','0','200','掉头时妨碍正常行驶的车辆和行人通行的','《条例》第49条第2款、《法》第90条\r'),('1047','0','50','机动车未按规定鸣喇叭示意的','《条例》第59条第2款、《法》第90条\r'),('1048','0','150','在禁止鸣喇叭的区域或者路段鸣喇叭的','《条例》第62条第8项、《法》第90条\r'),('1049','0','50','在机动车驾驶室的前后窗范围内悬挂、放置妨碍驾驶人视线的物品的','《条例》第62条第2项、《法》第90条\r'),('1050','0','50','机动车行经漫水路或漫水桥时未低速通过的','《条例》第64条、《法》第90条\r'),('1051','0','100','机动车载运超限物品行经铁路道口时不按指定的道口通过的','《条例》第65条第1款、《法》第90条\r'),('1052','0','100','机动车载运超限物品行经铁路道口时不按指定的时间通过的','《条例》第65条第1款、《法》第90条\r'),('1053','0','50','机动车行经渡口，不服从渡口管理人员指挥，不依次待渡的','《条例》第65条第2款第1种行为、《法》第90条\r'),('1054','0','50','上下渡船时，不低速慢行的','《条例》第65条第2款第2种行为、《法》第90条\r'),('1055','0','200','特种车辆违反规定使用警报器的','《法》第53条第2款第1种行为、第90条、《条例》第66条\r'),('1056','0','200','特种车辆违反规定使用标志灯具的','《法》第53条第2款第2种行为、第90条、《条例》第66条\r'),('1057','0','100','机动车在单位院内居民居住区内不低速行驶的','《条例》第67条第1种行为、《法》第90条\r'),('1058','0','100','机动车在单位院内居民居住区内不避让行人的','《条例》第67条第2种行为、《法》第90条\r'),('1059','0','150','驾驶摩托车手离车把的','《条例》第62条第6项第1种行为、《法》第90条\r'),('1060','0','150','驾驶摩托车在车把上悬挂物品的','《条例》第62条第6项第2种行为、《法》第90条\r'),('1061','0','150','拖拉机驶入大中城市中心城区内道路的','《法》第55条第1款第2种行为、第90条\r'),('1062','0','150','拖拉机驶入其它禁止通行道路的','《法》第55条第1款第3种行为、第90条\r'),('1063','0','200','拖拉机违反规定载人的','《法》第55条第2款、第90条\r'),('1064','0','150','拖拉机牵引多辆挂车的','《条例》第56条第1项第3种行为、《法》第90条\r'),('1065','0','100','学习驾驶人不按指定路线上道路学习驾驶的','《条例》第20条第2款第1种行为、《法》第90条\r'),('1066','0','100','学习驾驶人不按指定时间上道路学习驾驶的','《条例》第20条第2款第2种行为、《法》第90条\r'),('1067','0','100','学习驾驶人使用非教练车上道路驾驶的','《条例》第20条第2款第3种行为、《法》第90条\r'),('1068','0','100','学习驾驶人在教练不随车指导下上道路驾驶车辆的','《条例》第20条第2款第4种行为、《条例》第104条第4项、《法》第90条\r'),('1069','0','100','使用教练车时有与教学无关的人员乘坐的','《条例》第20条第2款第5种行为、《法》第90条\r'),('1070','0','50','实习期内未粘贴或悬挂实习标志的','《条例》第22条第2款、《法》第90条\r'),('1071','0','100','上道路行驶的机动车未放置检验合格标志的','《法》第95条第1款第2种行为、第90条\r'),('1072','0','200','驾驶安全设施不全的机动车的','《法》第21条第1种行为、第90条\r'),('1073','0','200','驾驶机件不符合技术标准的机动车的','《法》第21条第2种行为、第90条\r'),('1101','0','200','驾驶人未按规定使用安全带的','《法》第51条第1种行为、第90条\r'),('1102','1','200','不按规定使用灯光的','《法》第90条、《条例》第47条、48条第5项、51条第3项、57条、58条、59条第1款、61条第5项\r'),('1103','1','100','不按规定会车的','《法》第90条、《条例》第48条\r'),('1104','1','100','不按规定倒车的','《法》第90条、《条例》第50条\r'),('1105','1','100','摩托车后座乘坐不满十二周岁未成年人的','《法》第90条、《条例》第55条第3项第1种行为\r'),('1106','1','100','驾驶轻便摩托车载人的','《法》第90条、《条例》第55条第3项第2种行为\r'),('1107','1','50','在车门、车厢没有关好时行车的','《法》第90条、《条例》第62条第1项\r'),('1108','1','100','上道路行驶的机动车未放置保险标志的','《法》第95条第1款第3种行为、第90条\r'),('1109','1','100','未随车携带行驶证的','《法》第95条第1款第4种行为、第90条\r'),('1110','1','100','未随车携带驾驶证的','《法》第95条第1款第5种行为、《法》第90条\r'),('1201','2','200','机动车载物超过核定载质量未达30%的','《法》第48条第1款第1种行为、第92条第2款第1种行为、第90条\r'),('1203','2','50','机动车在没有划分机动车道、非机动车道和人行道的道路上，不在道路中间通行的','《法》第36条第2种行为、《法》第90条\r'),('1204','2','200','行经人行横道，未减速行驶的','《法》第47条第1款第1种行为、《法》第90条\r'),('1205','2','200','遇行人正在通过人行横道时未停车让行的','《法》第47条第1款第2种行为、《法》第90条\r'),('1206','2','200','行经没有交通信号的道路时，遇行人横过道路未避让的','《法》第47条第2款、《法》第90条\r'),('1207','2','200','驾驶摩托车时驾驶人未按规定戴安全头盔的','《法》第51条第3种行为、《法》第90条\r'),('1208','2','100','机动车通过有灯控路口时，不按所需行进方向驶入导向车道的','《条例》第51条第1项、《法》第90条\r'),('1209','2','100','左转弯时，未靠路口中心点左侧转弯的','《条例》第51条第3项第1种行为、《法》第90条\r'),('1210','2','100','通过路口遇放行信号不依次通过的','《条例》第51条第4项、《法》第90条\r'),('1211','2','100','通过路口遇停止信号时，停在停止线以内或路口内的','《条例》第51条第5项、《法》第90条\r'),('1212','2','100','通过路口向右转弯遇同车道内有车等候放行信号时，不依次停车等候的','《条例》第51条第6项、《法》第90条\r'),('1213','2','100','牵引故障机动车时，被牵引的机动车除驾驶人外载人的','《条例》第61条第1项第1种行为、《法》第90条\r'),('1214','2','100','牵引故障机动车时，被牵引的机动车拖带挂车的','《条例》第61条第1项第2种行为、《法》第90条\r'),('1215','2','100','牵引故障机动车时，被牵引的机动车宽度大于牵引的机动车的','《条例》第61条第2项、《法》第90条\r'),('1216','2','100','使用软连接装置牵引故障机动车时，牵引车与被牵引车之间未保持安全距离的','《条例》第61条第3项、《法》第90条\r'),('1217','2','100','牵引制动失效的被牵引车，未使用硬连接牵引装置的','《条例》第61条第4项、《法》第90条\r'),('1218','2','100','使用汽车吊车牵引车辆的','《条例》第61条第2款第1种行为、《法》第90条\r'),('1219','2','100','使用轮式专用机械牵引车辆的','《条例》第61条第2款第2种行为、《法》第90条\r'),('1220','2','100','使用摩托车牵引车辆的','《条例》第61条第2款第3种行为、《法》第90条\r'),('1221','2','100','牵引摩托车的','《条例》第61条第2款第4种行为、《法》第90条\r'),('1222','2','100','未使用专用清障车拖曳转向或照明、信号装置失效的机动车的','《条例》第61条第3款、《法》第90条\r'),('1223','2','100','驾驶时拨打接听手持电话的','《条例》第62条第3项第1种行为、《法》第90条\r'),('1224','2','100','驾驶时观看电视的','《条例》第62条第3项第2种行为、《法》第90条\r'),('1225','2','100','驾车时有其他妨碍安全行车的行为的','《条例》第62条第3项第3种行为、《法》第90条\r'),('1226','2','200','连续驾驶机动车超过4小时未停车休息或停车休息时间少于20分钟的','《条例》第62条第7项、《法》第90条\r'),('1227','2','200','在同车道行驶中，不按规定与前车保持必要的安全距离的','《法》第43条第1项、《法》第90条\r'),('1228','2','200','路口遇有交通阻塞时未依次等候的','《条例》第53条第1款、《法》第90条\r'),('1229','2','200','机动车违反禁令标志指示的','《法》第90条\r'),('1230','2','200','机动车违反禁止标线指示的','《法》第90条\r'),('1231','2','50','机动车违反警告标志指示的','《法》第90条\r'),('1232','2','50','机动车违反警告标线指示的','《法》第90条\r'),('1233','2','200','实习期内驾驶公共汽车的','《条例》第22条第3款第1种行为、《法》第90条\r'),('1234','2','200','实习期内驾驶营运客车的','《条例》第22条第3款第2种行为、《法》第90条\r'),('1235','2','200','实习期内驾驶执行任务的特种车辆的','《条例》第22条第3款第3种行为、《法》第90条\r'),('1236','2','200','实习期内驾驶载有危险物品的机动车的','《条例》第22条第3款第4种行为、《法》第90条\r'),('1237','2','200','实习期内驾驶的机动车牵引挂车的','《条例》第22条第3款第5种行为、《法》第90条\r'),('1238','2','200','机动车载人超过核定人数的','《法》第49条第1种行为、第90条、《条例》第55条第1项\r'),('1301','3','200','机动车逆向行驶的','《法》第35条第1种行为、《法》第90条\r'),('1302','3','200','机动车不按交通信号灯规定通行的','《法》第38条第1种行为、第90条、《条例》第38、40、41、42、43条\r'),('1303','3','150','机动车行驶超过规定时速50%以下的','《法》第42条第1款、第90条、《条例》第45条、46条\r'),('1304','3','200','从前车右侧超车的','《条例》第47条第4种行为、《法》第90条\r'),('1305','3','200','前车左转弯时超车的','《法》第43条第1项第1种行为、第90条\r'),('1306','3','200','前车掉头时超车的','《法》第43条第1项第2种行为、第90条\r'),('1307','3','200','前车超车时超车的','《法》第43条第1项第3种行为、第90条\r'),('1308','3','200','与对面来车有会车可能时超车的','《法》第43条第2项、第90条\r'),('1309','3','200','超越执行紧急任务的警车、消防车、救护车、工程救险车的','《法》第43条第3项、第90条\r'),('1310','3','200','在铁路道口、路口、窄桥、弯道、陡坡、隧道、人行横道、交通流量大的路段等地点超车的','《法》第43条第4项第1种行为、第90条\r'),('1311','3','200','车辆在道路上发生故障或事故后，妨碍交通又难以移动的，不按规定设置警告标志或未按规定使用警示灯光的','《法》第52条第2种行为、第90条、《条例》第60条\r'),('1312','3','100','准备进入环形路口不让已在路口内的机动车先行的','《条例》第51条第2项、《法》第90条\r'),('1313','3','100','转弯的机动车未让直行的车辆、行人先行的','《条例》第51条第7项第1种行为、第52条第3项、《法》第90条\r'),('1314','3','100','相对方向行驶的右转弯机动车不让左转弯车辆先行的','《条例》第51条第7项第2种行为、第52条第4项、《法》第90条\r'),('1315','3','100','机动车通过无灯控或交警指挥的路口，不按交通标志、标线指示让优先通行的一方先行的','《条例》第52条第1项、《法》第90条\r'),('1316','3','100','机动车通过无灯控、交警指挥、交通标志标线控制的路口，不让右方道路的来车先行的','《条例》第52条第2项、《法》第90条\r'),('1317','3','150','载货汽车牵引多辆挂车的','《条例》第56条第1项第1种行为、《法》第90条\r'),('1318','3','150','半挂牵引车牵引多辆挂车的','《条例》第56条第1项第2种行为、《法》第90条\r'),('1319','3','150','半挂牵引车牵引多辆挂车的','《条例》第56条第1项第2种行为、《法》第90条\r'),('1320','3','150','小型载客汽车牵引旅居挂车以外的且总质量700千克以上挂车的','《条例》第56条第2项第1种行为、《法》第90条\r'),('1321','3','150','挂车载人的','《条例》第56条第2项第2种行为、《法》第90条\r'),('1322','3','150','载货汽车牵引挂车的载质量超过汽车本身的载质量的','《条例》第56条第3项第1种行为、《法》第90条\r'),('1323','3','150','大型载客汽车牵引挂车的','《条例》第56条第2款第1种行为、《法》第90条\r'),('1324','3','150','中型载客汽车牵引挂车的','《条例》第56条第2款第2种行为、《法》第90条\r'),('1325','3','150','低速载货汽车牵引挂车的','《条例》第56条第2款第3种行为、《法》第90条\r'),('1326','3','150','三轮机动车汽车牵引挂车的','《条例》第56条第2款第4种行为、《法》第90条\r'),('1327','3','200','机动车在发生故障或事故后，不按规定使用灯光的','《条例》第60条、《法》第90条\r'),('1328','3','200','驾驶机动车下陡坡时熄火、空档滑行的','《条例》第62条第4项、《法》第90条\r'),('1329','3','200','故意遮挡机动车号牌的','《法》第95条第2款第1种行为、第90条\r'),('1330','3','200','故意污损机动车号牌的','《法》第95条第2款第2种行为、第90条\r'),('1331','3','100','不按规定安装机动车号牌的','《法》第95条第2款第3种行为、第90条\r'),('1332','3','200','上道路行驶的机动车未悬挂机动车号牌的','《法》第95条第1款第1种行为、第90条\r'),('1333','3','200','不避让执行任务的特种车辆的','《法》第53条第1款、第90条、第90条\r'),('1334','3','150','机动车不避让盲人的','《法》第64条第2款第2种行为、第90条\r'),('1339','3','200','运输剧毒化学品机动车超过规定时速50%以下的','《法》第42条第1款、第90条、《条例》第45条、条46条、《办法》第18条第2款，《省条例》第64条第1款第5项第1种行为\r'),('1601','6','1000','公路客运车辆载客超过额定乘员20%的A:超过额定乘员20%以上不足50%的','《法》第92条第1款第2种行为，《省条例》第60条第2、3、4项\r'),('1602','6','1000','A:超过核定载质量30%以上不足100%的机动车载物超过核定载质量30%的','《法》第92条第2款第2种行为，《省条例》第61条第2、3项\r'),('1603','6','1000可以并处吊销','机动车行驶超过规定时速50%的A:超过规定时速50%以上不足100%的','《法》第99条第1款第4项、《省条例》第64条第1款第4项\r'),('1604','6','500暂扣2月','饮酒后驾驶机动车的','《法》第91条第1款第1种行为、《省条例》第59条第1项第1种行为\r'),('1605','6','500暂扣3月','饮酒后驾驶营运机动车的','《法》第91条第2款第1种行为、《省条例》第59条第1项第2种行为\r'),('1606','6','1000','公路客运车辆违反规定载货的','《法》第92条第1款、《省条例》第60条第5项\r'),('1607','6','500','货运机动车违反规定载客的A:违反规定载客3人以下的','《法》第50条1款、《法》第92条第2款、《条例》第55条第2项、《省条例》第61条第4、5项\r'),('1609','6','2000','运输剧毒化学品机动车超过规定时速50%以上的','《法》第99条第1款第4项，《办法》第18条第2款，《省条例》第64条第1款第5项第2种行为\r'),('1701','12','200','使用他人机动车驾驶证驾驶机动车的','《法》第19条第一款、《条例》第28条、第90条\r'),('1702','12','1500暂扣3个月拘留15天以下','醉酒后驾驶机动车的','《法》第91条第1款第2种行为、《省条例》第59条第2项第1种行为\r'),('1703','12','2000暂扣6个月拘留15天以下','醉酒后驾驶营运机动车的','《法》第91条第2款第2种行为、《省条例》第59条第2项第2种行为\r'),('1704','12','1000可以并处拘留15天以下','在驾驶证暂扣期间仍驾驶机动车的A:在驾驶证暂扣期间仍驾驶非汽车类机动车的','《法》第99条第1款第3种行为、《条例》第28条第5种行为、《省条例》第64条第1款第1项第3种行为\r'),('1705','12','2000可以并处拘留15天以下','造成交通事故后逃逸，尚不构成犯罪','《法》第99条第1款第3项《省条例》第64条第1款第3项第2种行为\r'),('1706','12','2000可以并处拘留15天以下','违反交通管制规定强行通行，不听劝阻的','《法》第99条第1款第6项《省条例》第64条第1款第7项第2种行为\r'),('1709','12','1000','驾驶与驾驶证载明的准驾车型不相符合的车辆的A:驾驶非汽车类','《法》第19条第4款、第99条第1款第1种行为、《条例》第104条第2项、《省条例》第64条第1款第1项第1种行为\r'),('4201','2','150','在高速公路匝道上超车的','《条例》第82条第2项第1种行为、《法》第90条\r'),('4301','3','200','驾驶设计最高时速低于70公里的机动车进入高速公路的','《法》第67条第4种行为、《法》第90条\r'),('4310','3','150','在高速公路上行驶的两轮摩托车载人的','《条例》第83条第2种行为、、《法》第90条\r'),('4601','6','200','在高速公路上倒车的','《条例》第82条第1项第1种行为、《法》第90条\r'),('5001','0','2000','伪造、变造机动车登记证书的','《法》第16条第3项、《法》第96条第1款第1种行为、《省条例》第62条第3项第1种行为\r'),('5010','0','1500','使用伪造、变造的机动车检验合格标志的','《法》第16条第3项、《法》第96条第1款第10种行为、《省条例》第62条第1项第4种行为\r'),('5011','0','1500','使用伪造、变造的机动车保险标志的','《法》第16条第3项、《法》第96条第1款第11种行为、《省条例》第62条第1项第5种行为\r'),('5012','0','1500','使用伪造、变造的机动车驾驶证的','《法》第16条第3项、《法》第96条第1款第12种行为、《省条例》第62条第1项第6种行为\r'),('5013','0','1500','使用其他车辆的机动车登记证书的','《法》第96条第1款第13种行为、《省条例》第62条第2项第1种行为\r'),('5014','0','1500','使用其他车辆的机动车号牌的','《法》第96条第1款第14种行为、《省条例》第62条第2项第2种行为\r'),('5015','0','1500','使用其他车辆的机动车行驶证的','《法》第96条第1款第15种行为、《省条例》第62条第2项第3种行为\r'),('5016','0','1500','使用其他车辆的机动车检验合格标志的','《法》第96条第1款第16种行为、《省条例》第62条第2项第4种行为\r'),('5017','0','1500','使用其他车辆的机动车保险标志的','《法》第96条第1款第17种行为、《省条例》第62条第2项第5种行为\r'),('5018','0','1500可以并处拘留15天以下','强迫驾驶人违反交通安全法律、法规和安全驾驶要求驾驶机动车，造成交通事故但尚不构成犯罪的','《法》第99条第1款第5项第1种行为、《省条例》第64条第6项\r'),('5019','0','1500可以并处拘留15天以下','故意损毁交通设施，造成危害后果，尚不构成犯罪的','《法》第99条第1款第7项第1种行为、《省条例》第64条第8项第1种行为\r'),('5021','0','1500可以并处拘留15天以下','故意涂改交通设施，造成危害后果，尚不构成犯罪的','《法》第99条第1款第7项第3种行为、《省条例》第64条第8项第3种行为\r'),('5041','0','收缴牌证','以欺骗、贿赂手段取得驾驶证的','《条例》第103条\r'),('5051','0','扣车','车辆具有被盗抢嫌疑的','《违法处理》第13条第5项、《行政案件》第85条\r'),('7001','0','200','在机动车上安装影响交通技术监控设备正常使用的装置','《省条例》第10条第1种行为、《法》第90条、《省条例》第58条第27项第1种行为\r'),('﻿1001','0','1000吊销','驾驶拼装的机动车上道路行驶的A:驾驶拼装的非汽车类机动车上道路行驶的','《法》第100条第2款、《省条例》第64条第1款第10项第1种行为\r');
/*!40000 ALTER TABLE `finescodeinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finesinfo`
--

DROP TABLE IF EXISTS `finesinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finesinfo` (
  `ticketID` varchar(50) NOT NULL,
  `ticketNo` varchar(10) DEFAULT NULL,
  `fines` int(11) DEFAULT NULL,
  `deductions` int(11) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `carNo` varchar(25) DEFAULT NULL,
  `isTransact` int(11) DEFAULT NULL,
  `driverName` varchar(20) DEFAULT NULL,
  `driverLicenseNo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ticketID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finesinfo`
--

LOCK TABLES `finesinfo` WRITE;
/*!40000 ALTER TABLE `finesinfo` DISABLE KEYS */;
INSERT INTO `finesinfo` VALUES ('1','1001A',1000,0,'2012-05-29','ABC123',0,NULL,'123456789123456789'),('10','1007',1500,0,'2012-05-29','ABC123',1,NULL,'123456789123456789'),('11','1007',1500,0,'2012-05-29','ABC123',1,NULL,'123456789123456789'),('12','1007',1500,0,'2012-05-29','ABC123',1,NULL,'123456789123456789'),('123','1001A',0,0,'2012-06-05',NULL,0,NULL,''),('13','1007',1500,0,'2012-05-29','ABC123',0,NULL,'123456789123456789'),('14','1007',1500,0,'2012-05-29','ABC123',1,NULL,'123456789123456789'),('15','1007',1500,0,'2012-05-29','ABC123',1,NULL,'123456789123456789'),('16','1007',1500,0,'2012-05-29','ABC123',1,NULL,'123456789123456789'),('17','1007',1500,0,'2012-05-29','ABC123',1,NULL,'123456789123456789'),('18','1007',1500,0,'2012-05-29','ABC123',0,NULL,'123456789123456789'),('19','1007',1500,0,'2012-05-29','ABC123',0,NULL,'123456789123456789'),('2','1001B',1500,0,'2012-05-29','ABC123',0,NULL,'123456789123456789'),('20','1007',1500,0,'2012-05-29','ABC123',0,NULL,NULL),('21','1007',1500,0,'2012-05-29','ABC123',1,NULL,NULL),('22','1001A',0,0,'2012-06-05',NULL,0,NULL,''),('23','1001A',0,0,'2012-06-05','AB2345',0,NULL,''),('24','1001A',0,0,'0001-01-01','',0,NULL,''),('3','1002A',1000,0,'2012-05-29','ABC234',1,NULL,NULL),('4','1003A',0,0,'2012-05-29','ABC234',1,NULL,NULL),('5','1003B',0,0,'2012-05-29','ABC123',1,NULL,NULL),('6','1003A',0,0,'2012-05-29','ABC234',1,NULL,NULL),('7','1007',1500,0,'2012-05-29','ABC123',1,NULL,NULL),('8','1007',1500,0,'2012-05-29','ABC123',0,NULL,NULL),('9','1007',1500,0,'2012-05-29','ABC123',0,NULL,NULL);
/*!40000 ALTER TABLE `finesinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-06-14 20:32:15