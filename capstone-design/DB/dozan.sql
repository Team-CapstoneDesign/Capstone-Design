-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: dozan
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `board` (
  `idx` int(11) NOT NULL,
  `no` int(11) DEFAULT NULL,
  `name` char(20) DEFAULT NULL,
  `subject` char(30) DEFAULT NULL,
  `base` char(20) DEFAULT NULL,
  `blend` char(50) DEFAULT NULL,
  `roasting` char(20) DEFAULT NULL,
  `content` text,
  `ymd` char(30) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,1,'김지은','탄자니아 AA 맛있어요','탄자니아 AA','콜롬비아 수프리모  케냐AA','4','커피 맛이 아주 좋아요! 진한 향과 부드러운 맛이 일품이에요.','2024. 3. 16. 오전 5:55:36'),(2,2,'박지연','너무 즐거운 커피 탐험','예멘 모카 마타리','브라질 산토스','6','커피를 마시면서 즐거운 시간을 보냈어요. 다양한 풍미를 느낄 수 있었어요.','2024. 3. 17. 오후 11:52:34'),(3,3,'최지현','맛있는 커피의 세계로','에티오피아 예가체프','인도네시아 만델링  베트남 로부스타','5','커피의 다양한 맛과 향을 경험하고 싶다면 여기가 최고입니다. 다양한 원두를 즐길 수 있어요.','2024. 3. 17. 오후 11:52:42'),(4,4,'이지운','한 잔의 커피로 시작하는 하루','하와이 코나','자메이카 블루마운틴   예멘 모카 마타리','5','매일 아침 한 잔의 커피로 하루를 시작하니 기분이 좋아져요. 간편하게 즐길 수 있는 커피라서 좋아요.','2024. 3. 17. 오후 11:52:45'),(5,5,'신슬기','커피를 느끼는 특별한 순간','코스타리카 따라주','브라질 산토스  콜롬비아 수프리모  케냐 AA','3','커피를 마시며 특별한 순간을 느꼈어요. 여러 가지 원두를 즐기면서 커피의 다양한 매력을 경험할 수 있었어요.','2024. 3. 17. 오후 11:52:54'),(6,6,'이준영','커피의 세계로 떠나는 여행','자메이카 블루마운틴','없음','7','커피를 마시며 여행을 떠나는 기분이었어요. 다양한 원두를 맛보면서 커피의 매력에 빠져들었어요.','2024. 3. 17. 오후 11:52:59'),(7,7,'이준영','고급 원두 모카 마타리','예멘 모카 마타리','에티오피아 예가체프  코스타리카 따라주  탄자니아 AA','5','고급스러운 풍미가 아주 좋아요','2024. 5. 29 오후 1:47:54');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cart` (
  `ctNo` char(40) DEFAULT NULL,
  `prdNo` char(20) DEFAULT NULL,
  `ctqty` int(11) DEFAULT NULL,
  `capType` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES ('473297504FF1A214D7BF948D9E56037C','DL001',2,'kanu'),('001055A3ACF59EB97D2D5833906C76AF','DB002',1,'nesOrigin'),('4A6631A37145A93CBDBC31DBDDD1AE40','DS002',1,'nesOrigin'),('77A6C1FD566AD12E37EE9D8C644DD054','DS002',1,'nesOrigin'),('F86CA0AB7A36131FDE84FE10951F8DDF','DS002',3,'nesOrigin'),('F86CA0AB7A36131FDE84FE10951F8DDF','DS003',1,'nesOrigin'),('6CEB950178B4C9EBBCE057EC8ED6B244','DS004',1,'nesOrigin'),('913660C0E0D28701A46B2074342E6695','DS002',2,'nesOrigin'),('8612B728A8C313CE6DF7C483503325A9','DS002',1,'nesOrigin'),('FE7BDE6C7FDA117C4A2D70F1E3469A82','DS003',1,'nesOrigin'),('D19C025B60F0B904C7C369B23BCA2774','DS005',3,'illy'),('19931C51CD259462CCF5847DD88B149E','DB004',1,'nesOrigin'),('E5BDB2FC3CFF81755F7C80705F030026','DS002',1,'nesOrigin');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cscart`
--

DROP TABLE IF EXISTS `cscart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cscart` (
  `ctNo` char(40) DEFAULT NULL,
  `csname` char(100) DEFAULT NULL,
  `origin` char(30) DEFAULT NULL,
  `blend` char(100) DEFAULT NULL,
  `roast` char(30) DEFAULT NULL,
  `machine` char(30) DEFAULT NULL,
  `csQty` int(11) DEFAULT NULL,
  `price` char(30) DEFAULT NULL,
  `price2` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cscart`
--

LOCK TABLES `cscart` WRITE;
/*!40000 ALTER TABLE `cscart` DISABLE KEYS */;
INSERT INTO `cscart` VALUES ('001055A3ACF59EB97D2D5833906C76AF','','코스타리카 따라주','브라질 산토스  자메이카 블루마운틴  코스타리카 따라주','6','일리',1,'13,900','13900'),('F86CA0AB7A36131FDE84FE10951F8DDF','','과테 말라 안티구아','브라질 산토스  자메이카 블루마운틴  탄자니아 AA','6','네스프레소 버츄오',2,'13,900','13900'),('FF28BD09769E6EBA934A63CDB128904C','커피이','브라질 산토스','에티오피아 예가체프','5','일리',1,'13,900','13900'),('8612B728A8C313CE6DF7C483503325A9','','브라질 산토스','브라질 산토스','5','돌체구스토',1,'13,900','13900'),('FE7BDE6C7FDA117C4A2D70F1E3469A82','짧게','코스타리카 따라주','콜롬비아 수프리모','3','네스프레소 오리지널',3,'13,900','13900'),('FE7BDE6C7FDA117C4A2D70F1E3469A82','ㅋㅋ','탄자니아 AA','코스타리카 따라주  탄자니아 AA  예멘 모카 마타리','5','일리',1,'13,900','13900'),('FE7BDE6C7FDA117C4A2D70F1E3469A82','단맛','브라질 산토스','브라질 산토스  콜롬비아 수프리모','5','카누',1,'13,900','13900'),('D19C025B60F0B904C7C369B23BCA2774','tlgjadydrmfwkxptmxmwnddlqslek','과테 말라 안티구아','콜롬비아 수프리모  자메이카 블루마운틴  에티오피아 예가체프','7','네스프레소 버츄오',2,'13,900','13900'),('E5BDB2FC3CFF81755F7C80705F030026','정재린졸업츄카','예멘 모카 마타리','자메이카 블루마운틴  코스타리카 따라주  탄자니아 AA','4','네스프레소 오리지널',2,'15,900','15900'),('E5BDB2FC3CFF81755F7C80705F030026','','코스타리카 따라주','콜롬비아 수프리모  에티오피아 예가체프  코스타리카 따라주','6','카누',1,'13,900','13900'),('E5BDB2FC3CFF81755F7C80705F030026','커스텀 캡슐','탄자니아 AA','코스타리카 따라주','5','돌체구스토',1,'13,900','13900');
/*!40000 ALTER TABLE `cscart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `goods` (
  `prdNo` char(15) NOT NULL,
  `prdType` char(15) NOT NULL,
  `ctgType` char(15) NOT NULL,
  `prdName` char(15) NOT NULL,
  `prdRoasting` char(15) DEFAULT NULL,
  `prdPrice` char(15) NOT NULL,
  `prdPrice2` char(15) NOT NULL,
  `prdSmell` char(15) DEFAULT NULL,
  `prdTaste` char(15) DEFAULT NULL,
  `prdDetail` char(250) DEFAULT NULL,
  PRIMARY KEY (`prdNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES ('DB001','블렌딩','blending','두잔 소프트 블렌딩','시티-풀시티','11,900','11900','밸런스','부드럽고 구수함','콜롬비아 수프리모 + 케냐 AA + 과테말라 안티구아 사용 부드럽고 깔끔한 느낌을주며 목넘김과 풍미가 좋고 구수한 맛을 내며 밸런스가 좋음'),('DB002','블렌딩','blending','두잔 예가체프 블렌딩','시티-풀시티','10,900','10900','꽃','약간의 신맛과 단맛','에티오피아 예가체프 + 과테말라 안티구아 꽃향의 예카체프가 주가 되는 산뜻한 산미와 안티구아의 약간의 단맛 조화'),('DB003','블렌딩','blending','두잔 초코 블렌딩','시티','12,900','12900','초콜릿','구수한맛','과테말라 안티구아 + 콜롬비아 수프리모 + 인도네시아 만델링 + 베트남 로부스타 누룽지의 구수함과 초콜릿티의 묵직한 풍미와 진한 바디감이 특징'),('DB004','블렌딩','blending','두잔 프리미엄 블렌딩','시티','14,900','14900','산뜻한','감칠맛','하와이 코나 + 코스타리카 따라주 + 에티오피아 예가체프 + 콜롬비아 수프리모 산뜻한 산미와 풍부한 맛이 주를 이루며 3대 커피중 하나인 코나가 들어가 세련된 감칠맛을 가짐'),('DB005','블렌딩','blending','두잔 더치 블렌딩','시티-풀시티','10,900','10900','산뜻한','신맛, 단맛','콜롬비아 수프리모 + 코스타리카 따라주 + 엘살바도르 SHB 산뜻한 산미와 부드럽고 깔끔하며 단맛과 신맛이 조화를 이룸, 더치커피 용으로 추천'),('DB006','블렌딩','blending','두잔 다크 블렌딩','풀시티','11,900','11900','과일','다크초콜릿','케냐AA + 과테말라 안티구아 + 에티오피아 예가체프 다크초콜릿의 풍미와 과일느낌의 산미와 약간의 꽃향'),('DB007','블렌딩','blending','두잔 가을 블렌딩','풀시티-약간의 프렌치','10,900','10900','스모키','부드럽고 풍부한맛','브라질 산토스 + 과테말라 안티구아 + 에티오피아 예가체프 산토스의 스모키함과 안티구아의 풍부함 예가체프로 꽃향을 더해 다양한 풍미를 가짐'),('DD001','디카페인','decaffeine','두잔 디카페인 콜롬비아','시티','12,900','12900','산뜻한','밸런스','산뜻한 목넘김을 가지고 밸런스가 좋은 콜롬비아산 디카페인 원두'),('DD002','디카페인','decaffeine','두잔 디카페인 과테말라','시티','12,900','12900','초콜릿','견과류의 고소한맛','초콜릿의 단맛과 견과류의 고소한 맛이 특징인 과테말라산 디카페인 원두'),('DD003','디카페인','decaffeine','두잔 디카페인 에티오피아','시티','12,900','12900','꽃','단맛','에티오피아 원두의 특징인 달큰한 산미와 꽃향이 주가되는 디카페인 원두'),('DL001','블렌딩','season','두잔 푸른 용 가배','시티','17,900','17900','꽃 과일','단맛쓴맛신맛 밸런스','세계 3대커피 중 코나 + 블루마운틴을 사용해 단맛 신맛 쓴맛 등 모든맛과 꽃향 과일향 스모크향 등 커피가 가지고 있는 모든 맛과 향을 조화를 이루고 있는 푸른 용의 해 시즌한 정 프리미엄 블렌딩 원두'),('DL002','오리지널','season','두잔 블루드래곤 로부스타','하이','11,900','11900','고소함','구수하고 묵직한 단맛','토스트와 구운 아몬드 같은 고소함을 가지고, 곡물의 구수한 향과 세련된 단맛이 묵직하게 입 안을 채우는 푸른 용의 해 시즌한정 오리지널 원두'),('DO001','오리지널','original','두잔 게이샤','하이','10,900','10900','산뜻한','신맛과 약한 단맛','자스민, 귤류의 산뜻한 향과 신맛, 약간의 단맛까지 가지고있는 파냐마 ‘게이샤’'),('DO002','오리지널','original','두잔 코나','시티','15,900','15900','과일 꽃','단맛과 신맛 조화','단맛과 신맛의 조화가 좋으며, 부드럽고 달콤한 과일향과 산뜻한 꽃향을 함께 가지고 있는 하와이 ‘코나’ 마시고 난후 여운이 오래 남는 커피로도 유명 세계 3대 커피 중 하나'),('DO003','오리지널','original','두잔 수프리모','시티-풀시티','9,900','9900','산뜻한','적당한 단맛','풍부한 산미와 적당한 단맛 밸런스가 좋은 콜롬비아 ‘수프리모’'),('DO004','오리지널','original','두잔 모카 마타리','풀시티','15,900','15900','산뜻한','쓴맛과 새콤한 맛의 조화','옅은 새콤한 맛과 쓴 맛이 환상적으로 조화되어 부드러운 맛의 극을 내는 예멘 ‘모카 마타리’ 세계 3대커피중 하나'),('DO005','오리지널','original','두잔 따라주','풀시티','10,900','10900','고소함','깊은 단맛','깊은 단맛과 견과류의 고소한 맛이 특징인 코스타리카 ‘따라주’'),('DO006','오리지널','original','두잔 안티구아','시티-풀시티','11,900','11900','스모키','스모키','화산지역에서 경작되어 스모키한 맛과 향이 특징인 과테말라 ‘안티구아’'),('DO007','오리지널','original','두잔 SHG','시티','10,900','10900','고소함','은은한 산미와 달콤','은은한 산미와 달콤하고 고소한 풍미를 가진 엘살바도르 원두 ‘SHG’'),('DO008','오리지널','original','두잔 AA','풀시티','9,900','9900','자몽','캬라멜의 단맛','자몽 같은 과일의 산미와 캬라멜의 부드러운 풍미와 단맛이 특징인 케냐 ‘AA’'),('DO009','오리지널','original','두잔 블루마운틴','시티','16,900','16900','초콜릿 스모키','옅은 신맛 쓴맛','옅은 신맛과 부드러운 쓴맛, 쌉쌀한 초콜릿의 단맛과 스모크향 등 커피가 낼 수 있는 거의 모든 맛을 가지고 있는 자메이카 ‘블루마운틴’ 세계3대 커피중 하나지만 그중 최고로 불리고 있는 프리미엄 원두  세계 3대커피중 TOP'),('DS001','시그니쳐','signature','두잔 시그니처 오리진','하이','9,900','9900','밸런스','마일드','마일드하고 부드러운맛이 특징인 브라질 원두인 ‘산토스’를 사용'),('DS002','시그니쳐','signature','두잔 시그니처 블렌드','시티','10,900','10900','밸런스','묵직한','브라질 산토스+콜롬비아 수프리모+베트남 로부스타를 사용 이태리 커피의 묵직한 커피의 풍미와 진한 바디감이 특징'),('DS003','시그니쳐','signature','두잔 모닝 오리진','시티','10,900','10900','초콜릿','고소하고 달큼','고소하고 달콤한맛과 은은한 초코향이 특징인 인도네시아 ‘만델링’ 사용'),('DS004','시그니쳐','signature','두잔 런치 오리진','하이','10,900','10900','구수한','쌉살한맛','쌉살하고 묵직하면서 구수한맛이 특징인 베트남 ‘로부스타’ 사용'),('DS005','시그니쳐','signature','두잔 디너 오리진','미디엄','10,900','10900','상큼한','신맛','과일의 상큼한 향과 신맛이 특징인 에티오피아 ‘예가체프’ 사용'),('DT001','베버리지','beverage','두잔 히비스커스 티','-','10,900','10900','꽃 향','새콤달콤한 맛','무궁화속 두해살이풀인 로젤 열매를 말린 후 끓여 우려낸 대용차 맛이 시다보니 달콤한 디저트랑 궁합이 좋다'),('DT002','베버리지','beverage','두잔 피치 블로섬 티','-','11,900','11900','복숭아 향','달콤한 복숭아 맛','감귤과 봉숭아의 달콤 상큼한 풍미가 백차의 특징과 조화롭게 어우러져 있으며, 미묘한 자스민 꽃향이 균형을 이룬 백차'),('DT003','베버리지','beverage','두잔 코코아','-','9,900','9900','코코아 향','달콤한 카카오 맛','우유와 달콤한 초콜릿의 조화로 남녀노소 아이까지 편하게 즐길 수 있는 음료'),('DT004','베버리지','beverage','두잔 자몽허니 블랙 티','-','8,900','8900','자몽 향','달콤한 자몽 맛','맛이 과하게 달지 않으면서 청량감과 은은한 자몽 향을 느낄 수 있는 음료 뜨겁게 마마실 때 차갑게 마실 때마다 다른 맛을 느낄수있는 매력적인 티');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `manager` (
  `ID` char(10) NOT NULL,
  `password` char(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES ('dozan','1234');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `member` (
  `Date` char(50) NOT NULL,
  `memName` char(10) NOT NULL,
  `memBirth` char(15) NOT NULL,
  `memTel` char(15) NOT NULL,
  `memId` char(20) NOT NULL,
  `memPwd` char(20) NOT NULL,
  `memEmail` char(20) NOT NULL,
  `memZipno` char(10) NOT NULL,
  `memAddress` char(50) NOT NULL,
  `memAddrplus` char(30) DEFAULT NULL,
  PRIMARY KEY (`memId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('','이준영','19910101','010-2323-1313','a123','a12345','a123@gmail.com','08633','서울 금천구 금하로 594   (시흥동)','105동'),('2024. 5. 21. 오후 7:41:52','김지연','19971211','010-1234-1512','ab123','a1234','a1223@gmail.com','08633','서울 금천구 금하로 594  우리집',' (시흥동)'),('','박금자','19980505','010-7777-8888','p123','p1234','p123@gmail.com','10360','경기 고양시 일산서구 일산로 485  202호',' (일산동)'),('','김영희','20031212','010-3333-1111','y123','y1234','y123@naver.com','03967','서울 마포구 성미산로 55  101호',' (성산동)');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordercustom`
--

DROP TABLE IF EXISTS `ordercustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ordercustom` (
  `ordNo` varchar(10) DEFAULT NULL,
  `csName` varchar(10) DEFAULT NULL,
  `ordQty` int(11) DEFAULT NULL,
  `ordCap` char(20) DEFAULT NULL,
  `ordRoast` char(50) DEFAULT NULL,
  `ordOrigin` char(50) DEFAULT NULL,
  `ordBlend` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordercustom`
--

LOCK TABLES `ordercustom` WRITE;
/*!40000 ALTER TABLE `ordercustom` DISABLE KEYS */;
INSERT INTO `ordercustom` VALUES ('1','coffee',2,'일리','5','탄자니아 AA','콜롬비아 수프리모  케냐AA'),('6','아침 커피',1,'네스프레소 버츄오','6','코스타리카 따라주','브라질 산토스  콜롬비아 수프리모  예멘 모카 마타리'),('6','',1,'선택없음','8','에티오피아 예가체프','코스타리카 따라주  탄자니아 AA  예멘 모카 마타리'),('7','커피이',1,'카누','8','콜롬비아 수프리모','브라질 산토스  자메이카 블루마운틴  탄자니아 AA'),('7','아침 커피',1,'카누','5','과테 말라 안티구아','브라질 산토스  코스타리카 따라주  예멘 모카 마타리'),('8','',1,'네스프레소 오리지널','5','자메이카 블루마운틴','자메이카 블루마운틴  탄자니아 AA  예멘 모카 마타리'),('9','멀미최고',1,'돌체구스토','7','에티오피아 예가체프','파나마 게이샤  엘살바도르  케냐AA'),('11','응',1,'네스프레소 오리지널','5','예멘 모카 마타리','에티오피아 예가체프  코스타리카 따라주  탄자니아 AA'),('11','커퓌',1,'네스프레소 버츄오','6','자메이카 블루마운틴','코스타리카 따라주  예멘 모카 마타리'),('11','',1,'네스프레소 오리지널','5','예멘 모카 마타리','코스타리카 따라주  탄자니아 AA  예멘 모카 마타리');
/*!40000 ALTER TABLE `ordercustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderinfo`
--

DROP TABLE IF EXISTS `orderinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orderinfo` (
  `ordNo` int(11) NOT NULL,
  `memId` char(20) DEFAULT NULL,
  `ordDate` char(30) DEFAULT NULL,
  `ordReceiver` char(30) DEFAULT NULL,
  `ordZipno` char(50) DEFAULT NULL,
  `ordAddress` char(50) DEFAULT NULL,
  `ordAddrplus` char(50) DEFAULT NULL,
  `ordTel` char(20) DEFAULT NULL,
  `ordPay` char(20) DEFAULT NULL,
  `ordRec` char(30) DEFAULT NULL,
  PRIMARY KEY (`ordNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderinfo`
--

LOCK TABLES `orderinfo` WRITE;
/*!40000 ALTER TABLE `orderinfo` DISABLE KEYS */;
INSERT INTO `orderinfo` VALUES (1,'a123','2024. 3. 16. 오전 5:54:55','이준영','15003','경기 시흥시 군자로 159  응아니야',' (거모동)','010-1321-1241','카카오페이','recycle'),(2,'a123','2024. 4. 2. 오후 8:51:25','이준영','08632','서울 금천구 시흥동 995-29  안해안해','','010-1234-1234','신용카드','recycle'),(3,'a123','2024. 5. 7. 오전 10:23:28','이준영','05003','서울 광진구 광나루로 341  1414',' (군자동)','141-1231-1241','신용카드','recycle'),(4,'p123','2024. 5. 7 오후 12:34:02','박금자','10360','경기 고양시 일산서구 일산로 485  102호',' (일산동)','010-7777-8888','신용카드','recycle'),(5,'p123','2024. 5. 7 오후 1:04:22','박금자','10360','경기 고양시 일산서구 일산로 485  102호',' (일산동)','010-7777-8888','카카오페이','null'),(6,'a123','2024. 5. 28 오후 12:09:41','이준영','08633','서울 금천구 금하로 594  105동',' (시흥동)','010-2323-1313','카카오페이','recycle'),(7,'a123','2024. 5. 28 오후 12:44:20','이준영','08633','서울 금천구 금하로 594  105동',' (시흥동)','010-2323-1313','카카오페이','null'),(8,'a123','2024. 5. 28 오후 3:12:12',NULL,NULL,'null  null',NULL,NULL,NULL,NULL),(9,'a123','2024. 5. 29 오전 11:19:56',NULL,NULL,'null  null',NULL,NULL,NULL,NULL),(10,'a123','2024. 5. 29 오전 11:24:39','이준영','08633','서울 금천구 금하로 594  105동',' (시흥동)','010-2323-1313','카카오페이','null'),(11,'a123','2024. 5. 29 오전 11:48:22','이준영','08633','서울 금천구 금하로 594  105동',' (시흥동)','010-2323-1313','카카오페이','null');
/*!40000 ALTER TABLE `orderinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderproduct`
--

DROP TABLE IF EXISTS `orderproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orderproduct` (
  `ordNo` varchar(10) DEFAULT NULL,
  `prdNo` varchar(10) DEFAULT NULL,
  `ordQty` int(11) DEFAULT NULL,
  `ordCap` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderproduct`
--

LOCK TABLES `orderproduct` WRITE;
/*!40000 ALTER TABLE `orderproduct` DISABLE KEYS */;
INSERT INTO `orderproduct` VALUES ('1','DB002',3,'nesOrigin'),('2','DB002',1,'nesOrigin'),('3','DS002',1,'nesOrigin'),('4','DL002',2,'nesVeryuo'),('4','DD001',1,'dolce'),('5','DT002',1,'dolce'),('6','DO006',1,'nesOrigin'),('6','DS002',3,'dolce'),('7','DL002',1,'nesOrigin'),('7','DS003',1,'nesOrigin'),('10','DB004',1,'nesOrigin'),('11','DB007',1,'nesOrigin'),('11','DS003',2,'nesOrigin');
/*!40000 ALTER TABLE `orderproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wish`
--

DROP TABLE IF EXISTS `wish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wish` (
  `ctNo` char(40) DEFAULT NULL,
  `prdNo` char(15) DEFAULT NULL,
  `prdName` char(15) DEFAULT NULL,
  `prdPrice` char(15) DEFAULT NULL,
  `prdRoasting` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wish`
--

LOCK TABLES `wish` WRITE;
/*!40000 ALTER TABLE `wish` DISABLE KEYS */;
INSERT INTO `wish` VALUES ('AF7A8FB258B5DF31F7D5150A0FF65E0A','DB003','두잔 초코 블렌딩','12,900','시티'),('AF7A8FB258B5DF31F7D5150A0FF65E0A','DL002','두잔 블루드래곤 로부스타','11,900','하이'),('77A6C1FD566AD12E37EE9D8C644DD054','DB002','두잔 예가체프 블렌딩','10,900','시티-풀시티'),('77A6C1FD566AD12E37EE9D8C644DD054','DS001','두잔 시그니쳐 오리진','9,900','하이'),('F86CA0AB7A36131FDE84FE10951F8DDF','DL002','두잔 블루드래곤 로부스타','11,900','하이'),('8EBDAC0B99E737EA8269A018BCF9DD91','DS002','두잔 시그니쳐 블렌드','10,900','시티'),('1A9009AEBF9BFAF66610E8475A2B710C','DL002','두잔 블루드래곤 로부스타','11,900','하이'),('1A9009AEBF9BFAF66610E8475A2B710C','DT004','두잔 자몽허니 블랙 티','8,900','-'),('1A9009AEBF9BFAF66610E8475A2B710C','DB002','두잔 예가체프 블렌딩','10,900','시티-풀시티'),('19931C51CD259462CCF5847DD88B149E','DL002','두잔 블루드래곤 로부스타','11,900','하이');
/*!40000 ALTER TABLE `wish` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-09 23:59:03
