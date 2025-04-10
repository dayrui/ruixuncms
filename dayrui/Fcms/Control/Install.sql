

DROP TABLE IF EXISTS `{dbprefix}1_news`;

CREATE TABLE `{dbprefix}1_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '主题',
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '缩略图',
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关键字',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT '描述',
  `hits` int(10) unsigned DEFAULT NULL COMMENT '浏览数',
  `uid` int(10) unsigned NOT NULL COMMENT '作者id',
  `author` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '笔名',
  `status` tinyint(2) NOT NULL COMMENT '状态(已废弃)',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `link_id` int(10) NOT NULL DEFAULT '0' COMMENT '同步id',
  `tableid` smallint(5) unsigned NOT NULL COMMENT '附表id',
  `inputip` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` int(10) DEFAULT '0' COMMENT '排序值',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `link_id` (`link_id`),
  KEY `status` (`status`),
  KEY `updatetime` (`updatetime`),
  KEY `hits` (`hits`),
  KEY `category` (`catid`,`status`),
  KEY `displayorder` (`displayorder`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容主表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_news`
--

LOCK TABLES `{dbprefix}1_news` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_news` DISABLE KEYS */;
INSERT INTO `{dbprefix}1_news` VALUES (1,3,'2024好玩的大型军事战争手游合集 热门的军事类游戏推荐','https://android-imgs.25pp.com/fs08/2024/03/25/11/647ae8a87379c8be12e7f01b95749912.jpg','','现在市面上的手游种类繁多，有很多玩家不知道该怎么选择最适合自己的游戏。今天小编就带来一种选择，介绍一下大型军事战争手游合集，里面肯定有你玩过或者听过的游戏。这类游戏非常考验玩家应变和决策能力。让游戏里紧张刺激的地图场景、精致的建模和沉浸式十足的音效，带你穿越到最真实的战斗中吧。1、《大秦帝国之帝国烽烟》《大秦帝国之帝国烽烟》是一款以秦朝历史为背景的战争沙盘策略手游。玩家在游戏内扮演秦国的主公。如何',1,1,'创始人',9,'/index.php?c=show&id=1',0,0,'125.84.163.116-29719',1711608012,1711613588,0),(3,2,'僵尸的游戏有哪些 2024高人气的僵尸游戏大全','https://android-imgs.25pp.com/fs08/2024/03/26/8/46e930f6ee7f914a13a2efa21dc1a29f.jpg','','最近小编听说有人在问紧张又刺激的僵尸的游戏有哪些，希望在快速地生活节奏中寻求一点刺激的感觉，释放出自己的压力，那么今天小编给大家推荐几款好玩的僵尸游戏，让大家体验一下在平时生活中所没有遇见过的的紧张刺激感，如果有喜欢追求刺激的朋友们可以去下载体验一下。1、《植物大战僵尸》《植物大战僵尸》是一款以僵尸为主题的策略性游戏，在游戏中随着可怕的僵尸入侵，玩家可以在庄园里栽种向日葵来获取阳光，并用获取的阳光',1,1,'创始人',9,'/index.php?c=show&id=3',0,0,'125.84.163.116-31538',1711613684,1711613684,0),(4,2,'纯靠打怪掉装备的手游有哪些 超高爆率的游戏推荐2024','https://android-imgs.25pp.com/fs08/2024/03/26/1/980b7978b953c4e6431a92378126a140.png','','现在有很多的游戏需要打怪才能获得装备，今天小编就来说一说纯靠打怪掉装备的手游有哪些，这几款游戏让玩家能够在其中尽情探索、成长和交流，为玩家呈现了满是冒险的奇幻世界，是几款不容错过的经典之作。感兴趣的玩家们就赶紧来试试这几款游戏吧，精彩不容错过。1、《元气骑士》在《元气骑士》中，你将身披盔甲，手持闪亮的武器，准备好迎接挑战。游戏中的角色设计独具匠心，让你在游戏中尽情发挥自己的战斗风格。每个关卡都设计',1,1,'创始人',9,'/index.php?c=show&id=4',0,0,'125.84.163.116-30428',1711613811,1711613811,0),(5,2,'射雕手游公测福利有哪些 射雕手游公测福利怎么领','https://android-imgs.25pp.com/fs08/2024/03/28/2/2c7633554dbd9f5dd1dec9e3748f8810.png','','根据金庸经典小说改编的同名游戏《射雕》终于迎来正式上线了，一般来说游戏公测的福利是最多的，很多人也都踩着点登录服务器来玩游戏呢!那么射雕手游公测福利有哪些呢?下面就给大家详细说明一番，同时也会告知大家要怎么领取这些福利，一起来看看吧!【射雕】最新版下载目前游戏已经正式上线了，大家如果喜欢这种武侠MMO游戏的话，就可以点击上方的按钮通过九游app来下载该游戏，在九游下载该游戏可以领取到平台的专属福利',1,1,'创始人',9,'/index.php?c=show&id=5',0,0,'125.84.163.116-30428',1711613855,1711614079,0),(6,2,'商业都市什么角色最强 商业都市最强角色推荐','https://android-imgs.25pp.com/fs08/2024/03/27/7/aeb4a5c8d6f2bae61400d30a9fa9bdf4.jpg','','商业都市什么角色最强?在这个游戏当中如果想要商业版图扩展的更大，得到更多的财力，那么不可避免的是需要一些强力角色的帮助的，所以小伙伴们如果知道哪些角色更加值得大家去培养，那么就能够使用这些强力的角色帮到大家更多，接下来就给大家推荐一些值得培养的角色吧。首先是灰姑娘这个角色，她的技能目前看来每一个都是非常强力的，顶级游艇俱乐部专家这个技能可以让当前所有建筑的倍数直接上涨十五倍，而且游艇俱乐部可以额外',1,1,'创始人',9,'/index.php?c=show&id=6',0,0,'125.84.163.116-31538',1711613885,1711614024,0),(7,2,'有没有好玩的仙侠类手游推荐 高人气的仙侠游戏大全2024','https://android-imgs.25pp.com/fs08/2024/03/26/8/1ff49fb367cad00d64468c651c4b2b3e.jpeg','','现在很多的仙侠游戏都展现出了各自的特色，今天小编就来说一说有没有好玩的仙侠类手游推荐，这几款游戏中的每一个场景都经过精心设计，每一段音乐都能引起玩家内心深处的共鸣，使玩家沉浸其中，忘却现实的种种烦恼，尽情享受游戏带来的乐趣，感兴趣的玩家们就不妨来试试吧。1、《剑踪情缘》在《剑踪情缘》中，玩家将踏上一段神秘而壮丽的江湖之旅，探索一个充满仙侠情怀的世界。玩家需要通过不断的修炼和历练，提升自己的实力，探',1,1,'创始人',9,'/index.php?c=show&id=7',0,0,'125.84.163.116-30428',1711613910,1711614064,0),(8,2,'全明星激斗特瑞阵容怎么搭配好 全明星激斗特瑞阵容搭配攻略','https://android-imgs.25pp.com/fs08/2024/03/28/1/504c1a1461598bdc4bc9914a6215fbbf.png','','在全明星激斗这款游戏里面有着各种各样人物，这里面绝大部分的角色都可以组成一个阵型，玩家们需要利用这些角色之间的互补和羁绊才可以组合成完美的配置。那么，全明星激斗特瑞阵容怎么搭配好?特瑞是这款游戏里面非常受到玩家欢迎的一位角色。但是不少玩家对于这位角色的配队却不是很清楚。想要使用特瑞作为主阵容，首先我们第一步需要做的，便是要了解特瑞和哪些角色是有着羁绊连锁的。目前已知的角色分别有安迪和东丈。他们两位',1,1,'创始人',9,'/index.php?c=show&id=8',0,0,'125.84.163.116-31538',1711613966,1711614045,0),(9,2,'最热网络游戏排行榜 2024热门的游戏排行榜','https://android-imgs.25pp.com/fs08/2024/03/25/8/a05bdccdb04a784edde3c157c6ca3244.jpg','','对小编来说，做最热网络游戏排行是一件非常有趣和有意义的事情，因为这些登上排行榜的游戏可以帮助我们更好地了解游戏行业的发展趋势和玩家的需求，从而指导小伙伴们更好的选择那些受欢迎的游戏。以下是小编近期加班整理出的一份最新的2024年度游戏排行榜名单，供各位小伙伴参考下载，及时体验最火手游的乐趣。1、《QQ飞车》《QQ飞车》是一款3D赛车竞速类游戏。这款游戏极具创意地打造了澎湃竞速的内心世界，为玩家提供',1,1,'创始人',9,'/index.php?c=show&id=9',0,0,'125.84.163.116-30428',1711614138,1711614138,0),(10,2,'全明星激斗下载链接 全明星激斗手游下载最新版地址','https://android-imgs.25pp.com/fs08/2024/03/28/9/4ada1ea3c9767ed9a25b7047a1301810.png','','SNK这家公司制作了很多脍炙人口的游戏，不少玩家对于这家公司的游戏都是赞不绝口。近期一款将SNK角色齐聚一堂的游戏作品登场，这款游戏便是全明星激斗。很多玩家都在询问全明星激斗下载链接在哪，很多玩家在看到这款游戏之后都想马上就可以玩到，但可惜是找不到下载地址。【全明星激斗】最新版预约/下载这款游戏虽然之前有进行过测试，但是内测已经在不久之前就结束了。官方也没有透露关于这款游戏的具体公测时间。大家先点',1,1,'创始人',9,'/index.php?c=show&id=10',0,0,'125.84.163.116-30939',1711614729,1711614729,0),(11,2,'小时候玩的多人游戏有哪些 2024好玩的童年游戏推荐','https://android-imgs.25pp.com/fs08/2022/05/30/8/115_02cb477079fea214fc40ac9950e633ac.jpg','','很多玩家们最喜欢做的就是重温自己的童年，享受那种纯粹的快乐。这一期就为玩家介绍的是小时候玩的多人游戏有哪些 ，下面要的都是会让玩家感到休闲而又放松的游戏，它们都有着熟悉的背景音乐和好看的画面，无论您是希望重温儿时回忆的玩家，或是让家中的孩子也来体验其中的乐趣，来玩这些游戏都是一种不错的选择。1、《童年飞行棋》其实这款游戏真的没有太多的介绍的必要，因为飞行棋是大多数70后，80后玩家必玩的一款游戏。',1,1,'创始人',9,'/index.php?c=show&id=11',0,0,'125.84.163.116-30939',1711614761,1711614761,0),(12,2,'模拟新手开车游戏有哪些 2024有趣的开车游戏排行榜','https://android-imgs.25pp.com/fs08/2024/03/23/8/11f97f5202acbb2a36bff4ddcd3329f9.jpg','','现在人们的出行交通基本上都是离不开汽车了，也是人们的必备交通工具，那么今天小编就为大家带来了模拟新手开车游戏有哪些，在这些游戏中，大家不仅可以锻炼自己的开车技术，还可以帮助大家学习到一些交规，并且也有一些比较刺激的飙车玩法哦，甚至还能够帮助大家提升反应能力呢，下面就一起来看看2024有趣的开车游戏排行榜分享吧。1、《开车和停车》《开车和停车》这款游戏可以让你驾驶一辆小汽车在城市中自由的驾驶，当然你',1,1,'创始人',9,'/index.php?c=show&id=12',0,0,'125.84.163.116-30939',1711614794,1711614794,0),(13,2,'2024多人生存射击游戏大全 好玩的生存射击类型游戏排行','https://android-imgs.25pp.com/fs08/2024/02/20/10/115_868ac09f7103cd493012f34133f9c1ec.JPEG','','多人生存射击游戏大全你知道吗?射击类型的游戏是更多小伙伴所喜欢的类型，其实射击类型游戏不仅仅有着很好的刺激性，还能够给更多的玩家带来前所未有的体验，好玩的多人生存射击游戏大全已经成为大家所关注的了，小编列举的这几款游戏不仅仅画面感很清晰，在玩的方法上也是特别刺激的，一起来了解一下。1、《求生之战》采取废弃的城市，作为游戏的地图背景，在城市的各个领域中，要不断的去寻找道具武器，还要注意躲闪。迎面来的',1,1,'创始人',9,'/index.php?c=show&id=13',0,0,'125.84.163.116-30939',1711614858,1711614858,0),(126,3,'好玩的象棋棋谱app有哪些 象棋软件下载推荐',NULL,'','现如今人们的兴趣爱好越来越广泛，用于生活越来越丰富，有不少人喜欢在线上进行象棋游戏，那么哪些软件更适合玩象棋更好玩呢？所以今天小编为大家带来好玩的象棋棋谱app有哪些，给大家推荐几款免费好玩的下象棋的',0,1,'HSQ',9,'/index.php?c=show&id=126',0,0,'127.0.0.1',1711633606,1711633606,0),(127,3,'同步学英语app下载小学版本分享 小学阶段同步英语软件有哪些',NULL,'','英语是非常重要的一门学科，从小学阶段就开始学习英语，在这个阶段一定要打好基础。才能在高中或者初中的时候英语功课不会被落下，那么同步学英语app下载小学阶段的有哪些。很多家长都想了解一下，选择相关的软件',0,1,'HSQ',9,'/index.php?c=show&id=127',0,0,'127.0.0.1',1711633619,1711633619,0),(128,3,'外国人学汉语的app有哪些 适用于外国人学汉语的软件推荐',NULL,'','随着时代的发达，我们国家的文化也走出了国门，有很多国外人士对汉语比较感兴趣，想要学习说汉语，那么除了有专业的汉语课程以外，在私下也可通过一些软件来学汉语。目前外国人学汉语的app有哪些?选择相应的ap',0,1,'HSQ',9,'/index.php?c=show&id=128',0,0,'127.0.0.1',1711633629,1711633629,0),(129,3,'完美婚姻的定式在哪个app看 看完美婚姻的定式的软件下载',NULL,'','完美婚姻的定式是一部非常好看的韩剧，深受韩国观众的好评，这部电视剧在我国也比较受欢迎，通过节目也可以了解韩国人对待婚姻的观念。目前完美婚姻的定式在哪个app看?很多热爱看韩剧的小伙伴都想下载到手机上，',0,1,'HSQ',9,'/index.php?c=show&id=129',0,0,'127.0.0.1',1711633639,1711633639,0),(130,3,'好用的应用锁屏软件有哪些 热门的锁屏app下载',NULL,'','锁屏软件是手机上不可缺少的，在每次停止使用手机的时候，都需要通过锁屏软件来快速的锁住，以免不小心拨出去电话或者是点开网页耗费流量，那么好用的应用锁屏软件有哪些？选择一款好用的锁屏软件。操作起来既轻松又',0,1,'HSQ',9,'/index.php?c=show&id=130',0,0,'127.0.0.1',1711633652,1711633652,0),(131,3,'图像转换器app下载推荐 图像转换软件有哪些',NULL,'','如今在手机上可下载的软件非常多，这些软件无论是在生活中还是在工作中，都是有很大作用的，能够辅助用户高效率的来完成一些事情，那么图像转换器app下载推荐哪些?相信这是很多从事创作方面的小伙伴都想了解的，',0,1,'HSQ',9,'/index.php?c=show&id=131',0,0,'127.0.0.1',1711633666,1711633666,0),(132,3,'英文书籍阅读app有哪些 热门的英文书籍阅读软件推荐',NULL,'','要想提高英语成绩，靠的并不是死记硬背，需要掌握正确的学英语的方式和方法，一定要找到学习的技巧。目前英文书籍阅读app有哪些?在课下，阅读一些好的英语书籍，能让你的发音更标准，也能加深对单词或者是语句的',0,1,'HSQ',9,'/index.php?c=show&id=132',0,0,'127.0.0.1',1711633677,1711633677,0),(133,3,'美食照片用什么软件 拍美食效果好的APP推荐',NULL,'','我们平时都会分享自己的生活，在生活中可以拍摄一些美食和美景，所以我们平时都会用一些 APP来拍照，不过也有许多人不太清楚美食照片用什么软件，下面小编就给你介绍一些好用的拍美食的 APP推荐，在这里大家',0,1,'HSQ',9,'/index.php?c=show&id=133',0,0,'127.0.0.1',1711633691,1711633691,0),(134,3,'英语应用有哪些可以免费下载 免费的学英语软件分享',NULL,'','现如今有许多小伙伴想要通过线上平台自行学习英语，市面上有超多英语软件，那么哪些软件更适合广大小伙伴的使用呢，所以今天小编为大家带来英语应用有哪些可以免费下载，给大家推荐几款好用的免费的英语学习软件，让',0,1,'HSQ',9,'/index.php?c=show&id=134',0,0,'127.0.0.1',1711633705,1711633705,0),(135,3,'同城快递app有哪些 同城快递软件推荐',NULL,'','现如今有许多小伙伴都喜欢在网上购物，避免了线下逛实体店浪费更多的时间所以快递物流查询就显得格外重要，所以今天小编为大家带来同城快递app有哪些，给大家推荐几款好用的快递查询软件，让用户随时随地了解掌握',0,1,'HSQ',9,'/index.php?c=show&id=135',0,0,'127.0.0.1',1711633717,1711633717,0),(136,3,'一人之下动漫在哪个app上看 可以看一人之下的动漫软件推荐',NULL,'','一人之下这部动漫是近期我国最具代表性的一部动漫作品。这部动漫中的故事情节和画风都非常符合我国国人的审美。那么大家知道一人之下动漫在哪个app上看内容最完整吗？目前为止一人之下这部动漫已经完结了好几部。',0,1,'HSQ',9,'/index.php?c=show&id=136',0,0,'127.0.0.1',1711633729,1711633729,0),(137,3,'值得下载代驾app推荐 好用的代驾软件有哪些',NULL,'','在当下这个大时代，只要有需求就会诞生相关的行业，例如大家在生活中可能难免有对代驾的需求。现在不仅有代价，而且也可以直接在网上代驾。那么大家知道值得下载代驾app推荐都有哪些吗？现在许多小伙伴的工作难免',0,1,'HSQ',9,'/index.php?c=show&id=137',0,0,'127.0.0.1',1711633742,1711633742,0),(138,3,'瘦身计划app韩剧中的有哪些 制定瘦身计划的app推荐',NULL,'','随着最近韩剧的开播，不少网友对那些韩剧里面的男女主角的完美身材爱慕不已，那么瘦身计划app韩剧中的有哪些呢，小编也想让大家都用上这些宝藏软件，也拥有跟他们一样的好身材，一样的健康和活力。小编经过一段时',0,1,'HSQ',9,'/index.php?c=show&id=138',0,0,'127.0.0.1',1711633756,1711633756,0),(139,3,'英语动画片app推荐哪些 英语动画软件大全',NULL,'','当今社会中，英语是追求美好未来，追求高品质工作的敲门砖更是垫脚石，很多人认为学习英语是枯燥乏味的，其实只要找准方式，就能轻松畅快的学习。那么英语动画片app推荐哪些？很多小伙伴都会通过观看英语动画片的',0,1,'HSQ',9,'/index.php?c=show&id=139',0,0,'127.0.0.1',1711633770,1711633770,0),(140,3,'海报制作app有哪些 可以制作海报的app推荐',NULL,'','随着互联网发达，很多老板在宣传自家产品、店铺的时候都喜欢用一些制作精美的海报宣传给大众。对一些海报设计师来说，制作一份有创意、有立意的海报很重要，当然着都离不开海报制作app。因此小编给大家分享几款海',0,1,'HSQ',9,'/index.php?c=show&id=140',0,0,'127.0.0.1',1711633782,1711633782,0),(141,3,'影视tv版app有哪些 影视tv软件合集',NULL,'','看电视app已成为目前必不可少的手机应用，利用此类型软件观看影视作品，满足想象力好奇心的同时，也能体验不同的生活世界，提供更独特的情感寄托及共鸣。那么影视tv版app有哪些？现在很多软件为大家播放电视',0,1,'HSQ',9,'/index.php?c=show&id=141',0,0,'127.0.0.1',1711633795,1711633795,0),(142,3,'英语学单词app有哪些 英语学单词软件合集',NULL,'','随着互联网普及人们的生活也走向智能化，在科技的加持下学习更是提升日常。很多人利用书本背诵单词，总觉得特别枯燥，可使用app缓解此类问题。那么英语学单词app有哪些？这些软件是日常学英语是必不可少的伴侣',0,1,'HSQ',9,'/index.php?c=show&id=142',0,0,'127.0.0.1',1711633807,1711633807,0),(143,3,'新闻资讯app有哪些 新闻资讯软件合集',NULL,'','新闻资讯成为人们生活中必不可少的打发软件app，通过此类平台获得不同的相关资讯，各种热门内容全面覆盖范围较广，比如时事、娱乐、财经、科技等。那么新闻资讯app有哪些？大部分新闻平台都有全面的智能推送功',0,1,'HSQ',9,'/index.php?c=show&id=143',0,0,'127.0.0.1',1711633818,1711633818,0),(144,3,'音乐适配app有哪些 音乐适配软件合集',NULL,'','除了有很多的人喜欢听音乐以外，也有一些人比较喜欢进行音乐创作，虽然大部分的人家里面可能在创作音乐时并没有专业的设备，但却可通过一些专业的app来满足需求，那么音乐适配app有哪些呢？可通过小编介绍的这',0,1,'HSQ',9,'/index.php?c=show&id=144',0,0,'127.0.0.1',1711633832,1711633832,0),(145,3,'雅思听力app有哪些 热门雅思听力软件推荐',NULL,'','说到雅思考试，大家都是非常了解的，要想顺利的通过雅思考试，也需要全方面的来加强英语的学习，目前雅思听力app有哪些?如果您的英语还有很大的不足，担心不能顺利通过考试，可在手机上下载这些软件，每天利用业',0,1,'HSQ',9,'/index.php?c=show&id=145',0,0,'127.0.0.1',1711633845,1711633845,0),(146,3,'推荐美食的app有哪些 好用的美食软件分享',NULL,'','都说民以食为天，吃好每一餐是很重要的，合理的搭配饮食，不仅能够让身体获得健康，看到色香味俱全的美食，也能让人的心情变好，那么推荐美食的app有哪些，尤其是一些对美食颇有研究的人群，在手机上下载相应的软',0,1,'HSQ',9,'/index.php?c=show&id=146',0,0,'127.0.0.1',1711633857,1711633857,0),(147,3,'图片编辑助手app下载推荐 好用的图片编辑软件有哪些',NULL,'','在对图片编辑的时候，可以选择一些比较好用的app，通过这些app来制作出来的图片，不仅能够提升图片的质量，在画面以及各方面都是很不错的，那么图片编辑助手app下载有哪些?无论您是专业图片编辑人群、还是',0,1,'HSQ',9,'/index.php?c=show&id=147',0,0,'127.0.0.1',1711633868,1711633868,0),(148,3,'显示屏改字用什么软件 显示屏改字使用的app下载推荐',NULL,'','去看明星的演唱会或者是到机场接人等多种场合，有很多人都会做一些有趣的动画显示屏。需要改上面的字的时候，就不知道该如何操作了，今天来介绍显示屏改字用什么软件，这些软件都是很受欢迎的，而且实用性也比较强，',0,1,'HSQ',9,'/index.php?c=show&id=148',0,0,'127.0.0.1',1711633883,1711633883,0),(149,3,'小朋友听故事的app推荐哪些 小朋友用来听故事的软件分享',NULL,'','有很多家长从小就会给孩子讲儿童故事，让孩子从小养成听故事的好习惯，其实多听一些有趣的小故事也是很有意义的。热门的小朋友听故事的app推荐有哪些，选择相应的软件下载到手机上，每天给孩子听一些有趣的故事，',0,1,'HSQ',9,'/index.php?c=show&id=149',0,0,'127.0.0.1',1711633898,1711633898,0),(150,3,'学单词的app有哪些 学单词的软件合集',NULL,'','在学习英语的时候掌握单词也是必不可少的，除了比较简单的单词，可以用于英语的沟通和交流，如果想要让自己的英语水平得到很大的提高，单词的数量也应该有所增加，那么学单词的app有哪些呢？如果自己想要提升学习',0,1,'HSQ',9,'/index.php?c=show&id=150',0,0,'127.0.0.1',1711633910,1711633910,0),(151,3,'影院app免费观看推荐哪些 免费观影软件合集',NULL,'','平时生活节奏较快，根本没有太多的时间到电影院观看一部喜欢的影视作品，而影视app就成为人们观影首选方式。通过app观看喜欢的影片，还能详细了解各种热门评论，那么影院app免费观看推荐哪些？现在大部分a',0,1,'HSQ',9,'/index.php?c=show&id=151',0,0,'127.0.0.1',1711633922,1711633922,0),(152,3,'地平线西之绝境狩猎场怎么玩 地平线西之绝境狩猎场奖励介绍',NULL,'','地平线西之绝境的整个游戏进程之中，有个地点非常特殊就是地平线西之绝境狩猎场，这里不仅仅可以让大家磨练自己的战斗技巧，还能获取非常不错的奖励。每个狩猎场都提供了独特的挑战，只要大家拥有不错的操作机技巧就',0,1,'HSQ',9,'/index.php?c=show&id=152',0,0,'127.0.0.1',1711633934,1711633934,0),(153,3,'网上租书借书app有哪些 热门网上租书借书软件推荐',NULL,'','无论是学生还是成年人，多多阅读一些书籍是非常不错的，尤其是有一些名著中都蕴藏着很深刻的人生哲理，通过读书也能给人带来很多的启发，网上租书借书app有哪些?如果你也很喜欢读书，就可选择这些app下载到手',0,1,'HSQ',9,'/index.php?c=show&id=153',0,0,'127.0.0.1',1711633945,1711633945,0),(154,3,'浪人崛起久坂玄瑞任务怎么做 久坂玄瑞完成支线任务攻略',NULL,'','浪人崛起是一个主题叫以战斗为中心的开放世界的角色扮演游戏，其中有一个契约的条件的主任务需要玩家先完成支线一个有关浪人崛起久坂玄瑞的任务，很多玩家不知道这个支线任务的地点和流程，导致了主线任务的停滞，所',0,1,'HSQ',9,'/index.php?c=show&id=154',0,0,'127.0.0.1',1711633956,1711633956,0),(155,3,'消防刷题库的app有哪些 热门消防刷题库的软件下载',NULL,'','要想从事消防方面的工作则需要有资格证书才可以，近些年来有很多人都想考取消防证书，但是考取证书并不是很容易，需要平时多多的刷题，那么消防刷题库的app有哪些?如果你也准备考取消防证书，一定要选择一款软件',0,1,'HSQ',9,'/index.php?c=show&id=155',0,0,'127.0.0.1',1711633970,1711633970,0),(156,3,'舞蹈教学app推荐有哪些 热门舞蹈教学软件下载',NULL,'','喜欢跳舞的人群是非常多的，有很多人喜欢跟着舞蹈教学视频来学习，这种方式也是非常不错的，视频里的讲解非常清楚。就像是跟着现场老师上课一样，那么舞蹈教学app推荐有哪些?这些app主要是针对热爱跳舞的人群',0,1,'HSQ',9,'/index.php?c=show&id=156',0,0,'127.0.0.1',1711633985,1711633985,0),(157,3,'移动考试app安卓版有哪些 安卓版移动考试软件下载',NULL,'','如今推出了多种关于学习方面的软件，这些软件能够很好地在课下帮助学生来巩固功课，也可以通过这些软件来测试自己的学习成果。那么移动考试app安卓版有哪些?在手机上下载相关的软件，平时可以通过这些软件来学习',0,1,'HSQ',9,'/index.php?c=show&id=157',0,0,'127.0.0.1',1711633999,1711633999,0),(158,3,'网络排名优化软件有哪些 受欢迎的网络排名优化类软件合集',NULL,'','对于小伙伴们而言，如果能有软件来帮自己针对网络的排名进行优化就在好不过了，但是自身的网络环境若是很差的话肯定是不行的，所以大家应该去通过相关的软件帮自己，下面就来说说网络排名优化软件有哪些，若是小伙伴',0,1,'HSQ',9,'/index.php?c=show&id=158',0,0,'127.0.0.1',1711634012,1711634012,0),(159,3,'同城帮送跑腿app推荐 好用的跑腿软件有哪些',NULL,'','现在打车软件，外卖软件的流行给人们的生活带来了很大的便利，甚至现在都有可以提供同城跑腿服务的软件。那么大家知道好用的同城帮送跑腿app推荐都有哪些吗？相信许多有过工作经验的小伙伴在工作中都会遇到需要为',0,1,'HSQ',9,'/index.php?c=show&id=159',0,0,'127.0.0.1',1711634027,1711634027,0),(160,3,'同等学力英语词汇用哪个app 英语同等学力词汇软件合集',NULL,'','在同等学力英语考试当中，会对学生的英语听说读写能力进行一个综合性的考试了解，学生的英语水平到底是怎样的，当然也要了解更多词汇。那么同等学力英语词汇用哪个app呢？如果自己准备进行这方面的考试，或者是想',0,1,'HSQ',9,'/index.php?c=show&id=160',0,0,'127.0.0.1',1711634039,1711634039,0),(161,3,'2024空战手游下载最新版 好玩的空战手游下载推荐',NULL,'','在战争当中，哪一方可以掌握制空权，哪一方就有着强大的火力压制。学习战斗的策略技巧，不妨看看这篇空战手游下载最新版大全，这篇文章给大家带来了五款最新的空战手游，想要制霸战场的玩家们，一定不要错过这些经典',0,1,'HSQ',9,'/index.php?c=show&id=161',0,0,'127.0.0.1',1711634052,1711634052,0),(162,3,'耐玩的格斗竞技游戏合集 2024必玩的格斗手游有哪些',NULL,'','格斗为核心的游戏，可以帮助大家在有压力时进行释放，或者在无聊时想要追求刺激也能来试试小编下面讲解的几款格斗竞技游戏合集，无比流畅又自然的格斗动作和动感十足的视觉特效，肯定会让越来越多的玩家们深陷其中，',0,1,'HSQ',9,'/index.php?c=show&id=162',0,0,'127.0.0.1',1711634063,1711634063,0),(163,3,'2024高人气的机动奥特曼手游盘点 最受欢迎的奥特曼手游下载推荐',NULL,'','每一个人心一定都有一个属于自己的英雄梦，而逐渐长大成人之后才发现世界是那么的苍白无力。但是没有关系，小编为各位玩家带来了关于机动奥特曼手游的盘点文章，玩家们可以在游戏当中实现自己的超人梦，让自己重新回',0,1,'HSQ',9,'/index.php?c=show&id=163',0,0,'127.0.0.1',1711634075,1711634075,0),(164,3,'英语早教app哪个好 热门英语早教软件合集',NULL,'','英语启蒙教育对于幼儿来说至关重要，幼儿阶段是吸收接收能力最强的阶段，此时为他们进行启蒙教育，能够让宝宝迅速掌握正确的发音以及基本的语法，并为之后的学习打下足够的基础。那么英语早教app哪个好？每位家长',0,1,'HSQ',9,'/index.php?c=show&id=164',0,0,'127.0.0.1',1711634085,1711634085,0),(165,3,'2024有哪些大型手机动作游戏 好玩的大型动作游戏下载推荐',NULL,'','小编总结了几款2024大型手机动作游戏，动作类型的手游凭借着花里胡哨的攻击技能，以及人物打斗时的激烈场面，特别能够吸引玩家下载体验，今天小编带来的这几款动作手游，都是从内容到画面再到角色都设计的非常棒',0,1,'HSQ',9,'/index.php?c=show&id=165',0,0,'127.0.0.1',1711634098,1711634098,0);
/*!40000 ALTER TABLE `{dbprefix}1_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_news_category`
--

DROP TABLE IF EXISTS `{dbprefix}1_news_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_news_category` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所有上级id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目名称',
  `dirname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目目录',
  `pdirname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '上级目录',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有下级',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用',
  `ismain` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否主栏目',
  `childids` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '下级所有id',
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目图片',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `setting` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '属性配置',
  `displayorder` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `show` (`show`),
  KEY `disabled` (`disabled`),
  KEY `ismain` (`ismain`),
  KEY `module` (`pid`,`displayorder`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='栏目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_news_category`
--

LOCK TABLES `{dbprefix}1_news_category` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_news_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}1_news_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_news_category_data`
--

DROP TABLE IF EXISTS `{dbprefix}1_news_category_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_news_category_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` int(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='栏目模型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_news_category_data`
--

LOCK TABLES `{dbprefix}1_news_category_data` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_news_category_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}1_news_category_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_news_data_0`
--

DROP TABLE IF EXISTS `{dbprefix}1_news_data_0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_news_data_0` (
  `id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COLLATE utf8mb4_unicode_ci COMMENT '内容',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容附表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_news_data_0`
--

LOCK TABLES `{dbprefix}1_news_data_0` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_news_data_0` DISABLE KEYS */;
INSERT INTO `{dbprefix}1_news_data_0` VALUES (1,1,3,'&lt;p&gt;现在市面上的手游种类繁多，有很多玩家不知道该怎么选择最适合自己的游戏。今天小编就带来一种选择，介绍一下大型军事战争手游合集，里面肯定有你玩过或者听过的游戏。这类游戏非常考验玩家应变和决策能力。让游戏里紧张刺激的地图场景、精致的建模和沉浸式十足的音效，带你穿越到最真实的战斗中吧。&lt;/p&gt;&lt;p&gt;1、《大秦帝国之帝国烽烟》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/25/11/647ae8a87379c8be12e7f01b95749912.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;640&quot; height=&quot;731&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《大秦帝国之帝国烽烟》是一款以秦朝历史为背景的战争沙盘策略手游。玩家在游戏内扮演秦国的主公。如何在这变化莫测的时代中，拯救国家于水火，如何做到横扫六合，一统天下，这就要看玩家的游戏布局与策略了。玩家虽然处于上帝视角，但是周围的局势会随着时间不断发生变化，看似操作简单的游戏，玩起来也是充满挑战性的。&lt;/p&gt;&lt;p&gt;2、《二战风云2》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/21/8/6edf0d4abf441b9ab6b19f9b4a21096c.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;640&quot; height=&quot;731&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;这是一款历史迷绝对不能错过的游戏，它以第二次世界大战为背景，真实的向玩家还原了那个残酷又刺激的年代。关于模拟战争场面，这款游戏做的可谓细致，游戏中出现过的武器和大型军事建筑都是有历史出处的。就连游戏主线发展都是参考二战真实发生过的事件。游戏内对于玩家的操作也有一点要求，需要不停的通过宣战、防御等，积累经验值，升级装备来提升自身的实力。&lt;/p&gt;&lt;p&gt;3、《战争与文明》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/21/4/3db1a1c8fed080e1af3c733ba8546cc4.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;640&quot; height=&quot;731&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《战争与文明》是一款以塔防策略为核心的游戏。玩家扮演的是拥有上帝视角的指挥官，通过分析入侵敌人的特点，来制定坚固高效的防御体系。同时还要不断积累经验和升级装备，进行扩张和主动进攻。游戏内的场景建模很丰富，不同地貌例如森林、海滩、平原等都有复刻，每一种地貌内都隐藏了巨大的资源，需要玩家不停的发掘。所以说这款游戏，时玩时新，一直都很受玩家的喜爱。&lt;/p&gt;&lt;p&gt;4、《三国战争》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/21/3/a2fb4dba76e48c08ddfbee6dad74416a.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;640&quot; height=&quot;731&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;沉迷于三国故事的玩家必须来尝试一下，学生党也能在其中寓教于乐。。玩家开局需要从三国阵营的君主中选择一位扮演，不同的君主开局拥有的国土、将士、资金都是不同的。如何在对局中争夺领土、称霸天下，需要玩家深思熟虑。游戏中的其他角色也都是三国中出现过的，人物之间不同的性格和错综的关系，也给游戏带来了不少乐趣。这款游戏风格比较偏向古风，属于男女老少都可玩的一款。&lt;/p&gt;&lt;p&gt;5、《战争怒吼》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/21/8/a4a48a32ba5bcc28bd21c6fbb0f70c03.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;640&quot; height=&quot;731&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《战争怒吼》是一款大制作的游戏，他的开发公司是一直以出品高质量手游的网易游戏，所以这款游戏是非常值得新玩家入坑的。这款游戏也是以二战为故事背景，比较考验玩家的操作水平，要想玩的好，没事就得多练练。游戏内紧张刺激的对决和变化多端的局势，让玩家一旦开始就停不下来。网易出品的游戏，画质、音乐、动效做的都是不错的，体验感绝对非常棒。&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p&gt;以上5款游戏就是大型军事战争手游合集内最受玩家欢迎的，不知道有没有你喜欢的。其实战争类的手游玩法都差不多，需要玩家从前期布局就开始考虑，纵横谋划、勇往直前。所以，这类游戏一直能经久不衰，也确实有令人上瘾的地方。&lt;/p&gt;'),(3,1,2,'&lt;p&gt;最近小编听说有人在问紧张又刺激的僵尸的游戏有哪些，希望在快速地生活节奏中寻求一点刺激的感觉，释放出自己的压力，那么今天小编给大家推荐几款好玩的僵尸游戏，让大家体验一下在平时生活中所没有遇见过的的紧张刺激感，如果有喜欢追求刺激的朋友们可以去下载体验一下。&lt;/p&gt;&lt;p&gt;1、《植物大战僵尸》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/26/8/46e930f6ee7f914a13a2efa21dc1a29f.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;500&quot; height=&quot;333&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《植物大战僵尸》是一款以僵尸为主题的策略性游戏，在游戏中随着可怕的僵尸入侵，玩家可以在庄园里栽种向日葵来获取阳光，并用获取的阳光来购买其他更高级别的植物来进行防御，阻挡僵尸的进攻，并将其杀死，来实现保护庄园和草坪的目的，如果庄园一旦被僵尸突破那么庄园的主人只能被僵尸吃掉，所以玩家一定要制定正确的策略来阻止僵尸的入侵，提高自己的战术水平来取得胜利。&lt;/p&gt;&lt;p&gt;2、《生死狙击之僵尸前线》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/26/2/803046afe00628ded4c94859a0c0dabe.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;500&quot; height=&quot;281&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《生死狙击之僵尸前线》只是一款以僵尸为主题的射击类攻防游戏，如果玩家喜欢射击恐怖类游戏，那么这款游戏将会是你的不二之选，此款游戏无论是画面还是真实程度都是处于一种领先的水平，让玩家在游戏中有一种身临其境的感觉，甚至还会出现3D效果的震撼，给玩家一种强烈的代入感，画面制定的也是惟妙惟肖，如果有玩家喜欢此款游戏的可以下载来体验一下。&lt;/p&gt;&lt;p&gt;3、《僵尸尖叫》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/25/7/e018c8d326e46e4183171b2669c4ac13.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;500&quot; height=&quot;300&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《僵尸尖叫》是一款以僵尸为主题背景的跑酷类手机游戏，这款游戏最大的特点就是画风幽默搞笑和极具创意的比赛规则，游戏中的僵尸给玩家一种很呆萌的感觉，丝毫不会让玩家感受到恐惧，为游戏增添了不少乐趣，在音效上也有自己的特点，僵尸在奔跑的过程中也会发出尖叫声，游戏的整体音效不会让玩家感受到恐惧，给人一种轻松的体验，喜欢的朋友们可以来下载哦。&lt;/p&gt;&lt;p&gt;4、《画狐》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/25/3/dca0ef3d4191fb37615232c2fc1b8ef1.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;500&quot; height=&quot;250&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《画狐》这款游戏是以林正英正版授权，在这款游戏中可以看到很多僵尸，而且还可以去通过各种各样的职业去体验游戏当中的恐惧感，在游戏中玩家们可以和鬼怪进行战斗，能够体验到茅山道士捉拿僵尸的快感，玩家还可以独自或者组队和怪物进行战斗，在里面还能够体验到比较恐怖的剧情，破解各种悬疑恐怖案件，喜欢挑战自我且不怕僵尸的可以下载来体验一下。&lt;/p&gt;&lt;p&gt;5、《僵尸榨汁机》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/25/10/5012141e0d7693c82f81276e6014957e.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;500&quot; height=&quot;250&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《僵尸榨汁机》是一款极其搞笑又带有一定重口味的僵尸题材的休闲游戏，此款游戏将冒险还有经营的元素结合在一起，形成了一种幽默风趣的玩法，在游戏中出现的僵尸并不吓人，游戏中登场的僵尸有20多种，不同的僵尸会有不同的技能，玩家只需要运用手中的武器来对僵尸进行攻击直到将僵尸抓住使自己成为最强的僵尸猎人，让它们为自己的果汁店服务，如果你喜欢这类游戏可以下载体验一下。&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p&gt;总而言之，僵尸类的游戏虽然有一点恐怖，但是只要你迈出了第一步就会体验到无尽的快乐，僵尸类手游现在已经被很多年轻人所喜爱，在其中不仅能够获得刺激的感觉还能收获快乐和成就感，喜欢冒险解谜的朋友可以下载体验一下。&lt;/p&gt;'),(4,1,2,'&lt;p&gt;现在有很多的游戏需要打怪才能获得装备，今天小编就来说一说纯靠打怪掉装备的手游有哪些，这几款游戏让玩家能够在其中尽情探索、成长和交流，为玩家呈现了满是冒险的奇幻世界，是几款不容错过的经典之作。感兴趣的玩家们就赶紧来试试这几款游戏吧，精彩不容错过。&lt;/p&gt;&lt;p&gt;1、《元气骑士》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/26/1/ce1085c90365b2a3f2a0da1d8d297e31.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;600&quot; height=&quot;333&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;在《元气骑士》中，你将身披盔甲，手持闪亮的武器，准备好迎接挑战。游戏中的角色设计独具匠心，让你在游戏中尽情发挥自己的战斗风格。每个关卡都设计精良，充满了挑战和惊喜，让你时刻保持着紧张的游戏体验。无论是挑战BOSS、探索隐藏关卡，还是收集珍稀道具，都能让你沉浸在游戏的乐趣中，体验到无尽的刺激与挑战。&lt;/p&gt;&lt;p&gt;2、《天龙八部2：飞龙战天》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/26/3/881125e812f0b2e26b5235a57c8ebf96.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;600&quot; height=&quot;338&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;作为一款改编自金庸武侠经典小说的游戏，《天龙八部2：飞龙战天》不仅忠实还原了原著中的经典情节和角色，还加入了大量玩法，让你在游戏中体验到乐趣。无论是追寻江湖恩怨、结识各路豪杰，还是参与精彩的武林大会，都能让你沉浸在这个神奇的世界中，尽情享受游戏的乐趣。在游戏中，你将感受到武林风云的气息，探索神秘的古墓、登上险峻的山峰，体验到无与伦比的视觉盛宴。&lt;/p&gt;&lt;p&gt;3、《天涯明月刀》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/26/7/20a2fd47bdbf3f32b697b7afda80e11f.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;600&quot; height=&quot;338&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《天涯明月刀》是一款改变了玩家对于传统武侠题材游戏认知的杰作，游戏将真实的剑法动作设计与流畅的战斗方式相结合，为玩家带来真实而激烈的战斗体验。玩家可以通过灵活的操作和精妙的技巧，展现属于自己的无敌剑法，释放出令人叹为观止的绝技，挑战强大的敌人。玩家可以自由选择自己的剧情线和任务路径，探索广阔的游戏世界。&lt;/p&gt;&lt;p&gt;4、《暗黑破坏神：不朽》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/26/8/681148da1b484ee9890afa7d08c66d99.jpeg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;600&quot; height=&quot;315&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;作为暗黑系列的续作，这款游戏不仅保留了前作的经典元素，更以其令人难以置信的故事情节，让玩家重新体验到了熟悉而又全新的恶魔狩猎之旅。玩家将面对一波又一波不断增强的敌人，直到最终击败大Boss。玩家可以根据自己的能力和策略选择不同的挑战难度，获取更为丰厚的奖励。玩家可以在多人模式下与朋友一起组队，共同探索危险的副本和战斗恶魔。&lt;/p&gt;&lt;p&gt;5、《仙境传奇》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/26/1/980b7978b953c4e6431a92378126a140.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;600&quot; height=&quot;354&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《仙境传奇》突破了传统角色扮演游戏的界限，无论是喜欢近战战斗还是远程射击，亦或是更偏向于法术释放，都能在游戏中找到最适合自己的发展路径，体验到个性化的成长乐趣。游戏的每次更新都会推出全新的剧情、任务和活动，为玩家提供了无穷无尽的探索和挑战，确保玩家能够始终保持对游戏的热情和参与度。&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p&gt;以上就是小编今天带来纯打怪掉装备的手游有哪些的全部内容了，这几款游戏都能让玩家在副本中自由的进行探索，喜欢的玩家们就赶紧点击链接来下载吧。&lt;/p&gt;'),(5,1,2,'&lt;p&gt;根据金庸经典小说改编的同名游戏《射雕》终于迎来正式上线了，一般来说游戏公测的福利是最多的，很多人也都踩着点登录服务器来玩游戏呢!那么射雕手游公测福利有哪些呢?下面就给大家详细说明一番，同时也会告知大家要怎么领取这些福利，一起来看看吧!&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/28/7/6e9a5128d4ff16badc7b3194596fc344.jpg?x-oss-process=image/watermark,image_ZnMwOC8yMDIzLzA1LzI2LzAvYmZjNTUyMjkzZGJjNmExNWY1Y2QxNTI1NzRmMzQ5MzcucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMjA=,x_40,y_30,t_75&quot; width=&quot;600&quot; height=&quot;323&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;【射雕】最新版下载&lt;/p&gt;&lt;p&gt;目前游戏已经正式上线了，大家如果喜欢这种武侠MMO游戏的话，就可以点击上方的按钮通过九游app来下载该游戏，在九游下载该游戏可以领取到平台的专属福利哦!&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/28/5/46126033f824d7334bbee3629774ddb5.jpg?x-oss-process=image/watermark,image_ZnMwOC8yMDIzLzA1LzI2LzAvYmZjNTUyMjkzZGJjNmExNWY1Y2QxNTI1NzRmMzQ5MzcucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMjA=,x_40,y_30,t_75&quot; width=&quot;600&quot; height=&quot;417&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;目前游戏的福利很多，游戏内外都是，首先是邀请好友互助领取时装的福利，只要将你的邀请码分享给5位新人好友并成功邀请就可以从全场时装中任选一款。&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/28/1/f0a75c2e7d3ddf9c0a0e8a30801df7f8.png?x-oss-process=image/watermark,image_ZnMwOC8yMDIzLzA1LzI2LzAvYmZjNTUyMjkzZGJjNmExNWY1Y2QxNTI1NzRmMzQ5MzcucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMjA=,x_40,y_30,t_75&quot; width=&quot;600&quot; height=&quot;470&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;然后是侠侍收集活动，收集卡牌便有机会得到最高5连抽。这些还都只是游戏外的福利，游戏内的福利就更丰厚了。&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/28/3/4ae503418ca0468ff1f1d1805f4359be.png?x-oss-process=image/watermark,image_ZnMwOC8yMDIzLzA1LzI2LzAvYmZjNTUyMjkzZGJjNmExNWY1Y2QxNTI1NzRmMzQ5MzcucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMjA=,x_40,y_30,t_75&quot; width=&quot;600&quot; height=&quot;384&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;首先是登录奖励，累计登录达7/14/21/28天可以得到许多稀有武学和珍品材料。游戏是支持双端的，如果你两个客户端都下载了那么还可以免费领取10连抽。&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/28/9/c766b64a7d83a1b8ce81ce6bba814bcf.png?x-oss-process=image/watermark,image_ZnMwOC8yMDIzLzA1LzI2LzAvYmZjNTUyMjkzZGJjNmExNWY1Y2QxNTI1NzRmMzQ5MzcucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMjA=,x_40,y_30,t_75&quot; width=&quot;600&quot; height=&quot;347&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;游戏中还有一个阶段性的“修行成长”活动，这个活动会一直存在知道你完成全部项目，按照活动所要求的指标去完成各项奖励就有机会得到超多的绑金。&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/28/2/2c7633554dbd9f5dd1dec9e3748f8810.png?x-oss-process=image/watermark,image_ZnMwOC8yMDIzLzA1LzI2LzAvYmZjNTUyMjkzZGJjNmExNWY1Y2QxNTI1NzRmMzQ5MzcucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMjA=,x_40,y_30,t_75&quot; width=&quot;600&quot; height=&quot;340&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p&gt;以上就是对射雕手游公测福利有哪些的详细介绍，除了上述福利活动外，射雕公测还联动了很多品牌开启了一些活动，大家感兴趣的话也可以参加一下。此外，还有一个勘寻武学活动，完成消耗魄力的挑战时会得到勤武心得，用来抽武学古本，也是新手期快速起号不能错过的。&lt;/p&gt;'),(6,1,2,'&lt;p&gt;商业都市什么角色最强?在这个游戏当中如果想要商业版图扩展的更大，得到更多的财力，那么不可避免的是需要一些强力角色的帮助的，所以小伙伴们如果知道哪些角色更加值得大家去培养，那么就能够使用这些强力的角色帮到大家更多，接下来就给大家推荐一些值得培养的角色吧。&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/27/6/34d3f36f72350090635330fccda93d23.jpg?x-oss-process=image/watermark,image_ZnMwOC8yMDIzLzA1LzI2LzAvYmZjNTUyMjkzZGJjNmExNWY1Y2QxNTI1NzRmMzQ5MzcucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMjA=,x_40,y_30,t_75&quot; width=&quot;400&quot; height=&quot;623&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;首先是灰姑娘这个角色，她的技能目前看来每一个都是非常强力的，顶级游艇俱乐部专家这个技能可以让当前所有建筑的倍数直接上涨十五倍，而且游艇俱乐部可以额外在多四倍，这是什么样一种概念可想而知，相当于所有建筑的价值都直接翻了几十倍，而且还有几率优惠10%，对于后期都是过亿的单位来说，这10%的优惠就难能可贵了。&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/27/5/66a681ebb2636693c6b89231912181dc.jpg?x-oss-process=image/watermark,image_ZnMwOC8yMDIzLzA1LzI2LzAvYmZjNTUyMjkzZGJjNmExNWY1Y2QxNTI1NzRmMzQ5MzcucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMjA=,x_40,y_30,t_75&quot; width=&quot;400&quot; height=&quot;327&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;第二个比较推荐关羽，这个角色的技能可以让高尔夫球场的倍数提升，而且还有10%的商品价格优惠，在进行战斗的时候，全能武圣的技能可以对所有的敌人都造成180%的伤害，而且开始的时候还有30%的暴击加成，伤害非常的高。&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/27/10/e8f4d18328efffbb8dadca4621e46a1f.jpg?x-oss-process=image/watermark,image_ZnMwOC8yMDIzLzA1LzI2LzAvYmZjNTUyMjkzZGJjNmExNWY1Y2QxNTI1NzRmMzQ5MzcucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMjA=,x_40,y_30,t_75&quot; width=&quot;400&quot; height=&quot;330&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;第三个推荐培养刘备，这也是一个在战力方面非常强的角色，他的技能可以对敌人造成高伤害，同时还能够对敌人添加暴击的印记，从而增强对敌人的暴击水平，对敌人的增伤效果非常的明显。&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/27/3/50f41b033d79f7a584c3514dd2b41676.jpg?x-oss-process=image/watermark,image_ZnMwOC8yMDIzLzA1LzI2LzAvYmZjNTUyMjkzZGJjNmExNWY1Y2QxNTI1NzRmMzQ5MzcucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMjA=,x_40,y_30,t_75&quot; width=&quot;400&quot; height=&quot;338&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;最后推荐张飞进行培养，这个角色拥有一个合体技能，有30%的几率发动技能，可以对敌人造成210%的伤害，这个伤害首先就很高额，可以和刘备之类的角色合体上场，可以有更好的威力发挥出来。&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/27/7/aeb4a5c8d6f2bae61400d30a9fa9bdf4.jpg?x-oss-process=image/watermark,image_ZnMwOC8yMDIzLzA1LzI2LzAvYmZjNTUyMjkzZGJjNmExNWY1Y2QxNTI1NzRmMzQ5MzcucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMjA=,x_40,y_30,t_75&quot; width=&quot;400&quot; height=&quot;623&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p&gt;现在朋友们应该清楚商业都市什么角色最强了吧，虽然说以上这些角色可能在获取上面是有一定的难度，但是以上的每一个角色能力都比较非凡，但凡获得其中一个进行培养，给到大家的助力都会非常大的，非常值得去获取。&lt;/p&gt;'),(7,1,2,'&lt;p&gt;现在很多的仙侠游戏都展现出了各自的特色，今天小编就来说一说有没有好玩的仙侠类手游推荐，这几款游戏中的每一个场景都经过精心设计，每一段音乐都能引起玩家内心深处的共鸣，使玩家沉浸其中，忘却现实的种种烦恼，尽情享受游戏带来的乐趣，感兴趣的玩家们就不妨来试试吧。&lt;/p&gt;&lt;p&gt;1、《剑踪情缘》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/26/6/873d6730d335e6e4764d323e4dbd3f9c.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;600&quot; height=&quot;347&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;在《剑踪情缘》中，玩家将踏上一段神秘而壮丽的江湖之旅，探索一个充满仙侠情怀的世界。玩家需要通过不断的修炼和历练，提升自己的实力，探寻自己的身世之谜。同时，玩家还将结识江湖人物，与之结成兄弟、挚友或是死敌，共同经历种种江湖恩怨，谱写属于自己的传奇故事。游戏中的画面效果和音乐配乐更是令人仿佛在真实的仙侠世界之中。&lt;/p&gt;&lt;p&gt;2、《三生三世十里桃花》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/26/0/4dbc09374a89e3bef64e5b777a1df2bc.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;600&quot; height=&quot;338&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《三生三世十里桃花》是一款以热门仙侠小说为背景的RPG游戏，将玩家带入了一个神奇与浪漫的仙侠世界。玩家将成为拥有超凡能力的仙族，经历一段跨越千年的爱恨情仇。玩家需要在游戏中不断成长，学习各种仙术法术，与各种神仙魔怪战斗，解开隐藏在故事背后的种种谜团。游戏还有副本、活动和社交玩法，让玩家组建公会，探索游戏世界的奥秘与乐趣。&lt;/p&gt;&lt;p&gt;3、《逍遥诀》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/26/6/d2d25ca50769481a65b7388fd6041a31.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;600&quot; height=&quot;332&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《逍遥诀》的魅力在于其深邃的世界观和独特的游戏体验，为玩家打开了一扇通往灵气奇缘的大门。在游戏中，玩家将踏上寻仙求道的旅程。从古老的村庄到神秘的仙境，从平凡的生活到修行，玩家将体验到冒险和挑战，同时也会遇到志同道合的朋友，共同探索这个充满奇迹和秘密的世界。&lt;/p&gt;&lt;p&gt;4、《凡人飞仙传》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/26/3/ca793857c1a5e53c94ae9ed6b6f7c166.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;600&quot; height=&quot;290&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《凡人飞仙传》是一款融合了仙侠与修真元素的全新游戏体验，将玩家带入一个充满神秘和奇幻的仙侠世界，让他们体验到飞升仙界的壮丽之旅。玩家怀揣着成为仙界强者的梦想，通过不断的修炼和历练，逐渐提升自己的实力，掌握各种仙术神通，最终达到飞升仙界的境界。但这并不是一条平坦的道路，玩家将面临各种各样的挑战和考验，需要有勇气和智慧去克服。&lt;/p&gt;&lt;p&gt;5、《绝世仙王》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/26/8/1ff49fb367cad00d64468c651c4b2b3e.jpeg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;600&quot; height=&quot;338&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《绝世仙王》有着仙侠世界的神秘，无论是探索古老的遗迹，还是挑战强大的敌人，都将成为你成长的契机，塑造你成为真正的绝世仙王。游戏还有社交互动功能，玩家可以与好友组队冒险，参加公会活动，甚至是举办盛大的婚礼。你是追求力量与荣耀，还是追寻真爱与友情，都将在这片神奇的土地上得以实现。&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p&gt;以上就是小编今天带来的有没有好玩的仙侠类手游推荐，在这个充满挑战和冒险的世界里，玩家将体验到无尽的乐趣和惊喜，发现自己内心深处的勇气和智慧，最终成为真正的仙界之主。&lt;/p&gt;'),(8,1,2,'&lt;p&gt;在全明星激斗这款游戏里面有着各种各样人物，这里面绝大部分的角色都可以组成一个阵型，玩家们需要利用这些角色之间的互补和羁绊才可以组合成完美的配置。那么，全明星激斗特瑞阵容怎么搭配好?特瑞是这款游戏里面非常受到玩家欢迎的一位角色。但是不少玩家对于这位角色的配队却不是很清楚。&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/28/0/7664a0a5b32031929c3cda78a68922cc.png?x-oss-process=image/watermark,image_ZnMwOC8yMDIzLzA1LzI2LzAvYmZjNTUyMjkzZGJjNmExNWY1Y2QxNTI1NzRmMzQ5MzcucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMjA=,x_40,y_30,t_75&quot; width=&quot;500&quot; height=&quot;320&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;想要使用特瑞作为主阵容，首先我们第一步需要做的，便是要了解特瑞和哪些角色是有着羁绊连锁的。目前已知的角色分别有安迪和东丈。他们两位一个是特瑞的弟弟，另一个则是特瑞的好友。两个人都可以触发和特瑞的羁绊功能，并且这两位的收集难度也不高，玩家不用担心会浪费资源。&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/28/10/f926366b2a9323baebca9d77134941eb.png?x-oss-process=image/watermark,image_ZnMwOC8yMDIzLzA1LzI2LzAvYmZjNTUyMjkzZGJjNmExNWY1Y2QxNTI1NzRmMzQ5MzcucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMjA=,x_40,y_30,t_75&quot; width=&quot;500&quot; height=&quot;358&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;接下来的位置可以选择一些防御力较高的角色。因为我们最初的这三位角色的防御力都比较一般，虽然攻击力很强，但是却不能保证生存能力。玩家们可以选择吉斯这位人物来作为伙伴，因为其本身的有着很高的减伤还有嘲讽，本身的防御和生命成长也是非常高的。非常适合最为前排来使用。&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/28/2/64ad23a98bec4bdc899834b8daa497ca.png?x-oss-process=image/watermark,image_ZnMwOC8yMDIzLzA1LzI2LzAvYmZjNTUyMjkzZGJjNmExNWY1Y2QxNTI1NzRmMzQ5MzcucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMjA=,x_40,y_30,t_75&quot; width=&quot;500&quot; height=&quot;318&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;除此以外，我们也可以选择使用大门，大门本身的输出和防御很高，而且可以和安迪形成很好的搭配。他们二位在一起的时候可以对敌人造成很高的破防打击，并且破防能力可以持续好几个回合。&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/28/1/28d427c6cd4872c50fc4acf8336109bf.png?x-oss-process=image/watermark,image_ZnMwOC8yMDIzLzA1LzI2LzAvYmZjNTUyMjkzZGJjNmExNWY1Y2QxNTI1NzRmMzQ5MzcucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMjA=,x_40,y_30,t_75&quot; width=&quot;500&quot; height=&quot;272&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;最后一个角色可以使用雅典娜，主要这位角色本身可以为自己的队友增强输出BUFF，同时还可以对玩家进行回复，是一位非常不错的辅助角色，和这个队伍搭配是没问题的。&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/28/1/504c1a1461598bdc4bc9914a6215fbbf.png?x-oss-process=image/watermark,image_ZnMwOC8yMDIzLzA1LzI2LzAvYmZjNTUyMjkzZGJjNmExNWY1Y2QxNTI1NzRmMzQ5MzcucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMjA=,x_40,y_30,t_75&quot; width=&quot;500&quot; height=&quot;363&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p&gt;上面这些便是全明星激斗特瑞阵容怎么搭配的详解。特瑞是目前主流阵容之中的一个，本身的阵容比较偏向于进攻，玩家们在使用这个阵容的时候需要注意防御和辅助，这样才可以发挥出阵容的优势。&lt;/p&gt;'),(9,1,2,'&lt;p&gt;对小编来说，做最热网络游戏排行是一件非常有趣和有意义的事情，因为这些登上排行榜的游戏可以帮助我们更好地了解游戏行业的发展趋势和玩家的需求，从而指导小伙伴们更好的选择那些受欢迎的游戏。以下是小编近期加班整理出的一份最新的2024年度游戏排行榜名单，供各位小伙伴参考下载，及时体验最火手游的乐趣。&lt;/p&gt;&lt;p&gt;1、《QQ飞车》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/26/8/d39622263b3e559307bae6086c4d2041.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;500&quot; height=&quot;277&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《QQ飞车》是一款3D赛车竞速类游戏。这款游戏极具创意地打造了澎湃竞速的内心世界，为玩家提供了独特的极速体验。游戏中简单流畅的操作技巧让每位玩家轻松上手，畅快驾驶。同时，多样的地图设定、赛道轨迹和装配设定给游戏玩家带来多种多样的游戏体验，使玩家在游戏中沉浸于极致的中国风竞速体验。游戏中秉持公平竞技的原则，让每一位玩家在平等的起跑线上，以实力、技巧和智慧去赢取属于自己的荣耀。&lt;/p&gt;&lt;p&gt;2、《节奏大师》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/22/4/e6ec730764cf67095b559896a9d12acd.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;500&quot; height=&quot;281&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《节奏大师》是一款极具挑战性和趣味性的音乐节奏手游。玩家将跟随音乐的旋律，及时操控屏幕出现的音符，奇特的游戏设定使得每关的操作顺序都不尽相同，非常考验游戏中玩家的反应协调能力。而且游戏中每通过一关，下一关的挑战难度将逐渐上升，所以玩家在游戏中可以在不断的挑战中提升自己的操作技术，锻炼自己的反应速度。&lt;/p&gt;&lt;p&gt;3、《球球大作战》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/22/7/1666fe19fb36f33e106b1dc4b356557a.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;500&quot; height=&quot;242&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《球球大作战》是一款极具创意和竞技性的多人在线手游。玩家将操控一个小球，在丰富多彩的游戏世界中通过不断吞噬其他小球来增大自身体积，进而成为霸主。游戏操作简单直观，简单滑动屏幕就能控制小球的运动。游戏中玩家需要躲避大球的攻击，同时寻找机会吞噬弱小，逐步壮大自己。游戏色彩丰富，带给玩家愉悦的视觉体验。此外，游戏还设有多种模式和丰富的社交功能，让玩家可以与好友一起组队竞技，共同体验成长的乐趣。&lt;/p&gt;&lt;p&gt;4、《第五人格》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/26/10/644b5ba6161ec7622cdc4ce2a257ba23.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;500&quot; height=&quot;265&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《第五人格》是一款独特的多人在线对战手游，融合了推理、角色扮演和生存逃脱等多种元素。游戏的风格独特，营造了一个悬疑又充满个性张力的奇妙世界。玩家将扮演神秘的侦探，在幽暗神秘的庄园中调查一桩失踪案，通过搜寻线索和推理案情，逐步挖掘事件背后的真相。游戏独特的竞技模式能给玩家带来非常紧张刺激的追逐对战玩法，同时也考验玩家的团队协作能力和策略智慧。此外，游戏中的角色设定独特而丰富，每个角色都拥有各自鲜明的个性和技能特点，增加了游戏的多样性和可玩性。&lt;/p&gt;&lt;p&gt;5、《咸鱼之王》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/25/8/a05bdccdb04a784edde3c157c6ca3244.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;500&quot; height=&quot;294&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《咸鱼之王》是一款非常有趣的休闲游戏，玩家需要不断合成升级自己的咸鱼，组成强大的战队，接受各种关卡的考验。游戏的玩法非常丰富多样，不仅有主线剧情，还有各种副本、活动。从而让玩家的角色能够不断成长，变得更加强大。此外，游戏中还有很多社交互动的玩法，玩家与玩家之间可以自由组队、交流游戏玩法，极大的增加了游戏的乐趣和互动性。&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p&gt;以上就是小编推荐的五款最热网络游戏排行的游戏，这些游戏都拥有广大游戏用户，受到许多游戏玩家的喜欢，相信你也在其中找到了自己喜欢的一款，那抓紧下载体验吧。&lt;/p&gt;'),(10,1,2,'&lt;p&gt;SNK这家公司制作了很多脍炙人口的游戏，不少玩家对于这家公司的游戏都是赞不绝口。近期一款将SNK角色齐聚一堂的游戏作品登场，这款游戏便是全明星激斗。很多玩家都在询问全明星激斗下载链接在哪，很多玩家在看到这款游戏之后都想马上就可以玩到，但可惜是找不到下载地址。&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/28/2/52c8fc61fa97a415cc319e3a576fa5bd.png?x-oss-process=image/watermark,image_ZnMwOC8yMDIzLzA1LzI2LzAvYmZjNTUyMjkzZGJjNmExNWY1Y2QxNTI1NzRmMzQ5MzcucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMjA=,x_40,y_30,t_75&quot; width=&quot;500&quot; height=&quot;333&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;【全明星激斗】最新版预约/下载&lt;/p&gt;&lt;p&gt;这款游戏虽然之前有进行过测试，但是内测已经在不久之前就结束了。官方也没有透露关于这款游戏的具体公测时间。大家先点击上方的按钮进行预约，在预约之后便可以在第一时间内获取到游戏的最新测试情报。&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/28/0/24d53ef1e22c92a7758f2b88db86c568.png?x-oss-process=image/watermark,image_ZnMwOC8yMDIzLzA1LzI2LzAvYmZjNTUyMjkzZGJjNmExNWY1Y2QxNTI1NzRmMzQ5MzcucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMjA=,x_40,y_30,t_75&quot; width=&quot;500&quot; height=&quot;282&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;全明星激动这款游戏的模式是以半回合制为主。玩家们需要收集各类人物来进行编组。在编组完成之后，我们便可以进行战斗了。玩家们在游戏类所收集的角色每一位都有着不同的能力，我们需要将这些角色进行合理的搭配才可以。&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/28/1/84ac430f53c8d78b81aa22dccc76d46a.png?x-oss-process=image/watermark,image_ZnMwOC8yMDIzLzA1LzI2LzAvYmZjNTUyMjkzZGJjNmExNWY1Y2QxNTI1NzRmMzQ5MzcucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMjA=,x_40,y_30,t_75&quot; width=&quot;500&quot; height=&quot;241&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;游戏之中我们所遇到的绝大部分角色都是来自KOF的，他们每一位都有着不同的能力，并且还有着不同的连锁羁绊，前期系统会送玩家们一些人物，这些角色之间是有着不错的连锁，玩家们可以酌情上阵。&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/28/5/bcc6d50713467d15f76a6665fec0cd02.png?x-oss-process=image/watermark,image_ZnMwOC8yMDIzLzA1LzI2LzAvYmZjNTUyMjkzZGJjNmExNWY1Y2QxNTI1NzRmMzQ5MzcucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMjA=,x_40,y_30,t_75&quot; width=&quot;500&quot; height=&quot;198&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;游戏里面的角色我们是可以进行强化的，玩家们前期可以去经验本刷取经验药水然后快速的提升人物的等级。在人物等级达到上限之后，我们便可以去收集突破的材料来将人物突破。&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/28/9/4ada1ea3c9767ed9a25b7047a1301810.png?x-oss-process=image/watermark,image_ZnMwOC8yMDIzLzA1LzI2LzAvYmZjNTUyMjkzZGJjNmExNWY1Y2QxNTI1NzRmMzQ5MzcucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMjA=,x_40,y_30,t_75&quot; width=&quot;500&quot; height=&quot;320&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p&gt;上面这些便是关于全明星激斗下载的详细说明，这款游戏的可玩性是非常不错的。同时游戏的画风也符合玩家们对于SNK人物的审美，总体来说这是一款非常不错的游戏，快预约起来吧。&lt;/p&gt;'),(11,1,2,'&lt;p&gt;很多玩家们最喜欢做的就是重温自己的童年，享受那种纯粹的快乐。这一期就为玩家介绍的是小时候玩的多人游戏有哪些 \r\n，下面要的都是会让玩家感到休闲而又放松的游戏，它们都有着熟悉的背景音乐和好看的画面，无论您是希望重温儿时回忆的玩家，或是让家中的孩子也来体验其中的乐趣，来玩这些游戏都是一种不错的选择。&lt;/p&gt;&lt;p&gt;1、《童年飞行棋》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/25/0/229119406_79cd12b030ce09ce0e120464ffc34d28.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;500&quot; height=&quot;889&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;其实这款游戏真的没有太多的介绍的必要，因为飞行棋是大多数70后，80后玩家必玩的一款游戏。这款游戏把飞行棋的所有玩法都集中在了手机当中。游戏是以二次元风格出现的，虽然游戏画面算不上精致，但也正是因为这种粗糙的设计，才能够更加的勾起玩家们儿时的回忆，游戏的操作系统也是极其简单的可以让玩家快速的掌握怎样去玩儿这款游戏。&lt;/p&gt;&lt;p&gt;2、《贪吃蛇大作战》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://media.9game.cn/gamebase/2024/1/29/26bc781f0bb17adfc36117a26fd06878.jpg?x-oss-process=image/resize,h_800,m_lfit&quot; width=&quot;500&quot; height=&quot;571&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《贪吃蛇大作战》，是一款能让所有人都充分展现自己能力的竞技游戏。这款游戏的画风，也不再是之前玩家看到过那种老式的二维动画，这款游戏里的贪吃蛇变得更加的可爱，游戏画面也变得更加的Q萌，游戏里甚至还加入了很多有趣的皮肤，比如搞笑的鸭子脑袋，毛毛虫的造型，只要玩家得到足够的奖励。就可以随心所欲的去选择这些造型。&lt;/p&gt;&lt;p&gt;3、《单机泡泡龙》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/28/2/115_3e727501c923aa48355eb38f24eaebc6.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;500&quot; height=&quot;750&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《泡泡龙》是一款适合所有年龄段的休闲类游戏，该游戏在保持原有游戏风格的基础上，在本游戏的画面和可玩性上也得到了全方位的提升。您可以在此游戏中感受奇妙的水下世界，与美人鱼展开探险去拯救海洋生命!该游戏的特点是创造了不一样的辅助工具，可以让玩家去挑战更高的得分，游戏的玩法也变得更加多样化!&lt;/p&gt;&lt;p&gt;4、《罗斯方块》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/12/4/115_c5d16adc2bb9f772ecaf66d445134e1d.JPEG?x-oss-process=image/resize,h_800,m_lfit&quot; width=&quot;500&quot; height=&quot;750&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;大多数玩家小时候都很喜欢这款休闲益智的消除游戏，在罗斯方块里，玩家要做的就是控制好自己的积木，然后把它们放进格子里。只要把每一层格子填满，整个格子就会被抹去，这是玩家的终极目标，玩家在游戏中要做的就是不停的刷分，一直刷到最后，成为现实世界中俄罗斯方块的王者，这款手游高度的还原了我们小时候在游戏机上玩的俄罗斯方块儿的所有元素。&lt;/p&gt;&lt;p&gt;5、《三国战纪2》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2022/05/30/8/115_02cb477079fea214fc40ac9950e633ac.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;500&quot; height=&quot;333&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;不得不说这款三国战纪2，被移植到手机上以来，还是受到了很多喜欢玩街机朋友的热爱。在这款游戏，玩家几乎可以选择您所知道的所有的三国猛将的特殊技能都是不一样的，关羽的旋风圆月弯刀，张飞的致命丈八蛇矛，这些画面一旦出现，也就预示着周围的敌人会倒下一片，玩这款朋友的玩家一定会想起快乐的童年。&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p&gt;看了小时候玩的多人游戏有哪些这期内容，请您相信，小编推荐的这些游戏都不难上手，只要玩家们保持轻松的心态就可可以轻松的拿捏这些游戏。上面这些游戏无论是通关类的游戏或是养成类的游戏，亦或是棋类游戏都会让您感到快乐。&lt;/p&gt;'),(12,1,2,'&lt;p&gt;现在人们的出行交通基本上都是离不开汽车了，也是人们的必备交通工具，那么今天小编就为大家带来了模拟新手开车游戏有哪些，在这些游戏中，大家不仅可以锻炼自己的开车技术，还可以帮助大家学习到一些交规，并且也有一些比较刺激的飙车玩法哦，甚至还能够帮助大家提升反应能力呢，下面就一起来看看2024有趣的开车游戏排行榜分享吧。&lt;/p&gt;&lt;p&gt;1、《开车和停车》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/23/8/6e3d2ec4d97a60ad5a5bcfb0040f9d9f.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;600&quot; height=&quot;294&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《开车和停车》这款游戏可以让你驾驶一辆小汽车在城市中自由的驾驶，当然你需要遵守交规哦，游戏中还会为你提供一些停车的任务，想要将车停好完成任务也不是那么简单的，对于新手也更是难上加难，首先你需要观察哪些车位比较好停车，再慢慢的侧方位停车或者倒车入库，非常考验大家的停车与开车技术哦。&lt;/p&gt;&lt;p&gt;2、《真实驾驶》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/23/5/a640e444b5c759509d5ed0da724eaacc.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;600&quot; height=&quot;400&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《真实驾驶》这款游戏完成模拟了手动挡的开车技巧，新手前期想要上路得先学会踩离合，挂挡等等，在游戏中，你还需要遵守交规，如果不按指定车道行驶还会被交警处罚哦。游戏中你还可以切换两个视角，一个是车内第一人才视角和车外第三人称视角，可以让你更方便的观察路况。&lt;/p&gt;&lt;p&gt;3、《卡车模拟驾驶》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/23/1/d823754c583e3969631195770c0b1f51.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;598&quot; height=&quot;448&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《卡车模拟驾驶》这款游戏是让大家驾驶一辆大卡车行驶哦，想必大家应该都知道驾驶卡车的技术含量会更高，也会更难，那么在这款游戏中就可以让你提前多练习练习，感受驾驶卡车的视角。游戏中会给玩家提供一系列的任务，你需要领取任务将指定的货物运送到指定的地点才行，有些路程会是非常崎岖的，大家要小心驾驶哦。&lt;/p&gt;&lt;p&gt;4、《模拟驾驶停车》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/23/9/d53bf33e9626a64ac78f83ca890b2af6.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;596&quot; height=&quot;397&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《模拟驾驶停车》这款游戏在停车方面更加突出，他会更加考验大家的停车技巧，并且还会模拟现实中前后都有车的情况让你进行侧方位停车，有些时候还会给你增加难度。当然，你还可以驾驶汽车在公路上行驶，城市道路中还会有其他的车流哦，千万不要撞到或是追尾其他的车辆啦。&lt;/p&gt;&lt;p&gt;在大家对开车有一定的熟练程度之后，不妨来试试下面这款游戏，他可以让你们就尽情的飙车，感受更高级更复杂的开车技巧哦。&lt;/p&gt;&lt;p&gt;5、《QQ飞车》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/23/8/11f97f5202acbb2a36bff4ddcd3329f9.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;600&quot; height=&quot;338&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《QQ飞车》这款游戏比起上面三款游戏来就会比较偏向娱乐休闲性了，在这里你可以尽情的飙车，漂移，在游戏中体验速度与激情，游戏中的地图很多，各式各样的都有，还要时不时的举办比赛呢，你可以和全国的玩家一起比较飞车技术，游戏中还会有一些驾车技巧，比如二段飘，落地喷等等，等着你来一一尝试哦。&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p&gt;以上就是本期小编给大家带来的关于模拟新手开车游戏有哪些2024有趣的开车游戏排行榜分享的全部内容了，新手上路刚开始总是会非常紧张的，那么不妨先来游戏中壮壮胆，练习一下开车技术，也会感到更加有趣哦，甚至还可以在游戏中进行飙车呢，快去下载试试吧。&lt;/p&gt;'),(13,1,2,'&lt;p&gt;多人生存射击游戏大全你知道吗?射击类型的游戏是更多小伙伴所喜欢的类型，其实射击类型游戏不仅仅有着很好的刺激性，还能够给更多的玩家带来前所未有的体验，好玩的多人生存射击游戏大全已经成为大家所关注的了，小编列举的这几款游戏不仅仅画面感很清晰，在玩的方法上也是特别刺激的，一起来了解一下。&lt;/p&gt;&lt;p&gt;1、《求生之战》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2022/05/27/1/115_f1297e41dc039dec00c979f858724f70.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;500&quot; height=&quot;333&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;采取废弃的城市，作为游戏的地图背景，在城市的各个领域中，要不断的去寻找道具武器，还要注意躲闪。迎面来的丧尸可以利用的道具比较多，比如：手榴弹、火箭筒等。对抗来吃人的可怕，怪物确实需要一定的策略，别以为丧失就是游戏当中的唯一威胁，其实还是资源缺乏争夺，很激烈的对方想要和其他玩家争夺更稀有的物品和领地，肯定就需要掌握一定的策略，需要和其他人合作才能够取得胜利。&lt;/p&gt;&lt;p&gt;2、《荒野行动》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/26/1/12c3599dd278ac5db82cbe4adb7ef71b.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;600&quot; height=&quot;333&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《荒野行动》当中你会在无人岛上想要生存下去，肯定需要掌握一些技能，你可以和其他的玩家共同的去对战，现在可以选择各种类型的武器以及道具，只要活下来就需在安全的区域当中去不断的探索，找到地球中的各种方法来提升自己武器的等级，毕竟激烈的枪战只有武器足够强大，才能够去战胜对手，当然该游戏还提供了更多的车辆，任由你去选择。&lt;/p&gt;&lt;p&gt;3、《火线出击》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/26/8/b85c57a6e45546f34502834313d8b128.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;600&quot; height=&quot;292&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《火线出击》当中你扮演的是精英特战士。接受了不同类型的战斗任务是相当适宜的和玩家组队对战，通过精准的设计以及战略的运用，才能够将敌人击败。游戏的画面感阵时很逼真，仿佛身临其境，还可以选择真实的战斗场景，在游戏的街道到沙漠当中每一各场景都已经展现出了游戏中战争的残酷，真是值得考验。游戏中的武器也比较多样化，步枪、机枪、手枪等各种枪械都任你选择，每一发子弹都要发挥他们更大的威力才行。&lt;/p&gt;&lt;p&gt;4、《像素危城》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/03/26/3/c551b33ef0aa104ea74cfdda78537346.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75&quot; width=&quot;600&quot; height=&quot;291&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;《像素危城》是一款可以有着割草玩法乐趣的生存作品，游戏当中的食物、资源等都比较好获得，前期发展的难度比较大，但引导做的好是让多玩家在初期进入游戏当中就能够很容易的上手，并且能解锁更多的玩法，在这个方面有更多的怪物，但要对付他们就要选择更好的武器，这样在刷怪的时候才能够感觉特别的爽快。&lt;/p&gt;&lt;p&gt;5、《创造吧!我们的星球》&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;center&gt;&lt;img alt=&quot;&quot; src=&quot;https://android-imgs.25pp.com/fs08/2024/02/20/10/115_868ac09f7103cd493012f34133f9c1ec.JPEG?x-oss-process=image/resize,w_480,m_lfit&quot; width=&quot;500&quot; height=&quot;333&quot;&gt;&lt;/center&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;想要体会一下太空星球为主题的生存玩法吗?《创造吧!我们的星球》值得你去玩，星球设计的时候特别的完善，不仅仅有着别致的动物、植物，还精心地为每一片区域构建了和谐的生态环境，让星球的每一种地形都变得更加独特，充满着科技感的设计，真是很养眼。在这款游戏当中，你可以去采集更多种的枪械，然后将资源收集很新颖、充满乐趣的一款手游。&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p&gt;好玩的多人生存射击游戏在上面已经为大家做了详细的介绍，这几款游戏的玩法特别的精致，还能带来更不错的体验，如果你也想玩一玩这些游戏，那么赶快来尝试一下吧，相信在设计的过程中也能有着更不错的体验呢。&lt;/p&gt;'),(126,1,3,'\n              \n              <p><p>现如今人们的兴趣爱好越来越广泛，用于生活越来越丰富，有不少人喜欢在线上进行象棋游戏，那么哪些软件更适合玩象棋更好玩呢？所以今天小编为大家带来好玩的象棋棋谱app有哪些，给大家推荐几款免费好玩的下象棋的软件，让用户的日常生活更丰富多彩在线上足不出户，就可以娱乐自己的生活。</p><p>1、《王者象棋》</p><p>这个软件是一款讲究策略方法的象棋游戏，软件内设置了多种玩法，不仅可以与电脑联机对战还可以一在线好友进行对弈，各种象棋玩法等你来体验。另外还可以在大师下象棋时进行观看，学到更多的下象棋策略方法。可以与软件内的好友进行互动，交流对棋局的理解与感受，协调作战让棋局比赛共欢乐有趣实施互动。为游戏增加了更多的乐趣。软件的象棋布局高度还原真实场景，致力于为广大其有还原最逼真的对弈感。</p><p><img width=\"550\" height=\"977\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/8/115_63a474bd9c686a6acb95384afc8cf4e9.JPEG?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>2、《永乐象棋棋谱》</p><p>这个软件有多种象棋对弈模式，多种棋谱解说说明，畅所欲言欢快对战，分类齐全，满足多层次的棋友不同需求，全新升级的软件功能丰富模式多样好玩，并且占用内存小流畅不卡顿，带给用户更愉快的游戏体验。还有更多新鲜赛事玩法赶紧来体验一下吧。</p><p><img width=\"550\" height=\"916\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/3/115_974522930e9caea8b11ff796d9d346c4.JPEG?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>3、《中国象棋大师》</p><p>这个软件是一款专业的中国象棋助手，专门为喜欢象棋的用户伙伴们开发的线上游戏平台，致力于发扬光大传承中国象棋文化，丰富娱乐广泛的棋艺活动，不仅可以在线对战下象棋，新入门的初学者还可以观看有关象棋策略的视频进行了解学习。还可以欣赏大师级别的实力对战，从中吸取更多知识，还有各种象棋图文教程教学，让用户从更深层面的了解象棋，掌握更多玩法。</p><p><img width=\"550\" height=\"977\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/8/115_b4c7966d3f9485d37804e0bec843c675.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>4、《中国经典象棋》</p><p>这个软件为更多热爱象棋的用户们提供更多的下象棋教程，包含各种技巧攻略，残局解析，向用户展示棋局，详细精解棋谱。更方便用户的充分了解与掌握，应用内包含许多的详细视频解说，让用户看得更津津有味，充分感受下象棋的精妙之处。观看视频教学内容，为用户打下坚实的基本功。</p><p><img width=\"550\" height=\"977\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/8/115_97e4649a75fb9cc88426aabc84bcf252.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>5、《畅玩吧》</p><p>这个软件不仅可以下象棋还可以与好友玩其他更有意思的小游戏，专门为游戏玩家打造游戏平台，免费为用户提供各大游戏礼包等等超多游戏福利资源，热门游戏应有尽有，还有游戏账号交易服务，安全有保障。</p><p><img width=\"550\" height=\"916\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/5/115_c990bfd3d43d1f3279c0e9f91d2e73d2.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>以上就是关于好玩的象棋软件有哪些的全部内容了，这些软件可以让用户在线上充分感受到下象棋的乐趣，满足象棋热爱者的不同需求，感兴趣的用户们抓紧到豌豆荚平台上下载以上几款软件吧。</p></p>\n              \n'),(127,1,3,'\n              \n              <p><p><span>英语是非常重要的一门学科，从小学阶段就开始学习英语，在这个阶段一定要打好基础。才能在高中或者初中的时候英语功课不会被落下，那么同步学英语app下载小学阶段的有哪些。很多家长都想了解一下，选择相关的软件下载到手机上，辅助自己来帮助孩子提高英语成绩。</span></p><p><span>1、《点学英语》</span></p><p><span>这款软件受到了很多家长的认可，拥有很多的功能，比如名人演讲、听力练习等等全方位，来帮你提高英语成绩，有需要的家长可详细的了解这款软件。</span></p><p><img width=\"406\" height=\"684\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/0/d1a436a5c506a9fa3c082b56b2192071.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"点学英语\"  data-wdj-app-id=\"8177126\" data-packagename=\"com.android.dxyy\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>2、《可可英语》</span></p><p><span>这是一款年轻人非常认可的学习英语平台，从听、说、读、写多个方面来提高孩子的英语学习能力，通过精彩的视频解析能够更深入的了解英语的学法方法。</span></p><p><img width=\"406\" height=\"652\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/11/bf3074523be86749dca7befe44dfc2ea.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"可可英语\"  data-wdj-app-id=\"50791\" data-packagename=\"com.kekeclient_\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>3、《小学英语辅导》</span></p><p><span>这是一款非常受欢迎的英语辅导软件，与课堂教材同步，涵盖了孩子课前的预习内容，同时也有课后的复习，全方面的提高英语成绩。</span></p><p><img width=\"550\" height=\"330\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/1/1bcc1acbd22cc0ae7ecac7328c703cd5.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"小学英语辅导\"  data-wdj-app-id=\"8044764\" data-packagename=\"com.zhihui.english\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>4、《流利说-英语》</span></p><p><span>在该软件上学习英语，能让你情不自禁的张口说英语，并且还有有趣的配音课程，大量的学习素材，都可辅助用户更好的学习英语。</span></p><p><img width=\"400\" height=\"668\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/2/1c2c26d6e9ada9f5e170c7e283d8e560.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"流利说-英语\"  data-wdj-app-id=\"1535627\" data-packagename=\"com.liulishuo.engzo\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>5、《英语语法精讲》</span></p><p><span>目前选择这款软件的用户人数已超百万，即使零基础入门也没有关系，能够轻松地帮助你攻克在学英语过程中所存在的难题。</span></p><p><img width=\"406\" height=\"665\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/5/1137271a2f0b6a459211446b2042c2e4.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"英语语法精讲\"  data-wdj-app-id=\"7682443\" data-packagename=\"com.qilesoft.en.grammar\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>6、《墨墨背单词》</span></p><p><span>有很多学生在学习英语中都会出现记不住单词的困扰，到这款软件上来记忆比较简单，通过各种有趣的方式能够加深英语单词在脑海里的印象。</span></p><p><img width=\"425\" height=\"666\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/10/861a748615284c8a045d9edcb43ad04d.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"墨墨背单词\"  data-wdj-app-id=\"6700169\" data-packagename=\"com.maimemo.android.momo\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>7、《三年级英语下册》</span></p><p><span>如果家里有三年级的学生，就可下载这款软件，涵盖了三年级学习的重点、难点，还有视频讲解等，要想让英语学习变得更简单，就可选择这款软件。</span></p><p><img width=\"422\" height=\"608\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/11/ce1f869947f4b7577e89177b873a03f8.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"三年级英语下册\"  data-wdj-app-id=\"7686645\" data-packagename=\"com.msw0573.fvq\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>8、《喵喵少儿英语》</span></p><p><span>如果孩子还没有上学，但想让孩子提前学习一些英语，就可选择这款软件，通过听、说、读三方面来培养孩子的说英语能力，能更好的接轨小学。</span></p><p><img width=\"402\" height=\"639\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/7/7cb09e74a37727526835fd6e45818d23.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"喵喵少儿英语\"  data-wdj-app-id=\"8112513\" data-packagename=\"com.tenbillionbyte.catenglish\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>9、《E英语宝》</span></p><p><span>在这款软件上有大量的学习资源，能够满足不同人群在学英语时的需求，拥有纯正的发音以及原版配套视频，可以逐句逐词的来练习。</span></p><p><img width=\"400\" height=\"680\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/2/c809558b611cb08b2837a75811f48878.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"E英语宝\"  data-wdj-app-id=\"7579290\" data-packagename=\"com.dinoenglish.yyb\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>10、《每日英语阅读》</span></p><p><span>到这款软件上来学习英语也是非常不错的，拥有背单词、词典、翻译、日记等等多种功能，可以免费学习所有的内容，为用户打造个性化学习方案，全方位的来提高学英语的能力。</span></p><p><img width=\"401\" height=\"668\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/9/0ddffb0f9ff812032f8b872ade06a9ae.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"每日英语阅读\"  data-wdj-app-id=\"6216084\" data-packagename=\"lexue.mryyyd\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>如果还有的家长不了解同步学英语app下载小学阶段的有哪些，以上的这些app都能够帮助家里的孩子来学习英语，即使是零基础也没有关系，让你快速的掌握学习英语的方式和方法，提高英语成绩。</span></p></p>\n              \n'),(128,1,3,'\n              \n              <p><p><span>随着时代的发达，我们国家的文化也走出了国门，有很多国外人士对汉语比较感兴趣，想要学习说汉语，那么除了有专业的汉语课程以外，在私下也可通过一些软件来学汉语。目前外国人学汉语的app有哪些?选择相应的app下载到手机上，每天只需要半个小时的时间，到软件上来学习就可以。</span></p><p><span>1、《现代汉语词典》</span></p><p><span>该软件的应用面非常广，一直以来受到的好评度非常高，汇聚了现代汉语普通话语音规范、以及汉字规范和词汇规范的主要内容，推广普通话，促进汉语规范。添加了真人发音标准、笔画易错字词、分类词汇等等多方面的功能，从方方面面来帮助大家规范汉字的读法和写法。</span></p><p><img width=\"417\" height=\"647\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/10/ec9fb18efe4944dc23f9ed9568c70c8b.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"现代汉语词典\"  data-wdj-app-id=\"8051279\" data-packagename=\"cn.dictcn.android.digitize.swg_xdhycd_21004\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>2、《网易蜗牛读书》</span></p><p><span>这款软件已经获得了5星好评，汇聚了4万多本经典好书，还有一些热门推荐的书籍，想要学习汉语，每天到这款软件上来读一个小时就能够认识更多的汉字，并且也能发标准的音。同时也能对中国文化有更深入的了解，用户可根据自己的需求来自定义设置字体、翻页方式，很适合要加深汉语水平的国外人士使用。</span></p><p><img width=\"406\" height=\"674\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/11/d617bb47a01c07cfb0f58395f02e7a35.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"网易蜗牛读书\"  data-wdj-app-id=\"7590820\" data-packagename=\"com.netease.snailread\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>3、《抖音》</span></p><p><span>作为一款记录生活的软件，功能是非常齐全的，而且在这款软件上也汇聚了各种有才华的人士，也有很多老师会在这款软件上以视频的方式开设课程，来帮助大家提高自己所欠缺的学习内容，也有一些是专门针对想要学习汉语的老外提供的视频，可以跟着这些视频来学习。</span></p><p><img width=\"402\" height=\"674\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/7/0ca67939e159a6fafac86453505f8598.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"抖音\"  data-wdj-app-id=\"7461948\" data-packagename=\"com.ss.android.ugc.aweme\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>4、《句读》</span></p><p><span>想要领略文字的美，感受到中国文字的意味深长，选择这款软件绝对不会让你失望，汇聚了众多知名作家，拥有非常直击内心的语句，也有非常激情豪迈的语句，通过这些精美的语句来更深入的了解中文。</span></p><p><img width=\"422\" height=\"659\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/2/490fc2050b411665d7c71d80a7125035.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"句读\"  data-wdj-app-id=\"7725798\" data-packagename=\"tech.caicheng.judourili\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>5、《国学启蒙》</span></p><p><span>很多老外对这款软件的评价比较高，因为这是一款为热爱成语的人群打造的软件，拥有众多成语，掌握了这些成语的意义和读法，也能让你出口成章。每个成语都有详细的释义，拼音、例句等等，完全不用担心不会读，只有理解了它的释义，才能加深印象，应用到合适的聊天中。</span></p><p><img width=\"416\" height=\"688\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/4/7b5a531a84376600a457fef72713e2bc.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"国学启蒙\"  data-wdj-app-id=\"8370004\" data-packagename=\"cn.weilaihongtech.gxqm\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>6、《拼音发音点读》</span></p><p><span>学好中文拼音是基础，一定要打好基础，后期的学习才会更轻松一些，所以老外在刚刚学习中文的时候，一定要选择这款软件来学习拼音，主要的功能是点击拼音字母就会发出标准的读音跟着读。还会有拼音字母表分类，让你很快的进入到学习状态中。</span></p><p><img width=\"400\" height=\"642\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/3/1a8d5412b273e7bbba51d2e8a1605944.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"拼音发音点读\"  data-wdj-app-id=\"8364173\" data-packagename=\"com.keleexuexi.pinyin\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>如果您还不知道外国人学汉语的app有哪些，以上的这几款app都是非常不错的，即使是没有任何汉语基础，可以跟着从最基本的拼音发音来学习，快速的掌握学习汉语的一些技巧和方式，来提高自己的学习能力。</span></p></p>\n              \n'),(129,1,3,'\n              \n              <p><p><span>完美婚姻的定式是一部非常好看的韩剧，深受韩国观众的好评，这部电视剧在我国也比较受欢迎，通过节目也可以了解韩国人对待婚姻的观念。目前完美婚姻的定式在哪个app看?很多热爱看韩剧的小伙伴都想下载到手机上，方便日常来追剧，尤其是业余时间比较充足的人群很适合。</span></p><p><span>1、《追剧喵》</span></p><p><span>作为在当下非常受欢迎的一款影视资讯软件，用该软件来追剧非常方便，汇聚了海量的影视内容，在这款软件上追剧，也能为你带来不错的观看体验。</span></p><p><img width=\"400\" height=\"645\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/2/6cba32f5037214405c9d694e78ecb65e.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"追剧喵\"  data-wdj-app-id=\"8393500\" data-packagename=\"com.lhzpst.zjmtp\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>2、《韩剧大全》</span></p><p><span>想要看哪种风格的韩剧都可在该软件上来查找，还可看韩国的综艺节目以及电影。观看过程中没有广告的打扰，所有的作品都可免费看。</span></p><p><img width=\"421\" height=\"675\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/7/16c21c0d93a3d0d6af40707c9745cb1c.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"韩剧大全\"  data-wdj-app-id=\"\" data-packagename=\"\" data-has-pkg=\"\"></div></span></p><p><span>3、《优酷视频》</span></p><p><span>有了这款软件，可以满足大家追各种影视节目的需求，无论是古装剧还是爱情剧，只要搜索就能看到，该软件也在不断的更新，还添加了很多的功能，</span></p><p><img width=\"404\" height=\"591\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/7/212e6d80531c238befba75df818a0a7c.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"优酷视频\"  data-wdj-app-id=\"2398055\" data-packagename=\"com.youku.phone\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>4、《影视乐》</span></p><p><span>在手机上下载这款软件，可看各种类型的节目，可一键轻松连接电视，通过手机与电视连接到一起，观看更方便，而且也能带来不错的观看体验。</span></p><p><img width=\"400\" height=\"694\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/10/72ef10df8a57ee6cdcd9d2f96263bffa.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"影视乐\"  data-wdj-app-id=\"8388739\" data-packagename=\"con.wpfysljk.jkystp\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>5、《今日影视》</span></p><p><span>在这款软件上汇聚了当下热门的综艺节目以及电视剧，如果想看韩剧、日剧等多种海外的影视节目都能满足，高清流畅不易出现卡顿，推出的热播影视也会第一时间通知。</span></p><p><img width=\"405\" height=\"691\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/8/e20e77edc85f98dfb8d0e87ff1e34178.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"今日影视\"  data-wdj-app-id=\"7661004\" data-packagename=\"com.now.video\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>6、《七七影视》</span></p><p><span>想要看到各种精彩有趣的节目，一定要选择这款软件，无论是电影、电视剧还是视频以及美剧、韩剧都可免费看，为用户带来非常不错的追剧体验，支持多种格式的播放。</span></p><p><img width=\"401\" height=\"607\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/5/bdc80986798ed8bc8d611bb36942ddfa.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"七七影视\"  data-wdj-app-id=\"8390214\" data-packagename=\"luihg.uyijb.erm\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>7、《趣看影视》</span></p><p><span>作为一款在当下非常受欢迎的影视鉴赏软件，拥有海量的视频可免费看，根据自己的需求来选择比较好看的节目，同时也可了解更多话题热剧。</span></p><p><img width=\"401\" height=\"680\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/2/688fd37549f6f76a729fb86c0f2b78d5.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"趣看影视\"  data-wdj-app-id=\"8390113\" data-packagename=\"cszy.qkys.uhgd\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>8、《爱奇艺》</span></p><p><span>使用该软件来追剧的用户高达千万，足以看出这款软件的受欢迎度是非常高的，拥有各种好看的影视节目，也可将自己比较喜欢看的节目下载到手机上，方便在离线状态下看。</span></p><p><img width=\"401\" height=\"656\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/1/946203382c845182e49d07d8d5468765.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"爱奇艺\"  data-wdj-app-id=\"28855\" data-packagename=\"com.qiyi.video\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>9、《快手》</span></p><p><span>该软件上不同风格的视频种类非常多，还有一些很喜欢剪辑人群剪辑的电视剧的视频，只需要搜索相应的名字，就会为您推送出很多剪辑高手剪辑的节目。</span></p><p><img width=\"402\" height=\"706\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/9/7e0f0067f414d7260ba826c93bff231b.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"快手\"  data-wdj-app-id=\"280621\" data-packagename=\"com.smile.gifmaker\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>10、《追剧影视大全》</span></p><p><span>拥有这一款软件，能够满足大多数人的看电视需求，拥有当下热门的综艺，还有火热的影视作品、人气动漫，还可看海外的节目，为用户带来非常不错的观看体验。</span></p><p><img width=\"402\" height=\"665\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/3/760f96fe0ccc6a0ea1faff032046bc4d.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"追剧影视大全\"  data-wdj-app-id=\"8326141\" data-packagename=\"com.follow.video\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>以上介绍了完美婚姻的定式在哪个app看，这几款app相信有很多小伙伴都比较熟悉，不仅可看韩剧也可看国内的作品。下载一款到手机上，无聊的时候通过追剧的方式来打发时间也是很不错的。</span></p></p>\n              \n'),(130,1,3,'\n              \n              <p><p>锁屏软件是手机上不可缺少的，在每次停止使用手机的时候，都需要通过锁屏软件来快速的锁住，以免不小心拨出去电话或者是点开网页耗费流量，那么好用的应用锁屏软件有哪些？选择一款好用的锁屏软件。操作起来既轻松又简单，而且也可以减少不锁屏时给自己带来的困扰。</p><p>1、《引力锁屏》</p><p>这款软件的使用方式比较简单，能够快速地帮手机锁屏，代替了传统电源锁屏的方式，但是也拥有多种功能，支持倒立、口袋、横向以及双击屏幕等等锁屏方式。由于该软件支持多场景自定义锁屏，所以深得广大用户的好评，在手机上下载这款软件，再也不用担心忘记手机锁屏，拨出电话等等一系列的行为了。</p><p><img width=\"400\" height=\"678\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/11/24521e0da2633fe09d6ad4f390f9a14f.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>2、《橙色一键锁屏》</p><p>这款软件在最大的优势就是占用的内存空间比较小，能够一键快速的锁屏，提高锁屏的效率，拥有多种样式的锁屏方式，操作比较简单，即使是上了年纪的人群也可使用，适用于多个机型，橙色的主题为用户带来非常清新醒目的好感。</p><p><img width=\"418\" height=\"626\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/0/f8dcf3664f73643054b94f24311ea968.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>3、《人脸应用锁》</p><p>有了这款软件让锁屏更加的简单，使用之前要先做一下设置，就可以通过自己的人脸识别来解锁屏，让您的手机更多了一层防护，当然这款软件不仅支持人脸锁屏，还支持指纹、密码等多种方式的锁屏，为了让用户使用的更得心应手，不断的优化，提升了很多的细节。</p><p><img width=\"402\" height=\"646\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/1/ad2e4de1eb7f0762d2272a0c1e316e41.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>4、《布丁锁屏》</p><p>该软件深受年轻人的喜爱，可以在锁屏中添加小组件，让手机变得更神奇，还可定期为手机更换主题，拥有很多创作精美的锁屏套装可供用户选择，要想让自己的锁屏变得更简单更新颖，一定要选择这款软件，打造专属自己的锁屏方式，拥有各种互动的壁纸，为你打造独特的锁屏方式。</p><p><img width=\"419\" height=\"667\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/10/2dea92de88d69f9c5746ba7efa97eab6.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>5、《91锁屏》</p><p>想要制作各种锁屏，就可选择这款软件，拥有很多精美的主题贴纸，根据自己的喜好来设置，通过左侧就可快速的锁屏，还可让你了解天气变化以及了解星座运势，也可了解当下的热点新闻，有了这款软件，让你的手机更加的方便。当然这款软件能够很好地保护手机的隐私，不会泄露出去重要的东西。</p><p><img width=\"404\" height=\"650\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/2/c62661abe8d6f58d4c33dd6720be7949.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>6、《微锁屏》</p><p>想要打造个性的锁屏，一定要选择这款软件，这是一款00后必备的个性锁屏软件，还可设置个性的锁屏来电秀，为您带来不一样的炫酷感，拥有大量主题壁纸等待用户来选则，支持密码保护，不会让手机上重要的内容泄露出去，还可为手机上的短信、相册的设置单独的锁屏，不会让自己的小秘密被他人发现。</p><p><img width=\"416\" height=\"664\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/11/58cfd5d6e96126ab927df15664efa175.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>以上小编为大家介绍了好用的应用锁屏软件，相信这些软件有很多小伙伴是比较熟悉的，毕竟手机上都需要一款锁屏软件。这些软件除了可以锁屏，还有多个方面的优势。在手机上占用的内存空间也并不大，有需要的小伙伴可下载到手机上。</p></p>\n              \n'),(131,1,3,'\n              \n              <p><p><span>如今在手机上可下载的软件非常多，这些软件无论是在生活中还是在工作中，都是有很大作用的，能够辅助用户高效率的来完成一些事情，那么图像转换器app下载推荐哪些?相信这是很多从事创作方面的小伙伴都想了解的，毕竟下载这样一款软件，能够在处理图像以及视频的时候起到很大的作用。</span></p><p><span>1、《图片格式转换器》</span></p><p><span>用这个软件来转换图像格式是非常简单的，通过自动判断输入的图片格式，就会转换为其他格式，并且该软件还有图片编辑功能，又可将图片压缩或者是裁剪、以及添加一些元素等等操作，非常简单，还优化了该软件的性能，为用户带来非常流畅的使用体验。</span></p><p><img width=\"405\" height=\"628\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/3/747825aa234c4a7fc98bfcf5b7610d1b.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"图片格式转换器\"  data-wdj-app-id=\"8286547\" data-packagename=\"dshark.fomat.tranf\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>2、《格式转换工具》</span></p><p><span>该软件支持视频转换，同时也支持音频、文档、图片等等一系列的转换，还可将视频中好听的声音片段提取出来，简单易操作也方便管理，是学习以及办公中非常不错的一个好帮手，支持转换的格式多，而且操作也比较简单，还可将多种图片压缩分享给身边的同事。</span></p><p><img width=\"426\" height=\"714\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/1/60c42fcce44eac70506e6b3fc45e465d.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"格式转换工具\"  data-wdj-app-id=\"8328545\" data-packagename=\"com.jiadi.geshigongchang\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>3、《图片压缩王》</span></p><p><span>大家都知道将多张照片一起发送出去，传送的速度非常慢，如果压缩发送，不仅发送的速度快，即使对方是离线的状态下，也能顺利地发送，这款软件还支持格式转换、以及对图片的裁剪、制作证件照等。</span></p><p><img width=\"416\" height=\"675\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/9/692e9879028095b480823fd04891a598.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"图片压缩王\"  data-wdj-app-id=\"8127770\" data-packagename=\"com.coffee.image.compress\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>4、《视频转换器》</span></p><p><span>目前使用该软件的人群高达8亿多，拥有很多的优势，比如可将图片转换或者是压缩、以及分享剪切一系列的操作，都不会影响了图片的质量，而且还非常简单，用这款软件来操作，不会因为是手机操作而不方便。</span></p><p><img width=\"400\" height=\"641\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/3/7e19285f969a5fbd45601a78f8ba0dc0.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"视频转换器\"  data-wdj-app-id=\"7612309\" data-packagename=\"com.xvideostudio.videocompress\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>5、《文档转换器》</span></p><p><span>用这款软件来进行文档格式的转换，就可轻松的提高办公效率，还可将 pdf转换为多种不同的文档。不仅支持图片转文字，甚至身份证、营业执照等一些证件上的文字都可以。有稳定的性能和专业的文件格式，处理系统绝对是办公中非常得力的助手。</span></p><p><img width=\"424\" height=\"656\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/8/306898a3463600c0e85dd0ea00dd1108.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"文档转换器\"  data-wdj-app-id=\"8311132\" data-packagename=\"com.weimei.documentconverter\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>6、《CAD转换器》</span></p><p><span>这款软件的功能是非常强大的，可应用于大部分cad图纸转换，操作比较简单，当然还可对文件压缩、合并等等一系列的操作，该软件都是由专业团队打造精益求精，在转换过程中也不用担心会影响了图纸的效果，支持的格式比较多，还可将制作好的图纸分享给他人。</span></p><p><img width=\"401\" height=\"646\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/4/8560080f78afbf5ecd9c7f49ac5f67ca.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"CAD转换器\"  data-wdj-app-id=\"8330260\" data-packagename=\"com.example.yinleme.cadzhuanhuan\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>以上小编为大家介绍了图像转换器app下载有哪些，这几款软件各有各的优势，但是每一款都能够帮助用户很好地完成图像的转换，还可制作图像等等，有了这一款软件，相当于在手机上下载了多款软件一样。</span></p></p>\n              \n'),(132,1,3,'\n              \n              <p><p><span>要想提高英语成绩，靠的并不是死记硬背，需要掌握正确的学英语的方式和方法，一定要找到学习的技巧。目前英文书籍阅读app有哪些?在课下，阅读一些好的英语书籍，能让你的发音更标准，也能加深对单词或者是语句的记忆，也能多多的理解如何组合英语句子或者是文章，是非常有益的。</span></p><p><span>1、《英语口语8000句》</span></p><p><span>用这款软件来学习英语有很多的优势，可加深对英语单词的记忆，也可阅读一些美文、美句、诗歌以及有趣的故事，多种学习模式任你选择。</span></p><p><img width=\"401\" height=\"617\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/11/590218abfe8998b21687de372ded86cb.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"英语口语8000句\"  data-wdj-app-id=\"582681\" data-packagename=\"com.qilesoft.en.eights\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>2、《莱特英语阅读听力》</span></p><p><span>想要快速的提高英语成绩，一定要多多的阅读，掌握正确的发音，听力方面的学习也是很重要的，该软件不断的更新，推出了很多的学习内容，满足大家的学习需求。</span></p><p><img width=\"404\" height=\"642\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/0/598ee3c54e09f2866dc35096db9ead23.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"莱特英语阅读听力\"  data-wdj-app-id=\"8355979\" data-packagename=\"com.jiaming.enread\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>3、《可可英语》</span></p><p><span>使用这款软件来学校英语的人群是非常广泛的，拥有多种素材、还有英语晨读，从全方面的来帮你提高自己的英语成绩。</span></p><p><img width=\"401\" height=\"642\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/1/7ffbaf95fb636a57b0338ddfd70bb53f.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"可可英语\"  data-wdj-app-id=\"50791\" data-packagename=\"com.kekeclient_\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>4、《星火英语》</span></p><p><span>作为一款学习英语的好帮手，拥有的学习资料非常全面，能满足不同阶段人群学习英语的需求，拥有特色模块，从全方位来提高英语成绩。</span></p><p><img width=\"402\" height=\"668\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/8/1129b3d4014abc7bd431755bd0ceb80e.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p></p><p><span><div class=\"__cdl\" data-appname=\"星火英语\"  data-wdj-app-id=\"7061730\" data-packagename=\"tuoyan.com.xinghuo_daying\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>5、《小站雅思》</span></p><p><span>该软件具有大量口语练习试题，帮助学生更好地记忆单词、理解语法，无论是背单词还是语句以及文章都支持，全方面的来激发学习的天赋。</span></p><p><img width=\"412\" height=\"666\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/7/bac5ab26f259b70e567af27a5cc81d4b.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"小站雅思\"  data-wdj-app-id=\"6651644\" data-packagename=\"com.zhan.ieltstiku\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>6、《流利说-英语》</span></p><p><span>其实在这款软件上学英语是非常有趣的，能让你大胆的用英语对话，全方位的来掌握学英语的技能，操作非常简单，具有多种学习模式，快速提升英语水平。</span></p><p><img width=\"400\" height=\"655\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/10/808d65f95753efc44b833fa5a23cc010.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"流利说-英语\"  data-wdj-app-id=\"1535627\" data-packagename=\"com.liulishuo.engzo\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>7、《英语星》</span></p><p><span>想要快速的通过考试选择这款软件，绝对不会让你失望，拥有大量的外语资源，通过根据还可为你的口语打分，为了让用户在使用过程中感受到该软件的功能强大，也在不断的更新。</span></p><p><img width=\"401\" height=\"642\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/11/ca5df3cb681f24610d6ef3d968e93c36.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"英语星\"  data-wdj-app-id=\"8382655\" data-packagename=\"com.yuduoyou.yuduoyou_app\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>8、《扇贝阅读》</span></p><p><span>多多读英语是非常重要的，在这款软件上可跟着视频来发音，还支持练习单词发音的录制，快速的掌握标准的发音。</span></p><p><img width=\"401\" height=\"616\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/6/f1f264de4d704536a5566bb4986fc22e.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"扇贝阅读\"  data-wdj-app-id=\"2051087\" data-packagename=\"com.shanbay.news\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>9、《莉玛绘读 儿童英语阅读》</span></p><p><span>想要提高孩子的学英语能力，一定要选择这款软件，通过读绘本的方式来增加孩子的英文词汇量，渐渐的喜欢上英语这门功课。</span></p><p><img width=\"554\" height=\"372\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/5/690613e0491a4b89989d75e82beaedea.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"莉玛绘读 儿童英语阅读\"  data-wdj-app-id=\"8172751\" data-packagename=\"com.hhkj.cl\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>10、《点读通》</span></p><p><span>这是一款专门为学生打造的英语辅导软件，拥有视频教学、趣味课堂等多种功能，如果家里有正在学英语的孩子，一定要在手机上下载这款软件。</span></p><p><img width=\"406\" height=\"383\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/0/3d143a2f786f4064a481185d0d280009.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"点读通\"  data-wdj-app-id=\"7929422\" data-packagename=\"DDT.QQ78551393\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>如果还不了解英文书籍阅读app有哪些，以上介绍的这些软件能满足不同年龄的人学英语的需求，想让自己的英语成绩得到提升，平时一定要多通过这些软件来阅读一些英语的书籍，是非常有趣的。</span></p></p>\n              \n'),(133,1,3,'\n              \n              <p><p>我们平时都会分享自己的生活，在生活中可以拍摄一些美食和美景，所以我们平时都会用一些 APP来拍照，不过也有许多人不太清楚美食照片用什么软件，下面小编就给你介绍一些好用的拍美食的 APP推荐，在这里大家可以找到非常多的美食滤镜，大家可以使用这些滤镜拍出非常多的有趣的美食照片，大家快去试试吧！</p><p>1、《相机360》</p><p>照相机360是一个非常实用的摄影软件，它不但能满足使用者的日常摄影需要，而且也能用来拍食物。这款软件提供了多种拍照模式，以及各种滤镜，让使用者可以轻松地抓住美食中的每一个细节。摄像头360中的美食模式，是专门为美食拍照而优化的，它能自动调节颜色和灯光，凸显出食物的颜色和质地，让食物看起来更有吸引力。</p><p><img width=\"500\" height=\"273\" src=\"https://android-imgs.25pp.com/fs08/2022/03/15/11/8f5d339bf90657af3cb2985e9f244793.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>2、《美颜相机》</p><p>美颜摄像头是一个专门用于美化图片的摄像头，但是它在食物图片上的表现也很出色。这款软件还提供了大量的美颜、美化等功能，能够让用户在照片中看到更具吸引力的美食。美颜摄像头的美食模式，对食品的颜色、细节进行了特殊的优化，能自动剔除掉图片中的杂质，使菜肴看起来更加真实、清晰。</p><p><img width=\"500\" height=\"280\" src=\"https://android-imgs.25pp.com/fs08/2022/03/15/7/e3f788dfe053676981c28dc8e6b7af84.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>3、《美图秀秀》</p><p>美图秀秀是一款非常受欢迎的图像处理软件，具有多种编辑、滤波等功能，尤其适用于食物图片的拍照、美化。这款软件还提供了一种特殊的食品图案，它能对食品的颜色和光照进行自动调整，使食品图片更逼真。美图秀秀也提供了对图片的裁剪、调色、加文字等功能，让用户能够很容易地做出各种精致的食物。另外，美图秀秀还提供了大量的图片素材、贴纸特效，让用户可以随意地在图片中加入一些小饰品，让图片变得更加有趣、更加有个性。</p><p><img width=\"500\" height=\"295\" src=\"https://android-imgs.25pp.com/fs08/2022/03/15/2/c154d0c040c65ef2fa9a75cfa817bd2d.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>4、《Kada相机》</p><p>卡达照相机是一款专门为食物拍照的软件。本软件具有多种拍摄方式及调节能力，能够满足不同使用者的拍摄需要。Kada摄像机的食物模式是为食物拍照而特别优化的，它能自动调节颜色，光线，焦点，使食物照片更清晰，更真实。另外，卡达还有一系列的拍摄协助，例如定时拍摄、连续拍摄等，让使用者可以更好地把握食物的每一个细节。</p><p><img width=\"375\" height=\"612\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/6/fa7cfe952818d5be81a61576a5857a6d.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>5、《甜相机》</p><p>这款APP是一款以食物为题材的手机软件，它可以给使用者丰富的拍照、剪辑等功能，让使用者可以很容易地拍出甜美美味的食物。这款软件具有特殊的食品过滤功能，能使食品的颜色变得更加鲜艳诱人。同时，甜柿也具备不同的拍照模式及手工调校功能，让使用者可以依个人需要，自由发挥创意，创造属于自己的美食。另外，它还提供了图片共享、社交交互等功能，让用户可以把自己拍到的食物与好友、粉丝们分享。</p><p><img width=\"321\" height=\"535\" src=\"https://android-imgs.25pp.com/fs08/2022/03/15/1/22e5a0083bb2529458d7e6e152b881b2.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><div>以上就是小编为大家带来的关于美食相机的推荐，这些软件当中的众多滤镜，对于大家拍摄都是非常有帮助的，大家可以用这些APP拍出非常有趣的一些图片，大家快去试试吧！</div><p></p></p>\n              \n'),(134,1,3,'\n              \n              <p><p>现如今有许多小伙伴想要通过线上平台自行学习英语，市面上有超多英语软件，那么哪些软件更适合广大小伙伴的使用呢，所以今天小编为大家带来英语应用有哪些可以免费下载，给大家推荐几款好用的免费的英语学习软件，让更多学生在线上自学的过程中得到提升，让学习不再枯燥乏味，学习更简单有趣味。</p><p>1、《英语听听》</p><p>这个软件既没有广告也不需要任何费用，是一款免费学习英语的学习助手。软件内为用户提供十分全面的英语资料，用户可以通过每日听看英语电影来提升自己的英语水平，让英语语句的背诵更轻松有效，另外除了各种主题电影还有演讲访谈等等各种听力素材，原生音频双语字幕让学习更方便。</p><p><img width=\"550\" height=\"977\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/2/e6a4ad22f5cc6ec70d26852454179da9.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>2、《大学英语四级》</p><p>这个软件是一款最新的英语四级考试小帮手，软件内的内容很丰富界面干净整洁，功能很齐全，精简的界面让用户的心情更轻松，可以自定义设置背诵单词任务，进行打卡。还有各种真题阅读可以练习，四级考试真题多听多练，短时间内快速提升自己的英语水平，人性化的单词拼写练习，可以帮助用户更方便的记住单词。</p><p><img width=\"550\" height=\"977\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/6/e06105e9da7348cd7fe5ced60d4438d5.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>3、《学英语听力》</p><p>这个软件是一款专注于中小学生学习英语的软件，软件内功能十分人性化，充分利用碎片化时间，制定个人专属的学习计划，提供丰富的全面的学习资源，还有情景短片可以进行跟读练习，快速培养英语语感，高颜值的外教带给用户更高效率的学习课程，系统化学习口语，基础场景全覆盖，让小伙伴全方位学习，巩固所学英语知识，突破重难点反复练习，多种兴趣学习方式等你来体验。</p><p><img width=\"550\" height=\"916\" src=\"https://android-imgs.25pp.com/fs08/2023/08/10/5/115_f398f10b8c6407f48391716e8239530f.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>4、《小站雅思》</p><p>这个软件很适合备考雅思考试的小伙伴们使用，平台为用户提供了超级多的有关雅思考试的干货内容，有完整版的听力阅读练习，还有口语真题题库可随时随地练习，可以线上自行模拟考，提前感受考场感觉。软件升级新增微课堂和丰富多彩的战团活动，提供雅思口语练习的批改等等学习服务。是众多备考小伙伴学习之路上的好伴侣。</p><p><img width=\"550\" height=\"916\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/2/552d232f812b2afaad39d6c7f2c1c18f.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>5、《英语口语8000句》</p><p>这个软件开设了多种类的英语学习课程，无论是要学习语法还是练习口语都有相对应的课程可以自主学习，满满的干货方法课程让用户的学习事半功倍，快速掌握英语的学习技巧。这个软件可以为用户提供更系统地学习平台，可以让新用户快速入门学习，丰富的资源可为不同阶段的用户提供帮助。</p><p><img width=\"550\" height=\"977\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/11/1904bc1794fd59699fd32b3574e3824c.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p></p><p>以上就是关于英语应用有哪些可以免费下载的全部内容了，这些软件可以为不同阶段的用户提供不同的学习帮助，让更多小伙伴的学习更高效率。感兴趣的用户们抓紧到豌豆荚平台上下载以上几款软件吧。</p></p>\n              \n'),(135,1,3,'\n              \n              <p><p>现如今有许多小伙伴都喜欢在网上购物，避免了线下逛实体店浪费更多的时间所以快递物流查询就显得格外重要，所以今天小编为大家带来同城快递app有哪些，给大家推荐几款好用的快递查询软件，让用户随时随地了解掌握快递的最新状态，轻松追踪包裹，实时了解配送进度，打给用户更全新的快递，体验享受最优质的快递服务。</p><p>1、《微快递》</p><p>这个软件是一款包含全国多家快递品牌的线上平台，有许多特色功能，为用户提供更多有关快递查询的服务，无论是查快递信息还是寄快递都可以使用，该软件有智能管理系统，首页单号分类智能显示，让用户更方便管理自己的快递包裹。可以线上直接联系快递员进行沟通派件，避免时间冲突带给用户更大的便利，实时更新和提醒用户快递包裹动态信息，避免快递出现更多的意外情况。</p><p><img width=\"550\" height=\"977\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/6/115_233b0dfb3f4a21d86e0a2a7f30a950a0.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>2、《快宝驿站》</p><p>这个软件是专门为用户提供快递服务的线上平台，让个人操作的快宝驿站更高效有更高科技的智能技术，可以实现驿站快件的出入库管理，更方便用户的操作，还会有客户取件通知，物流信息，同步等各种便民的社区服务工作，还有团队上下属驿站功能，让管理更科学团队绩效管理更方便，大大提高驿站的工作效率。</p><p><img width=\"550\" height=\"977\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/10/115_c013036b53c8aaa8e09e065092dfa003.JPEG?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>3、《闪送》</p><p>这个软件是一款全新开发的同城快递闪送服务平台，可以为用户一对一的快递同城闪送，解决了用户日常繁忙的问题，节省更多时间，为用户提供更贴心的专送服务，送文件证件更安全更快捷放心，满足不同人士的各种需求，无论是送什么东西都可以用该软件完成任务。服务安全性更高时效性更高。可以为同城运送提供更多选择。一对一上门快递服务让用户感到更放心。</p><p><img width=\"534\" height=\"801\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/2/2dcf64923381178c79c36e79b15f730a.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>4、《美团优选》</p><p>这个软件旨在为用户提供同城快递配送服务的快递平台用户可以在软件平台上购买一些时令生鲜水果或一些日常生活用品前一天下单，第二天就可以给用户送达只在费用不提供更优质优惠，快捷的购物体验，该软件设置的字体点都在用户所在范围内的同城配送为用户提供更省时省力的快递服务。</p><p><img width=\"550\" height=\"977\" src=\"https://android-imgs.25pp.com/fs08/2024/03/26/1/684abd116018843ea62858fe4bc68bcb.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>5、《爱跑腿》</p><p>这个软件是一款便民的跑腿服务平台，专门为同城快递而运营的配送服务平台，旨在为用户提供更便捷的快递代取代寄的上门服务，新人下载还有优惠活动可以享受。软件内操作页面简单，可以一键下单轻松上手操作非常便捷，有专门的快递专送专人直达更安全便捷，软件还会时不时有各种各样的活动，多重奖励，只为带给用户最好的服务体验，更多特色功能，等你来探索</p><p><img width=\"550\" height=\"916\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/7/115_1447807ed85ffe4ea71d3d8b414f3278.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>以上就是关于同城快递App有哪些的全部内容了。这些软件可以为用户在短时间内完成更快速的配送服务，为更多用户提供更便捷的服务，更省时省力安全放心。感兴趣的用户们抓紧到豌豆荚平台上下载以上几款软件吧。</p></p>\n              \n'),(136,1,3,'\n              \n              <p><p>一人之下这部动漫是近期我国最具代表性的一部动漫作品。这部动漫中的故事情节和画风都非常符合我国国人的审美。那么大家知道一人之下动漫在哪个app上看内容最完整吗？目前为止一人之下这部动漫已经完结了好几部。当然这也不妨碍小伙伴重复观看这部动漫作品。对于可以看动漫的软件，在豌豆荚上给大家找到了几款，希望大家能够喜欢。</p><p>1、《PP视频 电影电视剧动漫综艺》</p><p>这是一款视频内容比较综合的手机视频软件。大家想看的一人之下这部国产动漫，在这个平台上就可以看到完整高清的内容，而且观看中也可以手动调节动漫的播放速度，并且也可以直接将视频一键缓存到手机本地。</p><p><img width=\"550\" height=\"589\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/1/849ebea77f784e80160fb4fcf584da9e.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>2、《樱花动漫》</p><p>许多精彩好看的动漫，小伙伴们都可以在樱花动漫这款软件上找到完整资源。而且为方便大家看到优质的动漫资源，它还为用户盘点了动漫的排行榜，评分榜以及动漫口碑榜等内容。如果看动漫看累了，这里还有许多趣味小游戏可以玩。</p><p><img width=\"550\" height=\"977\" src=\"https://android-imgs.25pp.com/fs08/2024/01/10/0/115_1389335ae92bb5a26dffb58333bc692f.JPEG?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>3、《腾讯动漫》</p><p>这是许多00后都喜欢的动漫平台。像一些人气作品，狐妖小红娘，一人之下，这里有动漫，还有原著漫画作品和原著小说可以观看。当然用户也可以在免费频道中观看那些优质免费的动漫作品。</p><p><img width=\"550\" height=\"916\" src=\"https://android-imgs.25pp.com/fs08/2023/12/22/0/115_c4693daf6e16f0d60a8193f32f15dadc.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>4、《风车动漫》</p><p>这是可以帮用户打造出一个动漫世界的手机应用软件。平台有许多动漫风格的图集。这些图片可以用做手机的桌面和锁屏上，大家只需根据自己喜欢的动漫作品进行搜索，就可以找到相关的动漫漫人物的图集。</p><p><img width=\"550\" height=\"977\" src=\"https://android-imgs.25pp.com/fs08/2023/12/06/9/115_35491ea4037d48974068130d776521b3.JPEG?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>5、《腾讯视频》</p><p>从周一到周天，几乎每天都有经典动漫在腾讯视频上为大家更新资源。许多小伙伴每天10点都会准时守在腾讯视频前等待动漫的更新。让大家每天都有不同的动漫新剧情可以观看。其中比较具有代表性的包括吞噬星空，诛仙等等。</p><p><img width=\"550\" height=\"977\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/2/115_396e54af429f6dce0edc7d809d0eb670.JPEG?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>6、《优酷视频》</p><p>虽然这款视频软件比较适合于观看一些热度比较高的电视剧，但是这里也设立了动漫板块儿，在这个板块儿中大家可以看到无论是国产还是来自其他国家的动漫作品。而且也有优酷独家播放的一些优质的动漫作品供大家观看。</p><p><img width=\"550\" height=\"633\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/0/fda0998ace24f527874801c5974481cd.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>现在我国产生的极具代表性的动漫作品越来越多。这些代表作品也吸引了越来越多的用户开始喜欢上动漫的观看。希望小编在豌豆荚上整理到的这以上几款动漫软件能够为大家带来更多优秀的动漫资源。</p></p>\n              \n'),(137,1,3,'\n              \n              <p><p>在当下这个大时代，只要有需求就会诞生相关的行业，例如大家在生活中可能难免有对代驾的需求。现在不仅有代价，而且也可以直接在网上代驾。那么大家知道值得下载代驾app推荐都有哪些吗？现在许多小伙伴的工作难免会因为应酬而喝酒，喝完酒之后又无法开车，这时候就需要叫代驾了。在豌豆荚这个应用软件商店中，小编给大家找到了以下几款比较靠谱的代驾APP，希望大家能够喜欢。</p><p>1、《代驾宝》</p><p>对于这款应用APP是适合于代驾师傅用作报单计价场景。是一款使用非常灵活简洁的里程计价软件。它的页面设计风格简单明了，计价规则也是可以由使用者自行调整设置。有了它可以为用户接上其他平台的中介费的收取。</p><p><img width=\"550\" height=\"977\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/1/115_c47111f6e790a6a48eb53f45134a91a5.JPEG?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>2、《一代驾》</p><p>这是一个全国范围内都可以使用的专业代驾服务平台。如果需要代驾服务的话，推荐首选为一代驾APP。这里可以给每一个客户提供安全优质的可靠代价服务，全国各地有超过近百万的代驾司机随时为您服务。</p><p><img width=\"537\" height=\"647\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/5/769b10f0d800800917ba0f7d390f9803.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>3、《e代驾》</p><p>不仅是大家所需的酒后代驾服务，在这款APP上还提供了代保养，代年检，代泊车或者是包时司机，旅游代驾，长途代驾。等多种场景。目前这款平台的代价服务已经覆盖了全国超过400多个城市，满足各地区用户的代驾需求。</p><p><img width=\"550\" height=\"977\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/6/115_590eb51350842c2cd81e514f8a648cc4.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>4、《滴滴出行》</p><p>这个出行服务平台上不仅是许多小伙伴在出行的时候首选的一款打车软件，如果有打车需求的话，只需在手机上打开这款APP，就可以一键叫车上门接驾。当然如果有代驾服务的话，在这里也是可以实现的。</p><p><img width=\"550\" height=\"916\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/10/115_ffb9c6037da9f2e3b4f2b6ba3f978fdf.JPEG?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>5、《曹操出行》</p><p>这是一款能够为用户提供符合当下发展阶段的更健康，更绿色以及更智能的出行服务的平台。目前已经在全国超过60多座城市开始运营。平台的车型不仅种类丰富，而且服务用心。当然除了能够在线叫车之外，也可以在这里叫代驾。</p><p><img width=\"550\" height=\"916\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/2/115_055546736f29d106f850e6e08dcae932.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>6、《微信》</p><p>基本上生活中所需的服务在微信上都有相应的小程序软件。如果大家和朋友在外喝酒而无法开车回家的话，也可以在微信上搜索有关代驾的小程序，小软件。而且可以直接在搜索到的代驾小程序中叫代驾。</p><p><img width=\"550\" height=\"543\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/0/5ef5c60450d9a153a33a35a394d8b6f4.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>现在许多公司的业务都需要员工能够在喝酒吃饭中，完成。当然许多小伙伴也会趁着休闲放假的时候和自己的朋友一起喝点儿小酒，聊聊天，当然喝酒之后就不能开车了，这时候可以叫代驾。当然除了酒后需要叫代驾之外，生活中还有许多其他原因需要代驾服务。希望小编找到了这几款代驾APP能给大家带来一些帮助。</p></p>\n              \n'),(138,1,3,'\n              \n              <p><p>随着最近韩剧的开播，不少网友对那些韩剧里面的男女主角的完美身材爱慕不已，那么瘦身计划app韩剧中的有哪些呢，小编也想让大家都用上这些宝藏软件，也拥有跟他们一样的好身材，一样的健康和活力。小编经过一段时间的挖掘也是找到了不少现在就推荐给大家，让大家在家就可以开启健身之旅，向理想身材冲锋。</p><p>1、《硬汗健身》</p><p>硬汉健身，你的私人健身教练！从初级到高级，从瘦身到增肌，它为你提供全方位的健身指导和计划。高清视频教程、详尽动作解析，让你轻松掌握每个动作要领。加入FitTime的活跃社区，与志同道合的伙伴一起挥洒汗水，共享健身的快乐！</p><p><img width=\"500\" height=\"908\" src=\"https://android-imgs.25pp.com/fs08/2024/03/24/11/cf9d77c26235aec2cf4e2e286142511d.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>2、《薄荷健康》</p><p>薄荷健康，你的瘦身饮食小助手！食物热量一目了然，饮食计划量身定做。在这里，你不仅能学到健康饮食的知识，还能找到适合自己的瘦身食谱。更有运动记录和体重管理功能，让你全方位掌控自己的瘦身进程。</p><p><img width=\"500\" height=\"888\" src=\"https://android-imgs.25pp.com/fs08/2024/03/21/5/110_3ddfff71ca21a182f255a7566f586ec6.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>3、《Keep》</p><p>Keep，你的移动健身房！无论你是健身新手还是资深达人，都能在这里找到适合自己的锻炼课程。有氧、力量、瑜伽……多种课程任你挑选。智能训练计划功能，为你量身定制瘦身方案，让你在轻松愉快的氛围中实现瘦身目标。</p><p><img width=\"500\" height=\"834\" src=\"https://android-imgs.25pp.com/fs08/2024/03/24/5/4164610b5aabcaa9d10eaed02e64bbd2.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>4、《减肥日记》</p><p>轻加，你的瘦身好帮手！它将饮食与运动完美结合，为你提供个性化的瘦身方案，每天都会给你推荐一个新的运动和饮食的计划，让你的每天减肥都是在快乐中开启。在这里，你可以学习健康饮食知识，掌握运动技巧，还能与其他用户交流瘦身心得。轻加，让你在享受美食的同时，也能拥有苗条身材。</p><p><img width=\"500\" height=\"888\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/3/115_7b809a79920deea742ecaac5ec7bec2b.JPEG?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>5、《体重日记》</p><p>体重日记，你的瘦身小秘书！它能帮助你记录体重变化、饮食摄入和运动情况，让你随时掌握自己的瘦身进度。让我们对我们现在自己的体重有一个清晰的认知，才能更好的帮助我们减肥。除此之外这款软件还可以设定目标、设置提醒，它时刻提醒你坚持执行瘦身计划。体重日记，让你的瘦身之路更加清晰明了，助你轻松达成瘦身目标。</p><p><img width=\"500\" height=\"888\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/9/115_1f7a73c557244ba7dc6a2485090531b6.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>这些app都有其独特的优势，用户可以根据自己的需求和喜好选择适合自己的app进行使用。同时，也要注意合理安排饮食和运动，坚持执行瘦身计划，才能取得良好的效果。</p></p>\n              \n'),(139,1,3,'\n              \n              <p><p><span>当今社会中，英语是追求美好未来，追求高品质工作的敲门砖更是垫脚石，很多人认为学习英语是枯燥乏味的，其实只要找准方式，就能轻松畅快的学习。那么英语动画片app推荐哪些？很多小伙伴都会通过观看英语动画片的方式，提高个人水平，还能享受乐趣，提高口语能力，接下来为大家推荐几款适合的app。</span></p><p><span>1、《傻瓜英语》</span></p><p><span>学英语动画片轻松提高个人的口语能力及听力，动画片所讲述的故事比较简单，生动又有趣，可跟着角色进行模仿，增强表达能力。这款应用有着较高的知名度，可免费更外教背单词看视频，由英国美国等多名知名演员录制的发音，让你在学习时不再枯燥，告别死记硬背。有拼读，拼写等多种模式，可通过这些方式加深记忆。</span></p><p><img width=\"403\" height=\"567\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/3/9599acf5fd09aa93a571a1d34166789a.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"傻瓜英语\"  data-wdj-app-id=\"7704419\" data-packagename=\"com.sprite.foreigners\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>2、《可可英语》</span></p><p><span>专为英语学者推送的，听说读写练习神器有五星好评全方位，满足个人需求，包含听力提升、单词背诵、观看视频等多种模式。有专业的晨读板块，让你保持自律的阅读习惯，每天都会精选国外期刊资讯，带你看世界。还有趣味配音功能精选动漫电影片段，让你成为电影中的主角，很多用户纷纷表示这是值得推荐的，英语看视频软件非常适合四六级锻炼听力以及口语表达呢。</span></p><p><img width=\"400\" height=\"566\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/6/400afa6b57229fd0d571b685d9ead2ff.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"可可英语\"  data-wdj-app-id=\"50791\" data-packagename=\"com.kekeclient_\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>3、《步步ABC》</span></p><p><span>面向6~12岁儿童推出的英语学习产品，其中有相关视频，还有各种简单的词汇，对于刚接触英语的儿童来说特别适合，通过简单的模式培养孩子的自主学习能力，激发英语学习兴趣。采用智能教学方式为每位学者制定个性化教学方案以及教学途径。</span></p><p><img width=\"402\" height=\"627\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/4/ee7b04fae2af74799974693109534697.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"步步ABC\"  data-wdj-app-id=\"7912453\" data-packagename=\"com.putao.abc\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>4、《TALKEER》</span></p><p><span>当看到这款软件之后，很多小伙伴纷纷表示爱不释手，这是专门学外语app，在这里能够寻找到各种相关视频，同时更是外语交友平台，大家可以互相学习互相交朋友。不仅能够学习到英语，还能了解国外相关文化，我们还可将个人心情发送到其中，与全世界各地小伙伴共同互动。</span></p><p><img width=\"406\" height=\"633\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/7/4104ee8032b03f3b654dd6aa74595ce2.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"TALKEER\"  data-wdj-app-id=\"7056668\" data-packagename=\"com.newton.talkeer\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>5、《儿童英语》</span></p><p><span>现在人们害怕孩子输在起跑线上，在孩子大概4岁时就开始对其进行英语启蒙教育，这款软件是帮助儿童学习好外语的好帮手，可以学习26个英文字母以及48个音标。其中有较为齐全的卡片单词，包含汽车、颜色、形状、动物等等，原有日常生活用语，学习用语等等，提高个人的表达能力，可通过观看视频的方式积累更多的词汇，学习更多的语法应用方式。</span></p><p><img width=\"402\" height=\"549\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/3/61e1465a7cbb0a6c09e0967e1c043f93.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"儿童英语\"  data-wdj-app-id=\"7908622\" data-packagename=\"com.itfirer.childenglish\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>以上关于英语动画片app推荐哪些的相关内容，小伙伴们看了这些之后，应该知道该选择哪些了吧，当前英语学习已成为重要的科目，无论是孩子还是成人，都可通过英语学习的模式不断完善自己。</span></p></p>\n              \n'),(140,1,3,'\n              \n              <p><p>随着互联网发达，很多老板在宣传自家产品、店铺的时候都喜欢用一些制作精美的海报宣传给大众。对一些海报设计师来说，制作一份有创意、有立意的海报很重要，当然着都离不开海报制作app。因此小编给大家分享几款海报制作app，希望大家可以掌握其中的海报制作技巧。</p><p>1、《<span>懒设计</span>》</p><p>在该平台中有很多素材模板，平台中有很多专业的设计师，每天都会更新素材。大家想要的素材模板都能找到，其中的字体、素材可以商用，各个行业都可以套用。在平台中有很多艺术字，大家在设计海报的时候可以套用艺术字。</p><p><img width=\"400\" height=\"701\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/4/6130c5db99afaf2acf06976ba5c17e5d.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>2、《<span>稿定设计</span>》</p><p>平台中有很多海报设计工具，例如贴图、箭头、艺术字体等，大家在设计海报的时候难免会用到一些宣传语，这时候就可以套用艺术字模板以及箭头等。不太懂海报设计也没关系，平台中有很多模板可以直接套用，改变其中的字和图就行。</p><p><img width=\"400\" height=\"735\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/0/8a583a39b260139e61662be281d0a582.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>3、《<span>海报制作秀</span>》</p><p>很多朋友可以会接道一些节日宣传海报、宣传海报等，而《<span>海报制作秀</span>》中有很多素材很适合运用，其中的图标、文字、特效等都很精美。平台中还有很多招聘海报供挑选，风格多样。</p><p><img width=\"400\" height=\"665\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/7/413ad3224cee0a33c568b9e8af5f8b19.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>4、《<span>青木海报制作</span>》</p><p>大家在制作海报的时候最讨厌的就睡寻找素材还有背景等，在《<span>青木海报制作</span>》大家可以结局而这些烦恼，平台中有很多图片背景供挑选，风格多样。平台中还有很多种模板可以套用，例如活动传单、销售海报传单、节假日活动宣传等。</p><p><img width=\"400\" height=\"800\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/0/7f2eea3af14173fa0629f3123133d4e7.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>5、《<span>图怪兽</span>》</p><p>想要多功能的海报制作看看《图怪兽》吧，平台中有很多优质的素材，还有很多中设计工具，例如视频制作、图片拼图、DIF等，大家的设计质量也会直线上升。平台中的工具几乎全覆盖，无论是各种封面、名片还是推广都有不同的设计。</p><p><img width=\"415\" height=\"668\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/3/32a404aba6a6ae83b34971970ce713c9.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>6、《PS<span>海报设计</span>》</p><p>很多海报设计都需要一个功能多且很实用的app，而此软件正好适合，平台中有很多功能，例如标签、贴图、线框、艺术字等，对于图片的尺寸可以直接预设、添加画布、水印等。平台中对于一些图片中的元素可以抠图，添加到海报中。</p><p><img width=\"400\" height=\"774\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/7/0209f459a8fbc8acb43661ef4c89a059.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>对与海报制作相关的APPiu这些了，上述这几款其中有很多优质的苏操和模板，功能也非常实用。大家在制作海报的时候可以添加一些艺术字、水印、贴纸等，让海报变得更加高级，赶紧用这些APP制作精美海报吧。</p></p>\n              \n'),(141,1,3,'\n              \n              <p><p><span>看电视app已成为目前必不可少的手机应用，利用此类型软件观看影视作品，满足想象力好奇心的同时，也能体验不同的生活世界，提供更独特的情感寄托及共鸣。那么影视tv版app有哪些？现在很多软件为大家播放电视直播，可以回看可以预约。各种历史、文化、科学等多种信息都会全面展现，接下来为大家推荐几款能够观看影视tv的软件吧。</span></p><p><span>1、《芒果TV》</span></p><p><span>很多90后小伙伴对于湖南卫视特别感兴趣，尤其是其中极其火爆的综艺节目，让人流连忘返，人们最喜欢的莫过于快乐大本营。虽然现在这款综艺已经停播，但依旧有其他精彩的内容，比如大侦探、全员加速中等等，这些综艺节目都能陪你度过欢乐时光精彩内容不停更。与湖南卫视同步更新，包括电视剧、电影以及综艺等。</span></p><p><img width=\"406\" height=\"635\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/11/2a7a3516b09f294db198371a68e8a670.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"芒果TV\"  data-wdj-app-id=\"57623\" data-packagename=\"com.hunantv.imgo.activity\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>2、《天天电视直播》</span></p><p><span>流畅的看电视app可以观看央视、cctv5、卫视台、体育频道等，汇聚全面的相关内容，包含综艺、资讯、电影、电视剧，有足球、篮球、乒乓球、cba等体育赛事，海量资源，全面直播。各种经典电影快速搜索，一键触达，当前最新的资讯剧情都能一手掌握。观看影视作品时觉得过于无聊，还可查看弹幕，或者与其他爱好者共同聊天评论。</span></p><p><img width=\"404\" height=\"543\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/6/3e56126c7505397ae5c6b40b6f2e6ca0.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"天天电视直播\"  data-wdj-app-id=\"1664811\" data-packagename=\"org.fungo.fungolive\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>3、《谷豆TV》</span></p><p><span>广东电视台推出的手机移动端产品热门综艺不断唱响，海内外电影实时推送，还有竞彩体育赛事，最新新闻快速送达。好看好玩的都能在这里找到，现在很多网友都有选择困难症，并不知道该如何选择适合。自己的影视作品，对此无需担心，在这款应用当中有全面的影视解说，为小伙伴们实时推送热门内容每一步都不会踩雷。</span></p><p><img width=\"393\" height=\"542\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/10/5df56b63c15b7ad92aae0326e4dbc904.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"谷豆TV\"  data-wdj-app-id=\"7611916\" data-packagename=\"com.sumavision.sanping.gudou\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>4、《泰剧TV》</span></p><p><span>喜欢泰剧的爱好者都在这里聚集，收集当前热播信息，准时提醒你观看。不断更新各种热门内容，具有深度剖析功能，通过图文介绍，为你推送出各种经典的影视作品，有精彩评论，让你在追泰剧时不错过任何精彩片段。此外这也是相当出色的搜索平台，有全面的搜索功能，多维度在线搜罗精彩内容。</span></p><p><img width=\"399\" height=\"469\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/11/d61b0b620070158df35c959e1339a9e7.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"泰剧TV\"  data-wdj-app-id=\"8341559\" data-packagename=\"com.taiju.tv\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>5、《麦咭TV》</span></p><p><span>成年人会通过看电视的方式消磨娱乐时光，儿童也是如此，这是金鹰卡通卫视重磅推出的网络视频平台，精准定位，4~14岁的儿童以及亲子家庭聚焦相当齐全的内容，比如亲子节目，视频内容，动漫视频等等。包含当前热门的动画片以及传统节日、国学等等丰富的知识量身打造互动性，趣味性较强的平台。</span></p><p><img width=\"402\" height=\"595\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/5/8c150db98418ae84bbd7b1c5e1fca57d.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"麦咭TV\"  data-wdj-app-id=\"7844768\" data-packagename=\"com.jykt.magic\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>上方关于影视tv版app有哪些的相关内容，就为大家介绍到这里，在这些app当中有着丰富多彩的内容，可观看的直播类型较为全面，包含电视剧、综艺、新闻、体育等，已为大家推送出下载链接，点击就能极速安装。</span></p></p>\n              \n'),(142,1,3,'\n              \n              <p><p><span>随着互联网普及人们的生活也走向智能化，在科技的加持下学习更是提升日常。很多人利用书本背诵单词，总觉得特别枯燥，可使用app缓解此类问题。那么英语学单词app有哪些？这些软件是日常学英语是必不可少的伴侣，今天带着大家探索值得选择的app。</span></p><p><span>1、《百词斩》</span></p><p><span>不受时间地点限制，不需携带书本，随时打开快速学习，作为网红背单词软件零流量也能使用，当前用户已超过2.3亿，全网好评100万+。有多种模式，比如图片、押韵、深度配送模式，多维记忆，记得更牢。</span></p><p><img width=\"402\" height=\"487\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/4/016687a8e707ec6b5957df3cd7ed4865.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"百词斩\"  data-wdj-app-id=\"27471\" data-packagename=\"com.jiongji.andriod.card\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>2、《秒词邦》</span></p><p><span>网红背单词软件简单高效专业又良心，作为接地气平台，受到众多考生的认可，由全国高考骨干英语教师所研发，懂得高考、技术开发。有全网独家研发的个性化单词本和高考满分替换词。</span></p><p><img width=\"401\" height=\"519\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/10/65f670ab4a87fb6c79e03d7383b0c714.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"秒词邦\"  data-wdj-app-id=\"8332409\" data-packagename=\"baxz.mcbg.aoan\" data-has-pkg=\"0\" data-real-name=\"0\"></div></span></p><p><span>3、《墨墨背单词》</span></p><p><span>该应用快速帮助学生提升分数，解决枯燥乏味的记忆方式，全网下载量已超过3亿之多，获得较高知名度以及热度。有精准高效抗遗忘策略，完美配合知名词汇书籍，拥有足够的权威性。</span></p><p><img width=\"396\" height=\"603\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/11/b0077d62aa2a800162a6641ecc21b33f.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"墨墨背单词\"  data-wdj-app-id=\"6700169\" data-packagename=\"com.maimemo.android.momo\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>4、《背词达人》</span></p><p><span>致力于帮助学者减轻背单词负担，通过背诵的模式让小伙伴们沉浸在其中。涵盖词库较为全面，从小学到托福雅思全面包含。有冥想记忆模式，即便睡觉也可以背诵。</span></p><p><img width=\"394\" height=\"610\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/6/0ac466de3bfa531c71cb194b22473c64.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"背词达人\"  data-wdj-app-id=\"8025123\" data-packagename=\"com.jsfc.beicidaren\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>5、《英语单词王》</span></p><p><span>使用这款app，让英语单词简单易学，选用剑桥地道发音，让你拥有流利又标准的发音。包含常用的基础口语是随身携带的英语老师。涵盖四六级、考研、英语、托福、初中英语等多种热门单词书。</span></p><p><img width=\"397\" height=\"560\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/10/8a62cc65cfcc9e8360607b26beaeccf4.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"英语单词王\"  data-wdj-app-id=\"8335790\" data-packagename=\"com.lee.mood.engword\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>6、《天天背单词》</span></p><p><span>每天坚持使用该应用让你的口语突飞猛进，采用真人视频发音，学习当前标准的读音。通过独创的拆解式读法，让你认真听清每个音节。有全面的在线翻译功能，随时随地一查就能找到相关词汇。</span></p><p><img width=\"398\" height=\"574\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/1/3e137d408016dccee384f9ebf399c8a8.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"天天背单词\"  data-wdj-app-id=\"8173752\" data-packagename=\"com.apa.wabdc\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>7、《好好背单词》</span></p><p><span>设计出一套简单又有趣的抗遗忘策略，有简洁又生动的见面，让背单词时更加愉悦。每位小伙伴都认为被单纯是非常困难，也是非常枯燥的，而这款应用将这些问题完全解决，简单又生动。</span></p><p><img width=\"398\" height=\"564\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/1/02dd2a79976f1ae79cd5cca7377e823d.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"好好背单词\"  data-wdj-app-id=\"8065428\" data-packagename=\"cn.howhow.bece\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>8、《单词通》</span></p><p><span>单词记忆非常快，可根据用户需求选择对应的词库及背诵计划，有列句以及发音可加快单词的记忆能力，让你在学习时感受足够的趣味，包含齐全的考试，满足各年龄段需求。</span></p><p><img width=\"403\" height=\"563\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/4/6ab796974335299a06750f881c6770b9.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"单词通\"  data-wdj-app-id=\"8391506\" data-packagename=\"com.s20cxq.mevocabulary\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>9、《刷单词app》</span></p><p><span>专为背单词人士所打造，包含小学、中学、高考、大学、四六级等等，主要的应用特色就是通过手机学习体验不一样的背诵乐趣，牢记各种内容。</span></p><p><img width=\"406\" height=\"494\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/11/5d6bcf86b9fe80ac36b470f55d180960.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"刷单词app\"  data-wdj-app-id=\"8393230\" data-packagename=\"com.anxin.loveenglish\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>10、《米乐》</span></p><p><span>背诵单词小助手帮你每天背诵100多个，将错误的单词总会在一起，不断的重复练习，在考试之前，利用该app做好充分的准备。</span></p><p><img width=\"403\" height=\"473\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/7/29da314e6ac28c675f54e583607d79b2.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"米乐\"  data-wdj-app-id=\"7677511\" data-packagename=\"com.hanyu.mile\" data-has-pkg=\"0\" data-real-name=\"0\"></div></span></p><p><span>以上关于英语学单词app有哪些的相关内容就为大家介绍到这里，此类型应用有着较为全面的功能，具有在线检测、单词搜索、社区论坛等多种模式，让小伙伴们在学习时不在枯燥，希望相关内容能帮到大家。</span></p></p>\n              \n'),(143,1,3,'\n              \n              <p><p><span>新闻资讯成为人们生活中必不可少的打发软件app，通过此类平台获得不同的相关资讯，各种热门内容全面覆盖范围较广，比如时事、娱乐、财经、科技等。那么新闻资讯app有哪些？大部分新闻平台都有全面的智能推送功能，根据每位用户的浏览习惯以及兴趣爱好推送出相关内容，打造独特的个性化浏览模式，接下来为大家推荐几款热门的app。</span></p><p><span>1、《头条搜索极速版》</span></p><p><span>个性化专属资讯平台，很节省流量只需一键就能快速刷新，各种相关内容看不停。为用户提供有温度又有价值的热门资讯，想看的品质内容都能快速找到，与之前的头条搜索相比较起来完全不同，极速版更加流畅，占用的内存空间比较少。有精选内容，比如影视小说、医疗教育等等，各种内容极其丰富，等你前来观赏。</span></p><p><img width=\"400\" height=\"613\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/6/1f88ce9a818f8fbc07f6c86600dded0d.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"头条搜索极速版\"  data-wdj-app-id=\"7472015\" data-packagename=\"com.ss.android.article.lite\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>2、《看看新闻》</span></p><p><span>观看新闻app，可以让小伙伴们详细了解当前发生的热门事件，以及本地城市生活。这是由上海广播电视台所打造的新闻，客户端是上海核心新闻媒体产品之一，依托强大的制作创新能力，在众多软件中有较强的竞争力，全方位为用户打造重生定制的新闻资讯产品。具有全方位专业报道以及零距离洞察等多种模式，可以观看身旁感人的事情，有趣的事情。</span></p><p><img width=\"397\" height=\"572\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/6/2e7cb76913cae7b7951e3fe5b1be1924.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"看看新闻\"  data-wdj-app-id=\"6593060\" data-packagename=\"com.kankanews.kankanxinwen\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>3、《搜狐资讯》</span></p><p><span>每天热门资讯刷不停，让你发现更多乐趣，生活中或者上下班特别无聊，都可以打开搜狐刷刷视频，看看新闻或者观看喜欢的小说。有个性推荐功能，越用越懂，是出色的专属兴趣阅读管家。从当前的各种热门新闻到美妆穿搭以及健康养生，通通包含满足你的所有爱好。</span></p><p><img width=\"398\" height=\"605\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/9/7f5a44f92fb9b6dd431f7f5414448885.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"搜狐资讯\"  data-wdj-app-id=\"7600281\" data-packagename=\"com.sohu.infonews\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>4、《百度新闻》</span></p><p><span>只需轻松滑动手指就能了解到当前全新的新闻内容，满足用户碎片化时间对阅读的一系列需求作为百度倾力打造的新闻客户端。优质内容精准推荐，每篇新闻都拥有足够的品质，也经得起质量检测。各种焦点全部汇聚，不容错过，每天重大事件出现之后，都会第一时间在这里播报，每篇新闻都能让你有所触动。</span></p><p><img width=\"401\" height=\"535\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/10/0e44e0359d1192f4c1d1708f81eb9c77.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"百度新闻\"  data-wdj-app-id=\"280641\" data-packagename=\"com.baidu.news\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>5、《界面新闻》</span></p><p><span>原创精品新闻app，当前首页做了全面升级，好文直达快速推送，频道分类相当齐全，也能一目了然，找到喜欢的频道。打开平台会发现有多种不同的板块以及40多个内容频道，包括地产、汽车、消费、工业、创业、科技等等。想要了解更多的文化，可选择品质书籍，包含思想、历史、文艺等。</span></p><p><img width=\"399\" height=\"453\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/1/d8bd7e67c7611a681b16394a2f16d789.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"界面新闻\"  data-wdj-app-id=\"6567141\" data-packagename=\"com.jiemian.news\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>以上关于新闻资讯app有哪些的相关内容就为大家介绍到这里，这些新闻资讯软件，根据每位小伙伴的实际情况，推送出适合的内容，包含的类型较为全面，让用户在使用时爱不释手。</span></p></p>\n              \n'),(144,1,3,'\n              \n              <p><p><span>除了有很多的人喜欢听音乐以外，也有一些人比较喜欢进行音乐创作，虽然大部分的人家里面可能在创作音乐时并没有专业的设备，但却可通过一些专业的app来满足需求，那么音乐适配app有哪些呢？可通过小编介绍的这些了解一下，可将自己创作的歌词或者是音乐进行适配，打造出完全不一样的音乐。</span></p><p><span>1、《歌词适配》</span></p><p><span>这就是一款很好的音乐适配app，也是为了满足众多音乐人制作音乐需求而设置的，可将自己制作的歌曲填入到音乐当中，使整个音乐变成自己喜欢的风格，充满趣味性。</span></p><p><img width=\"400\" height=\"728\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/10/cf45d00dcb240b0d36e1d2d0d8b0b780.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"歌词适配\"  data-wdj-app-id=\"8336918\" data-packagename=\"com.yiyan.CutMusic\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>2、《音乐时刻》</span></p><p><span>如果你也是比较喜欢音乐的人，可使用这款软件来帮助完成音乐的制作，集编辑、混音等为一体，可轻松编辑自己的作品，提供多种音效以及音乐素材，也是很好的音乐适配app。</span></p><p><img width=\"406\" height=\"706\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/8/82a41b6f68d5773767a209ba81e5d4a8.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"音乐时刻\"  data-wdj-app-id=\"8385781\" data-packagename=\"com.cjmusiccj.dnjcj\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>3、《DJ音乐盒车机》</span></p><p><span>如果自己想要选择一款能够制作出dj音乐的，比较喜欢听这种动感音乐，就可下载这款app也是比较好的，之所以它是满足需求的，是因为具备很多的功能。</span></p><p><img width=\"554\" height=\"330\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/5/a6d4e1602f8106fd58d007b6362af85f.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"DJ音乐盒车机\"  data-wdj-app-id=\"8333246\" data-packagename=\"com.djbox.car\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>4、《音久音乐》</span></p><p><span>之所以说这是一款音乐适配app，是因为它能够满足大家喜欢听歌曲的需求，帮助适配好听的歌曲。集音乐播放、下载歌曲、编辑照片、制作歌词等为一体。</span></p><p><img width=\"430\" height=\"724\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/3/4f5c2fd51dce6cd1613c8429923f6bb6.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"音久音乐\"  data-wdj-app-id=\"\" data-packagename=\"\" data-has-pkg=\"\"></div></span></p><p><span>5、《音乐剪辑器》</span></p><p><span>想将自己喜欢听的各种歌曲合并起来制作成串烧音乐的话，可使用这款专业的音频编辑app，它具有音频合并、混合、剪切等诸多功能，还能完成音频格式转换。</span></p><p><img width=\"404\" height=\"664\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/3/3fcd84932dd14e1075e6ff525547edc7.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"音乐剪辑器\"  data-wdj-app-id=\"8068593\" data-packagename=\"com.xmb.musicclipds\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>6、《超级音乐编辑器》</span></p><p><span>这是一款功能强大的音频编辑app，具备快速剪辑的功能，可保留音乐的美好时刻。还支持很多格式完成编辑，是音乐制作者，爱好者必不可少的。</span></p><p><img width=\"409\" height=\"677\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/10/9ebee0ccadddf0f82424cdaf03c5c6b0.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"超级音乐编辑器\"  data-wdj-app-id=\"7934951\" data-packagename=\"com.tianxingjian.supersound\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>7、《音乐制作工坊》</span></p><p><span>它是专业制作音乐的app，具有全面的编曲以及音乐制作模块，还有专门为音乐爱好者设计的音乐制作流程，可无限长度的完成制作，导出音频格式。</span></p><p><img width=\"404\" height=\"723\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/9/aae6b511bf16f45b7775cd5475a19235.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"音乐制作工坊\"  data-wdj-app-id=\"8058672\" data-packagename=\"app.allergic.musicfactory\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>8、《MOO音乐》</span></p><p><span>很多的年轻人都会使用这款音乐平台，会给用户提供多样化的内容，表达自己的观点，也是一款拥有音乐社区音频频谱的，可让音乐回归于本质，还可搜索热门的内容。</span></p><p><img width=\"409\" height=\"704\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/7/29ba1b877c2bebca635f06cb22cbb1ca.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"Moo音乐\"  data-wdj-app-id=\"8378710\" data-packagename=\"com.wpfxy1.booksyyd\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>9、《音乐剪辑》</span></p><p><span>它是一款功能特别强大的音乐剪辑app，重要的功能包括音频拼接、剪切以及录音，是音乐编辑的好帮手，有很多的人在音乐适配时都会选择这款。</span></p><p><img width=\"398\" height=\"634\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/1/dacd19d9b2beb8bfe35625f12497440c.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"音乐剪辑\"  data-wdj-app-id=\"6510956\" data-packagename=\"www.imxiaoyu.com.musiceditor\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>10、《剪音乐》</span></p><p><span>它是一个可帮助用户制作铃声的支持音乐音频，mp3剪辑编辑以及合并混音等。比如把诸多音乐合并成一首进行播放，具有大师级别的音频混合、剪辑、制作功能。</span></p><p><img width=\"409\" height=\"680\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/7/c43f1c5a16a53f0cdb86425288f3e013.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"剪音乐\"  data-wdj-app-id=\"8187790\" data-packagename=\"com.hotsx.audio\" data-has-pkg=\"0\" data-real-name=\"0\"></div></span></p><p><span>关于音乐适配app有哪些的内容，今天就为大家介绍到这里，相信有很多喜欢音乐的人都是对这些app比较感兴趣的，不管自己喜欢制作什么类型的音乐，想要完成哪方面的音乐适配，这些app都是非常实用的。</span></p></p>\n              \n'),(145,1,3,'\n              \n              <p><p><span>说到雅思考试，大家都是非常了解的，要想顺利的通过雅思考试，也需要全方面的来加强英语的学习，目前雅思听力app有哪些?如果您的英语还有很大的不足，担心不能顺利通过考试，可在手机上下载这些软件，每天利用业余时间跟着软件上来学习，辅助您顺利的通过考试。</span></p><p><span>1、《雅思听力》</span></p><p><span>这是一款专门针对备战雅思听力考试的人群推出的软件，受到的好评度非常高，汇聚了历年来的剑桥雅思真题，以及剑桥雅思5-11雅思听力真题，全方面的来为你做相应的解析，解决英语听力方面存在的一些问题，拥有三种学习模式，可根据自己的情况来随意的切换。</span></p><p><img width=\"400\" height=\"646\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/8/12c32d954dd2b5f7a5f3729aab2d50f3.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"雅思听力\"  data-wdj-app-id=\"6670113\" data-packagename=\"com.iyuba.ieltslistening\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>2、《小站雅思》</span></p><p><span>这款软件上提供了完整的听力、阅读、练习口语真题题库，以真人口语的方式来一对一模考，快速的提高自己的听力、口语成绩。还会为用户分享课堂干货，是很多准备留学人士手机上必下的一款软件，还提供了雅思口语批改，能够时刻了解自己的成绩。</span></p><p><img width=\"411\" height=\"659\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/3/e7ffdb96ccb64973307942ed8d966acb.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"小站雅思\"  data-wdj-app-id=\"6651644\" data-packagename=\"com.zhan.ieltstiku\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>3、《雅思哥》</span></p><p><span>这款软件上有雅思口语、听力、写作、阅读等全方位的学习服务，专业的视频口语讲解，还有写作范文，根据这些服务来提高自己的英语成绩，这款软件自推出以来受到的好评度非常高，还有广场社区活动可以了解雅思相关的新闻、以及历年来的考试难点和重点，辅助你来通过考试。</span></p><p><img width=\"400\" height=\"668\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/7/3a3fc97e05cb2cc0137c13658ebebd9f.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"雅思哥\"  data-wdj-app-id=\"7045092\" data-packagename=\"com.chutzpah.yasibro\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>4、《莱特雅思》</span></p><p><span>想要顺利的通过雅思考试，这款软件绝对是不可缺少的，能够让你快速的进入到备考状态中，作为一款可以移动的学习功能，用户可以高效专业的来提升自己的学习能力。该软件还会为用户制定个性化服务，可根据自己当前的水平以及时间。来为你规划最合理的学习路线，无论是听力还是口语双管齐下。</span></p><p><img width=\"400\" height=\"644\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/2/a8f7aa2bc5db7ff20bbec518a5a7c108.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"莱特雅思\"  data-wdj-app-id=\"8392387\" data-packagename=\"com.jiaming.ielts\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>5、《听力百分百》</span></p><p><span>无论是关于英语的听力还是读写等多方面，都提供了非常全面的服务，拥有模拟试题、高考真题可以练习，了解自己的英语水平，还设置了边听边答、智能评测。围绕历年来的考点、重点强化训练。让用户能够更快的通过考试，有了这款软件在也不用担心自己考试听力不合格了。</span></p><p><img width=\"402\" height=\"621\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/8/f3afc58783a9b24719bb5db3a2228650.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"听力百分百\"  data-wdj-app-id=\"7741006\" data-packagename=\"com.wanhe.eng100.listening\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>6、《新东方雅思Pro》</span></p><p><span>这也是一款针对备考雅思的人群推出的软件功能非常多，提供了剑桥雅思独家授权正版听力阅读真题。拥有新东方专业老师高分范文，助力你快速的提高自己的英语成绩。这款软件上也有中英文翻译，快速切换等一系列的功能，为用户带来非常不错的学习体验。</span></p><p><img width=\"408\" height=\"614\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/9/c52dd97307d436fcd2999ed08f224fd9.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"新东方雅思Pro\"  data-wdj-app-id=\"8093069\" data-packagename=\"com.koolearn.ieltspro2019\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>以上介绍的雅思听力app有哪些，相信大家也有了一个大概的了解，如果您也正在备战雅思考试，或者是准备雅思考试，都可通过这款软件来学习。每一款都有各自的优势，大家只需要在手机上下载一款自己认为比较适合的学习软件就可以了。</span></p></p>\n              \n'),(146,1,3,'\n              \n              <p><p><span>都说民以食为天，吃好每一餐是很重要的，合理的搭配饮食，不仅能够让身体获得健康，看到色香味俱全的美食，也能让人的心情变好，那么推荐美食的app有哪些，尤其是一些对美食颇有研究的人群，在手机上下载相应的软件，随时就能让你看到各种精美的美食，也可以跟着步骤来学习制作美食。</span></p><p><span>1、《美食天下》</span></p><p><span>在这款软件汇聚了各种美食菜谱，也有很多热爱生活的美食家，通过各种食材来烹饪出美味的食物，画面清晰简洁，操作简单，拥有上百万篇菜谱，无论是家常菜还是西餐以及烘焙食谱、儿童食谱应有尽有。可以跟着软件上推荐的美食来学习，也会时时为您推荐各种味道好、而且又有营养的美食。</span></p><p><img width=\"404\" height=\"679\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/0/d7322699fb066fe3eab96af4d6cb1902.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"美食天下\"  data-wdj-app-id=\"49133\" data-packagename=\"com.jingdian.tianxiameishi.android\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>2、《嗨探》</span></p><p><span>有了这款软件不用在为吃什么而发愁，拥有数百家生活品牌，不仅有各种各样的美食推荐，还有酒店、汽车等各种服务。输入自己所在的地方，就会为您推荐附近的各种美食地址，介绍的非常详细，还有大概的价格或者是评论，很适合经常出差的人群使用。</span></p><p><img width=\"415\" height=\"687\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/11/c0e70a6651717151fcc2ccff91cffdcc.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"嗨探\"  data-wdj-app-id=\"7860199\" data-packagename=\"com.manwei.djz\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>3、《下厨房》</span></p><p><span>想要制作出美味而且营养价值又高的食物，根据这款软件来学习，拥有超多的菜谱，还有官方推荐的美食应用，这款软件还被央视报道为适合年轻人的生活方式。平时工作比较忙碌，闲暇下下来想为家人做几道美味的食物，不妨到这款软件上来，会根据不同的时节推荐各种各样的美食，跟着步骤来学习，让你轻松成为大厨，还可将自己制作的美食发布，获得同样热爱做饭人群的关注和点赞，大家共同来探讨对美食的研究。</span></p><p><img width=\"408\" height=\"671\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/1/98016cd78a75d3011474b93ad5037521.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"下厨房\"  data-wdj-app-id=\"325999\" data-packagename=\"com.xiachufang\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>4、《快手》</span></p><p><span>这是一款能够为大家带来乐趣的软件，由各种有才艺的主播分享生活中有趣的事情和才艺，也有一些美食博主会推荐自己制作的美食方式和步骤，以及讲解每一道美食的营养价值，甚至还有一些专门做探店的博主会为您推荐当地有哪些特色美食，并亲自品尝，所以想要了解各种美食，也可选择这款软件。</span></p><p><img width=\"401\" height=\"668\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/10/5b6bdb1de3876178c86cfa0e96ac27df.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"快手\"  data-wdj-app-id=\"280621\" data-packagename=\"com.smile.gifmaker\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>5、《名厨之家》</span></p><p><span>在这款软件上拥有200万高级厨师用户，会分享制作美食的步骤以及心得，目前这款软件已经获得了众多人士的好评，在该软件上也可以让你更深入的了解厨师的工作，了解餐饮这个行业。想要学习制作美食，可选择这款软件，跟着专业厨师一起来做，让你快速的掌握制作美食的一些方式和要领。</span></p><p><img width=\"400\" height=\"650\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/3/516d2ff65d164a40c18e245ea4b348a8.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"名厨之家\"  data-wdj-app-id=\"7830184\" data-packagename=\"cn.cookhome.mcapp\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>以上为大家介绍了推荐美食的app有哪些，这些app都能够帮助你了解更多美食的做法，自推出以来获得的好评度也非常高，如今使用这款软件的人群是非常多的，有需要的小伙伴们可下载到手机上。</span></p></p>\n              \n'),(147,1,3,'\n              \n              <p><p><span>在对图片编辑的时候，可以选择一些比较好用的app，通过这些app来制作出来的图片，不仅能够提升图片的质量，在画面以及各方面都是很不错的，那么图片编辑助手app下载有哪些?无论您是专业图片编辑人群、还是业余就想制作各种好看的图片，都可了解一下今天介绍的软件，看哪一款使用起来更方便。</span></p><p><span>1、《图片编辑》</span></p><p><span>这款软件使用的人群比较多，功能也比较全面，比如制作各种各样的聊天斗图、还可自制表情包，轻轻松松就能够让你拍出各种搞笑的表情，作为一款聊天必备的斗图软件，深受广大用户的喜爱，拥有各种各样的表情包素材，在软件中导入自己要制作的图片，就可根据自己的喜欢的风格来随意的创作。</span></p><p><img width=\"422\" height=\"664\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/1/e34d98238eedf9d99f2a1b5772ab47b5.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"图片编辑\"  data-wdj-app-id=\"8339799\" data-packagename=\"com.shaqiucat.doutu\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>2、《美图秀秀》</span></p><p><span>如今使用这款软件的人群是非常多的，不仅能够帮你拍摄出美美的照片，还支持后期图片的修饰，比如眼睛放大或者是制作大长腿的效果，都能帮您操作，拥有超多修图的功能，即使是第1次使用，也能快速的制作出各种图片，还有共享修图功能，支持多人同时修合照，达到满意的效果为止。</span></p><p><img width=\"402\" height=\"667\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/8/73f08bd544e6145cf3d28e2db1ce8cc0.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"美图秀秀\"  data-wdj-app-id=\"37577\" data-packagename=\"com.mt.mtxx.mtxx\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>3、《海报制作秀》</span></p><p><span>用这款软件可制作各种类型的海报，拥有上百款精美的素材，无论是制作哪方面需要的海报都能满足，可根据自己的需求来加字、添加特效，打造完美的视觉大片，尤其是从事招聘方面的工作人群，就可用这款软件来制作招聘海报，既节省时间而且又非常方便。</span></p><p><img width=\"402\" height=\"587\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/4/bcb03995329669d56a2dd3d84c48ebe0.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"海报制作秀\"  data-wdj-app-id=\"7829372\" data-packagename=\"com.hefeihengrui.haibaomade\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>4、《文字图片制作》</span></p><p><span>想要让自己的图片更具有艺术感，选择这款软件来制作，绝对不会让你失望。要修饰的照片添加各种滤镜或者是添加贴纸，以及在图片中加文字等等操作比较简单，拥有改变文字效果可随心选则，而且这款软件还深受一些社交媒体达人的喜爱。</span></p><p><img width=\"402\" height=\"648\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/11/efedc8e7e62d585d82e7f342535a3fea.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"文字图片制作\"  data-wdj-app-id=\"8064456\" data-packagename=\"com.myd.textstickertool\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>5、《图片修复大师》</span></p><p><span>如果老照片模糊了，但是非常有意义，就可以通过这款软件来修复操作非常简单，只需要轻松的几个步骤就能将照片的清晰度恢复，用这款软件也可以给黑白照片上色，或者是对图片进行各种编辑处理、以及制作可爱的头像等等，都能满足大家的这些要求。</span></p><p><img width=\"404\" height=\"666\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/11/e0fb1f909f877598274140f011a3a289.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"图片修复大师\"  data-wdj-app-id=\"8178000\" data-packagename=\"com.bxsoftx.imgbetter\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>6、《照片编辑P图》</span></p><p><span>作为一款功能非常强大的照片编辑和p图软件，操作比较简单，使用的工具却非常多，比如滤镜、裁剪、场景、相框等等，不需开通会员就可使用，还可一键生成各种好看的图片，可以分享给身边的好朋友或者是发送朋友圈，还有海量的贴纸供用户选择。</span></p><p><img width=\"401\" height=\"640\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/1/52a876d225f40e8529decbda9075cf45.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"照片编辑P图\"  data-wdj-app-id=\"8075043\" data-packagename=\"com.pang.xiutu\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>想要了解图片编辑助手app下载有哪些，可参考以上小编介绍的这些，内容非常全面，介绍的也非常详细，选择一款自己认比较认可的软件，下载到手机上，在有做图需求的时候，打开这些软件就能帮你制作出各种各样的图片。</span></p></p>\n              \n'),(148,1,3,'\n              \n              <p><p><span>去看明星的演唱会或者是到机场接人等多种场合，有很多人都会做一些有趣的动画显示屏。需要改上面的字的时候，就不知道该如何操作了，今天来介绍显示屏改字用什么软件，这些软件都是很受欢迎的，而且实用性也比较强，下载到手机上随时随地就可以设置各种显示屏字幕。</span></p><p><span>1、《弹幕显示屏》</span></p><p><span>如果想要在手机上制作文字滚动的效果，一定要选择这款软件，操作比较简单，能够将文字滚动效果与手持弹幕完美的结合，适用于多种场面，比如偶像见面或者是电子竞技赛场等等。还可更改颜色、添加各种特色，无论是喜欢的图片还是自己拍摄的视频都可应用。</span></p><p><img width=\"402\" height=\"674\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/5/d7ea487c3c99c43a3bf8722ecdf4c433.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"弹幕显示屏\"  data-wdj-app-id=\"8129451\" data-packagename=\"com.qiaoxi18.danmuxianshiping\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>2、《LED跑马灯滚动字幕显示屏》</span></p><p><span>很多小伙伴对这款软件的认可度比较高，不仅是因为它能够制作各种字幕，也能添加各种各样的效果，当然对已经制作好的、想要修改直接就可以操作，还可添加背景特效，深受广大用户的好评，让你制作出非常受欢迎的绚丽的文字灯牌。</span></p><p><img width=\"401\" height=\"674\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/3/ea07ddc0d3678f86e97caf66ae674f86.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"LED跑马灯滚动字幕显示屏\"  data-wdj-app-id=\"8119247\" data-packagename=\"com.cn.shuangzi.ledscreen\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>3、《字幕大师》</span></p><p><span>拥有这款软件可应用于多个场景中，只需要将文字输入进去，就会为你展示出非常独特个性的字幕，还有跑马灯效果，没有复杂的操作流程，通过跑马灯效果制作出好似在奔跑的文字是非常吸引人们关注的，可根据自己的喜好来选择字体颜色，还有弹幕速度可调，让你的弹幕更加的受关注。</span></p><p><img width=\"418\" height=\"685\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/11/53c9343e0d55bcba8467d28070d836ce.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"字幕大师\"  data-wdj-app-id=\"8120463\" data-packagename=\"com.huihai.zimudashi\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>4、《字幕助手》</span></p><p><span>这款软件深受热爱制作短视频人群的好评，不仅可以在视频中添加字幕，也可帮你剪辑视频，制作受欢迎的为VLOG，轻松地在视频中添加各种各样的文字，不满意的也可直接修改，还能添加音乐，拥有专业的去水印功能，各种好看的水印模板任用户选择，不需要的直接去掉就可以了，是非常受欢迎的。</span></p><p><img width=\"414\" height=\"668\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/5/7e2955292ab6db47578eb0fb08cf98ee.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"字幕助手\"  data-wdj-app-id=\"8129283\" data-packagename=\"com.shichai.zimu\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>5、《爱字幕》</span></p><p><span>想要让你的视频制作的更醒目，更吸引关注，想在视频中添加字幕都可选择这款软件，功能强大，操作简单，不仅能够满足在制作视频时的各种需求，还能让你制作出独具特色的视频，无论是参加自己喜爱明星的演唱会，还是求婚或者是过生日以及开party需要的led显示屏都能为您打造，拥有非常个性化的服务功能。</span></p><p><img width=\"401\" height=\"661\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/10/951c227a678668c2dcebcbcfe8b442f8.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"爱字幕\"  data-wdj-app-id=\"8259192\" data-packagename=\"com.jtfh.aizimu\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>6、《字说视频字幕动画》</span></p><p><span>该软件拥有四大功能，每一个功能都有详细的分类，非常全面，可一键识别字幕，也可自定义模板或者是颜色以及字体，拥有各种风格的背景可选择，还可将自己制作完的字幕动画分享导出，或者是保存到手机上，总而言之，这款软件的功能是非常强大的。</span></p><p><img width=\"402\" height=\"666\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/6/3921dc009b214546f05ab924e6b7921a.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"字说视频字幕动画\"  data-wdj-app-id=\"7935641\" data-packagename=\"com.smallyin.wordsaying\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>如果您还不知道显示屏改字用什么软件比较好，以上推荐的这些软件都能帮你解决这个问题，不仅可修改显示屏上的字，并且还可设置更多有趣的字幕，这几款软件最主要是操作比较简单，功能也很多，深受广大人群的好评。</span></p></p>\n              \n'),(149,1,3,'\n              \n              <p><p><span>有很多家长从小就会给孩子讲儿童故事，让孩子从小养成听故事的好习惯，其实多听一些有趣的小故事也是很有意义的。热门的小朋友听故事的app推荐有哪些，选择相应的软件下载到手机上，每天给孩子听一些有趣的故事，还能激发孩子的想象力，或者是孩子的表达能力，是非常重要的。</span></p><p><span>1、《故事多多》</span></p><p><span>很多家长对这款软件的评价比较高，不仅有各种类型的儿童故事，还有热门动画片，英文儿歌，为孩子打造全方面的学习，也让孩子有一个充满快乐的童年。</span></p><p><img width=\"401\" height=\"660\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/1/9cc0bbdcfa5bd0de2b0ad6c8b3092fca.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"故事多多\"  data-wdj-app-id=\"8089964\" data-packagename=\"com.shoujiduoduo.story\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>2、《奇妙故事创造家》</span></p><p><span>很多儿童对这款软件比较认可，打造了多个主题场景，宝宝可以沉浸式的体验，就像是进入到画面中一样，也可以听各种有趣的故事来激发宝宝的想象力。</span></p><p><img width=\"401\" height=\"719\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/9/6609c3c5c86193a214a619726bcc4d03.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"奇妙故事创造家\"  data-wdj-app-id=\"8125561\" data-packagename=\"com.sinyee.babybus.market\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>3、《酷狗音乐》</span></p><p><span>虽然这是一款听歌的软件，但是这款软件的功能非常大，在听歌过程中可看mv，也可在这款软件上听儿歌故事，滚动播放各种类型的故事应有尽有。</span></p><p><img width=\"410\" height=\"676\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/11/dccd28b3f2bda0c4d697c7d62b5c0d44.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"酷狗音乐\"  data-wdj-app-id=\"34221\" data-packagename=\"com.kugou.android\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>4、《阿布睡前故事》</span></p><p><span>想要让孩子听到更多的故事，就可选择这款软件，拥有动画视频深受小宝宝的喜爱，在该软件上听故事还能促进脑力发育，如果是孕期的准妈妈，也可以用这款软件来做胎教。</span></p><p><img width=\"550\" height=\"335\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/11/00a7af25a2376d3ccb8b49aaa5e7086f.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"阿布睡前故事\"  data-wdj-app-id=\"7603910\" data-packagename=\"com.android.abustory\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>5、《口袋故事》</span></p><p><span>这款软件涵盖了0~15岁儿童可以阅读的书籍，目前在线使用用户高达上万人，丰富的课外读物，还有奇幻冒险、历史名人、热血军事的内容可满足不同小朋友的热爱。</span></p><p><img width=\"400\" height=\"609\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/6/f50f03dddaa8d18da84658895cc13525.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"口袋故事\"  data-wdj-app-id=\"35439\" data-packagename=\"com.appshare.android.ilisten\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>6、《火火兔》</span></p><p><span>涵盖了上千万的儿歌故事、国学，通过这种方式来培养孩子的阅读兴趣，如果家里有0~6岁的宝宝，家长可下载这款软件来为孩子做好启蒙教育。</span></p><p><img width=\"400\" height=\"664\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/11/acda30905700ad48a98b2e13b14f60d7.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"火火兔\"  data-wdj-app-id=\"7253806\" data-packagename=\"com.booyue.babylisten\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>7、《北奇星绘本》</span></p><p><span>在这款软件上有大量的绘本故事，多多看一些绘本或者是听故事，都能让孩子对学习感兴趣。当然这款软件上还添加了优质的英文故事儿歌，可以学习英文。</span></p><p><img width=\"408\" height=\"639\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/3/308756815f4438331d8a8daf738f29ee.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"北奇星绘本\"  data-wdj-app-id=\"8088672\" data-packagename=\"com.mizhongtech.huiben\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>8、《小企鹅乐园》</span></p><p><span>该软件最大的优势就是占用的内存空间比较小，功能却非常大，拥有各种好看的故事书，还添加了护眼模式，在阅读过程中没有广告的打扰。</span></p><p><img width=\"425\" height=\"702\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/1/0c6f222a691507068b9297d9bc7992a8.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"小企鹅乐园\"  data-wdj-app-id=\"7094322\" data-packagename=\"com.tencent.qqlivekid\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>9、《兔小贝儿歌》</span></p><p><span>很多小朋友都非常喜欢这款软件，汇聚了很多好听的儿歌、还有故事、动画片以及互动认知小游戏，来提高宝宝的学习能力，同时还有培养宝宝好习惯比如刷牙、懂礼貌等。</span></p><p><img width=\"415\" height=\"648\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/4/e461a35a0a10b0c49ab5629111a8e643.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"兔小贝儿歌\"  data-wdj-app-id=\"6549363\" data-packagename=\"com.yxeee.tuxiaobei\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>10、《懒人听书》</span></p><p><span>这款软件不仅可听儿童故事，成年人也可到该软件上来听一些书籍，拥有海量的小说，还有当下的热门咨询，可第一时间了解到。</span></p><p><img width=\"400\" height=\"645\" src=\"https://android-imgs.25pp.com/fs08/2024/03/25/9/1e768d9d72d22f262da3100945e250c3.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"懒人听书\"  data-wdj-app-id=\"280207\" data-packagename=\"bubei.tingshu\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>想要了解小朋友听故事的app推荐有哪些，这几款软件不仅可听故事，还可听儿歌或者是其它方面有趣的内容，受到了很多家长的好评，选择一款下载到手机上，每天给孩子听半个小时的故事是非常有益的。</span></p></p>\n              \n'),(150,1,3,'\n              \n              <p><p><span>在学习英语的时候掌握单词也是必不可少的，除了比较简单的单词，可以用于英语的沟通和交流，如果想要让自己的英语水平得到很大的提高，单词的数量也应该有所增加，那么学单词的app有哪些呢？如果自己想要提升学习英语单词的数量，或者是想要完成更多的英语任务，可了解一下，今天给大家介绍的这几款。</span></p><p><span>1、《简单学单词》</span></p><p><span>对于初学者来说，可能会觉得英语学习特别的困难，想要记住更多的单词，就需要很长的时间进行记忆，但有了这款专门学单词的app以后就不需要担心了，它能给每个用户提供翻译以及自行设定目标的功能。每天要学习多少单词的数量或是想要学习什么类型，都是比较容易的，因为此app当中涵盖诸多的英语单词，还有刷新信息的功能。</span></p><p><img width=\"405\" height=\"750\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/6/9e3b02737861b6ed247e16d9ec2ba20c.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"简单学单词\"  data-wdj-app-id=\"8339922\" data-packagename=\"com.lt.english\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>2、《扇贝单词英语版》</span></p><p><span>此app是很多考研的人，甚至是准备考英语四六级以及托福雅思等考试时，都在使用的学英语app，里边既有诸多的英语单词，可让用户满足记单词的需求，还有免费无上限的单词数量。平时的时候还可通过做里边的真题例句以及训练模式来学习更多的英语，在记单词的时候，这里还有非常好的记忆方法，是很多人在各种英语考试时必不可少的。</span></p><p><img width=\"407\" height=\"664\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/10/6e9d11d38d947bc7e678a312575b07c2.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"扇贝单词英语版\"  data-wdj-app-id=\"2411619\" data-packagename=\"com.shanbay.sentence\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>3、《英文翻译》</span></p><p><span>此app的功能特别强大，不仅能帮助用户更好地学习英语背单词，具备更多的英语水平以外，还有文档翻译，文本翻译等诸多的功能，其中的语言包括俄语、法语、泰语等各个国家的单词，支持多种语言都可与中文进行互相翻译，结果准确。如果在出国旅游或者是日常办公的时候有需求，这是一个高效的app，支持扫描翻译，以及从电脑端或者其他应用翻译。</span></p><p><img width=\"421\" height=\"697\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/9/b9ce07878207ca4abda6d1942a8cc745.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"英文翻译\"  data-wdj-app-id=\"8214614\" data-packagename=\"com.daiwenwei.translator\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>4、《极光单词》</span></p><p><span>此app是线上英语学习平台，如果自己想要背单词，不管自己在什么样的水平都可在app当中完成自己的学习任务，非常适合经常在背单词的时候比较拖延，又喜欢中途放弃，记不牢等问题。涵盖各种类型的词汇，比如旅行，英语商务以及各种应试时所需要的内容，只需每天花费10分钟左右的时间，通过日积月累的方法就能够掌握更多的。</span></p><p><img width=\"402\" height=\"679\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/8/3ec9473caf6e9c59bf0af8c3bd8f871a.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"极光单词\"  data-wdj-app-id=\"7956964\" data-packagename=\"com.qingclass.jgdc\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>5、《星火英语》</span></p><p><span>如今有很多的大学生为了可以让自己拥有好的就业机会，都会通过英语四六级考试来满足需求，此app就是很多大学生都在使用的英语四六级考试助手，既可以了解一下自己的英语真实水平，也能够帮助记住四级六级的英语单词，搞定英语四级和六级的听力等。与几百万的小伙伴共同进步，支持离线下载，可随时随地听图书的配套内容，让自己的英语能力得到很大提升。</span></p><p><img width=\"413\" height=\"694\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/9/4a9d1778385941ff9bca1f0f73a86a45.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"星火英语\"  data-wdj-app-id=\"7061730\" data-packagename=\"tuoyan.com.xinghuo_daying\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>关于学单词的app有哪些今天就给大家介绍到这里，不管自己是哪个阶段的学生，或者是已经步入社会，想要学习单词的话，这些app都是比较好用的，在学习英语的时候一定要不断的坚持，千万不能半途而废。</span></p></p>\n              \n'),(151,1,3,'\n              \n              <p><p><span>平时生活节奏较快，根本没有太多的时间到电影院观看一部喜欢的影视作品，而影视app就成为人们观影首选方式。通过app观看喜欢的影片，还能详细了解各种热门评论，那么影院app免费观看推荐哪些？现在大部分app都有全面的投屏功能，可直接投放到大屏幕上，感受流畅，大屏观看体验，接下来为大家推荐几款免费观影软件。</span></p><p><span>1、《哔哩哔哩》</span></p><p><span>主打免费无广告，无论是动画、纪录片还是影视又或者是游戏视频，都是可以免费无广告观看的。当前有很多优秀的电影正在这里热播中，比如人们喜欢的安娜、奥本海默等等。</span></p><p><img width=\"402\" height=\"620\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/0/6d94d24236dd28d96aceaaff6d148582.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"哔哩哔哩\"  data-wdj-app-id=\"281291\" data-packagename=\"tv.danmaku.bili\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>2、《西瓜视频》</span></p><p><span>这是热门短视频平台，每月都会超过300多万，创作人可以与他们共同感受生活的美好，还推送出热门放映厅，打造你的专属私人影院，足不出户就能看大片。各种经典电视剧，高分电影热门，综艺精品内容都能在这里畅想观看，有4k高清模式。</span></p><p><img width=\"402\" height=\"609\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/3/54c3ad4d9c6920fc204e8e445ecb2fb9.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"西瓜视频\"  data-wdj-app-id=\"7063907\" data-packagename=\"com.ss.android.article.video\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>3、《电视直播》</span></p><p><span>几百万用户都在使用的央视高清电视频道直播平台，覆盖各大央视卫视电视台，热播电视剧电影等热门资讯全面包含，收录1~17套央视节目，有较多的综艺以及国防军事。</span></p><p><img width=\"396\" height=\"596\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/10/4c489ac8ad704f6ac0322a1a18a6184b.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"电视直播\"  data-wdj-app-id=\"7750569\" data-packagename=\"com.rumtel.pandatv\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>4、《电影频道》</span></p><p><span>与cctv6全面同步电影首映礼以及见面会都能在这里看到，有高清纯净式vr视频，可以了解喜欢的影视明星。有几百位资深影评和电影达人，每天都会给予一系列良心评价。</span></p><p><img width=\"406\" height=\"569\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/3/59666f26c6846fc8d185abc0510a5e78.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"电影频道\"  data-wdj-app-id=\"7618694\" data-packagename=\"newmediacctv6.com.cctv6\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>5、《今日看影视大全》</span></p><p><span>有丰富的影视资源，还有各种综艺节目以及动漫都能在这里免费观看，给大家带来绝美的观影体验，即便有很多经典影片，依旧能在线搜索，给你带来全面又独特的观影乐趣。</span></p><p><img width=\"396\" height=\"548\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/5/3b27bcd5f302c5e12696849c3b0dcb8f.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"今日看影视大全\"  data-wdj-app-id=\"8391738\" data-packagename=\"com.yongxi.jinri\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>6、《泰剧TV》</span></p><p><span>专为泰剧的聚合类平台，可以收集到各种热门泰剧信息，并准时提醒你观看相关作品。热门台剧上映之后，都会为小伙伴们深度解剖，更有精彩评论让你追剧值部错过。</span></p><p><img width=\"396\" height=\"515\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/0/2151167b09482edce1437b1a2a1a87a9.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"泰剧TV\"  data-wdj-app-id=\"8341559\" data-packagename=\"com.taiju.tv\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>7、《影视工场》</span></p><p><span>热门影视推荐平台，如果你是电视剧迷的话，特别喜欢追星，这款软件不能错过其中有耳熟能详各大爱豆明星的经典影视作品，每一步都值得尝试，让你回味无穷。</span></p><p><img width=\"402\" height=\"618\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/11/54141bab867334bbbdeacf305523ff28.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"影视工场\"  data-wdj-app-id=\"8390576\" data-packagename=\"com.lxjxf.yscjgc\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>8、《毒舌影视》</span></p><p><span>想要了解一部影片是否值得观看，可以在这款软件中在线搜索，有500多位当红影评已经入驻其中，比如人们喜欢的电影派、肉叔等等，还有新鲜资讯明星专访以及片方案例等多种功能。</span></p><p><img width=\"402\" height=\"588\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/5/4b73d70d8c641a7af3c9059556f27eb3.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"毒舌影视\"  data-wdj-app-id=\"7580620\" data-packagename=\"com.dushe.movie\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>9、《趣看影视》</span></p><p><span>不可错过的追影app提供海量精彩内容，根据个人喜好选择热播好剧。为广大朋友带来优质的观影乐趣，各类解说资源让你高效沉浸在其中，好休息的小伙伴不能错过，赶快下载。</span></p><p><img width=\"401\" height=\"546\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/5/86c37e4462c22d066f472d4abfd42843.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"趣看影视\"  data-wdj-app-id=\"8390113\" data-packagename=\"cszy.qkys.uhgd\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>10、《大师兄影视》</span></p><p><span>想要寻找好电影，可以来到大师兄，这是影视评价达人的聚集地，每日更新全球新鲜资讯，全网神剧评价都能在这里找到，让你从此摆脱片荒。</span></p><p><img width=\"408\" height=\"678\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/7/101927633b2a579d623dbdb4b2de740a.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"大师兄影视\"  data-wdj-app-id=\"8390956\" data-packagename=\"com.lxpst.xczjbfq\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>以上关于影院app免费观看推荐哪些的相关内容就为大家介绍到这里，以上推荐的几款软件都很值得选择，片海无涯总有一款你想看到每天为你量身推荐和口味的好电影，读懂之前错过的好作品。</span></p></p>\n              \n'),(152,1,3,'\n              \n              <p><p><span>地平线西之绝境的整个游戏进程之中，有个地点非常特殊就是地平线西之绝境狩猎场，这里不仅仅可以让大家磨练自己的战斗技巧，还能获取非常不错的奖励。每个狩猎场都提供了独特的挑战，只要大家拥有不错的操作机技巧就能让我们获取竞技场中最终的胜利，下面就一起看看吧！</span></p><p><img width=\"500\" height=\"250\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/8/937c605777303d442b8e922188e0d556.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span>《biubiu加速器》最新下载地址</span></p><p><span><div class=\"__cdl\" data-appname=\"biubiu加速器\"  data-wdj-app-id=\"7854150\" data-packagename=\"com.njh.biubiu\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>狩猎场分布在游戏的不同区域，每个狩猎场都包含三个试炼，共有四个狩猎场等待我们的挑战。这些试炼不仅考验大家的战斗技巧，还需要我们对各种机械怪拥有足够的认识、对机械兽行为模式的理解，尤其是在丹特狩猎场的试炼，就会要求玩家在限定时间内击败特定数量的机械兽，这需要玩家熟悉各种机械兽的弱电和陷阱的使用才能限时通关。</span></p><p><img width=\"500\" height=\"227\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/0/ede03c0c141708256bf215fbd7f89c6c.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span>而且每个试炼都有不同的胜利条件，从简单的击败机械兽到更复杂的任务，如使用特定武器或技巧。要获得最高奖励，就需要达到试炼的金牌标准。这就要求大家必须有精通各种战斗技术，并且能够在压力下保持操作不变形。而且狩猎场的试炼还可以帮助大家提升角色的技能和装备。通过完成试炼，可以获得勋带，这些勋带可以用来兑换强化您角色的装备和技能。</span></p><p><img width=\"500\" height=\"267\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/5/b73d301bad8002fc3e8ed4226edd5100.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span>地平线西之绝境的狩猎场中，除了我们要精通武器与了解敌人之外，最重要的还是大家的网速一定要稳定，一旦出现了网络波动轻则卡顿掉帧，重则直接进程中断，但是大家只要使用一下biubiu加速器就会发现原来海外3a也能如此丝滑。</span></p><p><img width=\"500\" height=\"283\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/9/a1f1bc0e7596f094462936e1138899b0.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span>现在对于biubiu的新用户来说有一个特别的优惠。只要</span><span style=\"color:rgb(255, 0, 0)\">新注册上线就能直接拿24小时的免费加速时间</span><span>。而且老玩家也有好礼，新老玩家都能用兑换码——</span><span style=\"color:rgb(255, 0, 0)\">biubiu001</span><span>，去在兑换界面领取为期三天的免费加速时间。也就是说新用户仅需简单操作就能入手</span><span style=\"color:rgb(238, 0, 0)\">96小时</span><span>的免费加速时间！</span></p><p><img width=\"500\" height=\"279\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/3/8494897e6210e2244bc132d43cba4eae.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span>在进行试炼时，注意观察环境。利用高地进行攻击，或是引诱机械兽进入陷阱，都是取胜的关键策略。而且竞技场的橙色武器，它们是游戏中的顶级装备，在陷阱技能、捕手技能树、陷阱勇气激增方面都有提升。需要玩家在狩猎场中表现出色，收集足够的勋带来兑换。</span></p><p><img width=\"500\" height=\"276\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/1/ee8c2572adee29448a0bd766c6830fc8.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span>地平线西之绝境狩猎场怎么玩我们就介绍到这了，除了以上介绍的玩法之外，大家还要注意狩猎场的试炼是可以重复挑战的。如果未能一次性达到金牌标准。多次尝试会让阿加更熟悉试炼的流程，也能够帮助我们发现新的战斗策略。相信大家一定可以顺利拿到竞技场套装，成为地平线西之绝境中的陷阱高手！</span></p></p>\n              \n'),(153,1,3,'\n              \n              <p><p><span>无论是学生还是成年人，多多阅读一些书籍是非常不错的，尤其是有一些名著中都蕴藏着很深刻的人生哲理，通过读书也能给人带来很多的启发，网上租书借书app有哪些?如果你也很喜欢读书，就可选择这些app下载到手机上，想看哪本书籍直接到app上去租借就可以了，非常的方便。</span></p><p><span>1、《藏书馆》</span></p><p><span>在这款软件上具有200万本书籍都可免费借，该书还开设了免费借阅模式，拥有多种功能，通过全方位来帮你解析阅读书籍，通过思维导图可以让你了解更多的书籍，并且也能阅读到更多的书，为了满足大众用户的需求，还添加了很多的功能，比如拥有共读功能，是可以和一起热爱读书的人群交流分享心得，从而养成阅读的好习惯。</span></p><p><img width=\"406\" height=\"656\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/2/b65c160bfc6c62b45491ae82d77d0105.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"藏书馆\"  data-wdj-app-id=\"6565845\" data-packagename=\"com.cliff\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>2、《当当》</span></p><p><span>在这款书软件上能够接触到的书籍都是正品，完全是有保障的，各种各样的书籍应有尽有，无论是现在的小说，还是古代的书籍都能阅读到。该款软件具有很多的优势，占用的内存空间也比较小，完全不用担心，在阅读书籍的时候出现卡顿等一系列不良的现象，推出的新书也会在第一小时通知。</span></p><p><img width=\"407\" height=\"574\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/9/8660a4bba465b31d9fd3eff9bfca3e36.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"当当\"  data-wdj-app-id=\"301109\" data-packagename=\"com.dangdang.buy2\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>3、《一淘》</span></p><p><span>作为一款大众人群非常认可的软件，不仅能够买到看到各种好书，还能买到生活中需要的各种好物，这款软件具有账号通用功能，减少了注册的繁琐。可以搜索到的商品却是非常多的，而且分类也非常详细，能够快速地找到自己所需要的书籍，还可将自己买的好物分享，让更多的人看到，这一功能是非常受欢迎的。</span></p><p><img width=\"400\" height=\"615\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/10/f8a4fa8373160e28535bb6e2ac145f18.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"一淘\"  data-wdj-app-id=\"280951\" data-packagename=\"com.taobao.etao\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>4、《咪咕云书店》</span></p><p><span>在这款软件上汇集的书籍种类非常多，有励志类型的，还有文言小说、亲子、人文社科等等，各种书籍应有尽有，能够满足不同年龄段人群看书的需求。该软件还连接了线下的书店，为了了解更多人群对买书的需求，这款软件也在不断的更新做调整，总而言之，在这款软件上读书不仅能让你养成阅读的好习惯，同时还能了解很多知名作家创作的魅力。</span></p><p><img width=\"446\" height=\"652\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/3/c379d2128c71bf08570930b5ea9234ca.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"咪咕云书店\"  data-wdj-app-id=\"6747034\" data-packagename=\"com.migu.book.zhongxin\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>5、《支付宝》</span></p><p><span>这款软件的功能非常大的，不单单是用于转账以及查询快递等等，很对用户并不了解它还有借书的功能，目前这款软件已经于8,000万商家合作，共同来为用户打造便利的服务，如今已经获得10亿用户的好评，所以拥有这款软件，可以获得多方面的功能，是非常适合热爱看书的人群使用。</span></p><p><img width=\"440\" height=\"629\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/0/4f01dd071136c19615fb0ce0f127a7f0.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"支付宝\"  data-wdj-app-id=\"279979\" data-packagename=\"com.eg.android.AlipayGphone\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>以上为大家介绍了网上租书借书app，这几款app都有着各自的优势，功能都非常强大，非常适合热爱看书的人群，如果您对看书也比较感兴趣，建议一定要在手机上下载一款，闲暇无聊的时候多看书是很不错的。</span></p></p>\n              \n'),(154,1,3,'\n              \n              <p><p>浪人崛起是一个主题叫以战斗为中心的开放世界的角色扮演游戏，其中有一个契约的条件的主任务需要玩家先完成支线一个有关浪人崛起久坂玄瑞的任务，很多玩家不知道这个支线任务的地点和流程，导致了主线任务的停滞，所以小编今天给大家带来了完成支线任务的详细攻略。</p><p><img width=\"756\" height=\"426\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/2/8c088153f8b9cb027c88d9a129436b42.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>【biubiu加速器】最新版下载</p><p>第一小编将告诉大家任务的完成地点，首先去领取任务的地点户部区域然后找到npc久坂玄瑞，玩家与其进行对话后可知，他请求作为主角的玩家与其一同去击杀贪官污史。对话结束以后，玩家同意一同前往便可与久坂玄瑞驾驶马车前往目的地。</p><p><img width=\"755\" height=\"425\" src=\"https://android-imgs.25pp.com/fs08/2024/03/26/4/a8761275bc35827fd893d6ec8739b19d.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>到达目标地点后玩家可以看见一个房子，并且周围有特别多的敌人防守，玩家需要与久坂玄瑞一起清理掉房子外围的敌军，清理完毕以后便可从正门进入房子，刺杀目标人物贪官污史。刺杀完毕以后与久坂玄瑞完成任务对话，该任务即算完成。</p><p></p><p><img width=\"766\" height=\"429\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/3/e635c20ac23419d5a3ad2fc6cf652ade.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>不过要注意的是房子外围的敌军数量是特别多的，玩家若清理不过来，便可以选择悄悄潜入，任务的完成最后主要依靠清除贪官。在潜入时要特别小心，稍有不慎便可能被敌军反杀，为了避免网络的原因导致画面卡顿让玩家躲避不及时，小编强烈建议大家使用biubiu加速器。</p><p><img width=\"718\" height=\"363\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/8/994e4ccce228073daf369ed02386174d.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>而且新老用户只需要输入一个兑换码【<span style=\"color:rgb(238, 0, 0)\">biubiu001</span>】就能享受到三天的加速时长，<span style=\"color:rgb(255, 0, 0)\">新人注册更是还有额外的24小时</span>，还能与兑换码时长累加起来，达到<span style=\"color:rgb(255, 0, 0)\">96个小时</span>，足够玩家完成这个主线任务。</p><p><img width=\"749\" height=\"412\" src=\"https://android-imgs.25pp.com/fs08/2024/03/26/5/9bff04b65c72e06c64196576e5ec3ac7.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>有关浪人崛起久坂玄瑞的任务虽然只是一个支线任务，但不完成这个任务就会影响玩家的进程。希望小编上述的攻略能给各位带去帮助，让玩家在游戏中清晰具体知道要怎么做在哪里做这个任务。还想知道有更多关浪人崛起的任务攻略的可以关注小编，小编会继续为大家带来精彩内容。</p></p>\n              \n'),(155,1,3,'\n              \n              <p><p><span>要想从事消防方面的工作则需要有资格证书才可以，近些年来有很多人都想考取消防证书，但是考取证书并不是很容易，需要平时多多的刷题，那么消防刷题库的app有哪些?如果你也准备考取消防证书，一定要选择一款软件，每天抽出半个小时的时间来刷题，才能提高考试通过的效率。</span></p><p><span>1、《万题库》</span></p><p><span>无论是准备考消防证书还是考会计证、以及一建、二建等等都可到这款软件上来学习，涵盖了英语四、六级、教师资格等等功能非常全，每一个类型都有相应的分类，拥有优质的教育资源，每一道试题讲解的非常详细，还有历年来考试的核心必考点，通过大数据技术不断地推出一些历年来考试的必考题，该软件是由知名的名师团队打造，助力你快速通过考试。</span></p><p><img width=\"440\" height=\"624\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/0/e527826cbc0135956ab3cb68cd7cc3df.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"万题库\"  data-wdj-app-id=\"7044350\" data-packagename=\"com.exam8.wantiku\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>2、《消防工程师》</span></p><p><span>这款软件相信大家也是比较熟悉的，非常适合上班族的一级消防工程师刷题，涵盖的内容非常全面，比如有安全技术理论以及安全技术综合能力等等，上万道考试真题以及模拟题，针对每个类型的划分非常详细，选择相应的章节跟着进度来学习，不同题型也有相应的分类，可根据题型的顺序来练习，也可将错题收藏，下次着重练习。</span></p><p><img width=\"417\" height=\"675\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/1/4c1e1f0f9e3428202c8b9fde61c749be.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"消防工程师\"  data-wdj-app-id=\"7619250\" data-packagename=\"com.ggeye.kaoshi.xiaofang\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>3、《消防设施操作员考试宝典》</span></p><p><span>目前这款软件的用户达到了上百万，作为一款非常专业并且全面的题库类型应用软件，为消防设施操作员考试做足了充分的准备，打开该软件直接跟着上面提供的题型来练习是非常不错的，还设有模拟考试功能，可提前了解考试时的一些需求。</span></p><p><img width=\"409\" height=\"682\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/6/d39791c1a0682635a85d3fa2df232454.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"消防设施操作员考试宝典\"  data-wdj-app-id=\"8364415\" data-packagename=\"yc.com.fireFightingEquipmentOperator\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>4、《一级注册消防工程师 》</span></p><p><span>作为一款由名师汇总精编的软件，知识点解析详细，紧扣考试大纲，下载到手机上，随时有时间打开，就能跟着软件上来学习，拥有每年高频率的必考题，还新增了考点和精编题目，通过全方位来帮助学员快速的通过考试，也可将一些重点题收藏标记、或者是错题记录。</span></p><p><img width=\"400\" height=\"682\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/4/aa778f55697a345fbfab6c085e036f72.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"一级注册消防工程师\"  data-wdj-app-id=\"8096912\" data-packagename=\"io.dcloud.UNI3D1FF3C\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>5、《消防工程师原题库》</span></p><p><span>这是一款专门为消防工程师考试学员打造的软件，内容丰富题型多多，还会将每年考试的易错点以及必考点推出，拥有多项功能，从全方面来帮助用户快速的通过考试，尤其是一些平时比较忙，没有时间一直学习的人群，能助力你快速的了解自己的水平，跟着这款软件来学习。</span></p><p><img width=\"407\" height=\"675\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/8/b4d73d8f8497a232bbfa69654a5b8d36.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"消防工程师原题库\"  data-wdj-app-id=\"8383648\" data-packagename=\"com.changxue.xiaofang\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>以上小编为大家介绍了消防刷题库的app，这几款app各有各的优势，每一款上面都有大量的题库，非常适合准备考消防证书或者是已经从事消防工作的人群使用，在手机上下载任意一款，能为你带来多方面的优势。</span></p></p>\n              \n'),(156,1,3,'\n              \n              <p><p><span>喜欢跳舞的人群是非常多的，有很多人喜欢跟着舞蹈教学视频来学习，这种方式也是非常不错的，视频里的讲解非常清楚。就像是跟着现场老师上课一样，那么舞蹈教学app推荐有哪些?这些app主要是针对热爱跳舞的人群，如果你也想跳舞或者是通过跳舞来让自己保持一个好的体态，都可下载相关的软件。</span></p><p><span>1、《热汗舞蹈》</span></p><p><span>想要通过跳舞来塑造好的身材，跟着视频上专业的老师来练习，不仅能达到塑形减脂的效果，还能让你通过跳舞找到更多的乐趣，拥有多种舞蹈风格可选择，比如非常酷的街舞、也有尊巴舞、有氧操等等，无论是平时就很喜欢跳舞，还是第1次跳舞的人群都可以先选择适合自己体能和节奏的来练习。</span></p><p><img width=\"415\" height=\"679\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/9/e55930deb00d8e4f1c0a5a2cfcbfd7f0.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"热汗舞蹈\"  data-wdj-app-id=\"8337444\" data-packagename=\"com.dancefitme.cn\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>2、《跳跳舞蹈》</span></p><p><span>有了这款软件，完全不用担心自己身体肥胖跳的不好看，或者是担心自己四肢不协调，从零基础入门让你掌握正确的跳舞步骤，能很快的找准节奏，这款软件上的舞种非常全面，很多人都比较喜欢跳民族舞，当然现代舞也非常受欢迎。由专业老师亲自授课，每天利用业余时间就能让你学会跳舞。</span></p><p><img width=\"409\" height=\"704\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/4/a34556a8d9c7b5adc3fafe12da181e9f.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"跳跳舞蹈\"  data-wdj-app-id=\"6554096\" data-packagename=\"com.tiaooo.aaron\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>3、《抖音》</span></p><p><span>该软件上的内容是非常丰富的，不仅可看到各种有才艺的博主记录生活分享趣事，也有各行各业专业的人士在该软件上通过视频的方式授课，如果想学习跳舞，直接搜索相应的名称，就会为您推送很多指导跳舞老师的帐号，点击进去跟着老师来学习就可以了。</span></p><p><img width=\"402\" height=\"694\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/5/db496fb802cde1245e4d16f38851fbea.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"抖音\"  data-wdj-app-id=\"7461948\" data-packagename=\"com.ss.android.ugc.aweme\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>4、《广场舞多多》</span></p><p><span>学习跳广场舞，春暖花开的季节，饭后一起到广场上来跳舞，不仅能够起到健身的效果，还能让整个人的心情都非常的豪迈。这款软件上有超多的广场舞，还有广场舞分布教学视频，跟着教学视频一个节奏一个节奏的来练习。</span></p><p><img width=\"419\" height=\"662\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/1/0ed8e37f2713cffe5da4e605bb7f845a.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"广场舞多多\"  data-wdj-app-id=\"6632264\" data-packagename=\"com.duoduo.oldboy\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>5、《中舞网》</span></p><p><span>该软件上汇聚了上千万的用户，在这款软件上不仅能学习跳舞，还可了解很多热爱跳舞人群对舞蹈的见解。在学习中可以根据自己的身体情况设置慢放、区间循环播放等等一系列的操作，都可根据自己的需求来掌握，多种类型的舞蹈让你选则，这款软件是很多专业人士都比较认可的一款学习舞蹈的软件。</span></p><p><img width=\"402\" height=\"672\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/3/1e7c1b164968f13d9a8aa64502bc3a16.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"中舞网\"  data-wdj-app-id=\"6619060\" data-packagename=\"wudao.com.chinadance.video\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>6、《拉丁一百》</span></p><p><span>近些年来学习拉丁舞的人群也非常多，拉丁舞的舞姿是非常漂亮的，这款软件主要就是针对于学习拉丁舞人群打造的平台，拥有专业的拉丁舞教师还有专业的选手，通过拍视频授课的方式，能够快速的掌握拉丁舞蹈的技巧以及训练方法。</span></p><p><img width=\"402\" height=\"624\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/4/2d2d9fd60596be01b9b004f2374b246d.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"拉丁一百\"  data-wdj-app-id=\"7388055\" data-packagename=\"onez.latin100\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>如果大家还不了解舞蹈教学app推荐有哪些，以上小编介绍的这些软件都可帮助大家来学习跳舞，而且这些软件各有各的优势。无论您是想学习哪种风格的舞蹈，都可跟着软件上的视频来教学，详细的讲解，细致的步骤，能让你很快的学会跳舞。</span></p></p>\n              \n'),(157,1,3,'\n              \n              <p><p><span>如今推出了多种关于学习方面的软件，这些软件能够很好地在课下帮助学生来巩固功课，也可以通过这些软件来测试自己的学习成果。那么移动考试app安卓版有哪些?在手机上下载相关的软件，平时可以通过这些软件来学习，也可帮你测试你的学习成果，有需要的家长可详细的了解一下。</span></p><p><span>1、《作业帮》</span></p><p><span>这款软件相信很多家长是比较熟悉的，该软件已经拥有超9.8亿大数据题库，作为一款能够高效提高孩子学习效率的软件，全方位的来辅助孩子学习，得到了很多家长的好评，涵盖了多学段教材和练习题。能够精准的搜索到各种类型的试题作文、以及相应的解析思路，同时该软件还有中英文互译以及分句翻译等相应的功能。</span></p><p><img width=\"402\" height=\"655\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/0/628422ae7e2f741052b22cdf1c47152e.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"作业帮\"  data-wdj-app-id=\"2392449\" data-packagename=\"com.baidu.homework\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>2、《考试蚁》</span></p><p><span>这是一款为大学生学习打造的平台，能够助力用户顺利地通过计算机等级考试，拥有非常整合的学习方案。通过仿真环境和智能评分，能够让你体验到真正的考试氛围。该软件还有视频解析、步骤讲解的非常详细，涵盖了大学生英语四、六级考试的全部内容。</span></p><p><img width=\"401\" height=\"669\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/5/6f11924fcf78d1438494aea3ba82dcb4.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"考试蚁\"  data-wdj-app-id=\"8181558\" data-packagename=\"com.uuedu.examant\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>3、《一起作业》</span></p><p><span>这是一款专门为小学生研发的学习软件，全方位的来提升孩子的学习能力，比如学习口语、做速算练习等等，拥有趣味的学习方式，激发孩子的学习兴趣，让孩子愿意自主学习，拥有自动批改错题重做功能，同还有老师点评功能。</span></p><p><img width=\"402\" height=\"659\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/11/050f4bb26747e850bdf01b48ac2c852f.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"一起作业\"  data-wdj-app-id=\"6652073\" data-packagename=\"com.A17zuoye.mobile.homework\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>4、《粉笔》</span></p><p><span>无论是准备高考还是考教师资格证、考研、建造、会计等等，都可通过该软件来学习很适合，平时工作比较忙碌，没有时间学习的人群，那么每天打开手机占用半个小时的时间，就可到该软件上来练习，覆盖了多个考试类型，也为用户提供各种真题和考试练习以及答案解析。</span></p><p><img width=\"400\" height=\"671\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/3/61298d5cbbc584f59b49da0a2eaff251.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"粉笔\"  data-wdj-app-id=\"242255\" data-packagename=\"com.fenbi.android.servant\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>5、《考试宝典》</span></p><p><span>这款软件适用于医学类考试的人群，无论是医学职业还是住院医师等等都可选择这款软件，包括了单选、多选、判断、填空等一系列的题型。也有丰富的课程，通过视频精讲来了解详细的内容，拥有章节练习、模拟考场就像是真实的进入到考场中考试一样。</span></p><p><img width=\"402\" height=\"671\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/2/93739a87dde6a0f4070b377911dce7f2.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"考试宝典\"  data-wdj-app-id=\"81321\" data-packagename=\"com.yingsoft.ksbao.Activity\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>6、《升本帮》</span></p><p><span>这款软件主要是为考生提供一站式直播视频、题库、论坛等多功能的学习软件，进入软件中，可快速地找到需要学习的内容，还拥有学生与老师1对1的联系，提高学生的学习成本，具有连麦互动、直播课和视频录播课跟着学习。</span></p><p><img width=\"425\" height=\"685\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/3/1e92236fec1d914b0b94770e258bd6f1.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"升本帮\"  data-wdj-app-id=\"8114218\" data-packagename=\"com.song.zzb.wyzsb\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>以上小编为大家介绍了移动考试app安卓版都有哪些，这几款软件各有各的优势，大家可了解一下，看哪一款软件更适合自己。下载到手机上，通过这些软件来学习，能节省平时的学习时间，让你顺利的通过考试</span></p></p>\n              \n'),(158,1,3,'\n              \n              <p><p>对于小伙伴们而言，如果能有软件来帮自己针对网络的排名进行优化就在好不过了，但是自身的网络环境若是很差的话肯定是不行的，所以大家应该去通过相关的软件帮自己，下面就来说说网络排名优化软件有哪些，若是小伙伴们对于此方面较为的感兴趣，想要去解锁并使用它们的话，那么就一起来接着往下看吧。</p><p>1、《网络测速大师》</p><p>这是一款专业的网络速度测试工具，它能在网络性能不理想时帮助各位去检测实际的网速，同时针对遇到的延迟等状况自己也能清楚的了解，更是有着网络方面的优化功能带给大家，让用户能够去自主分析网络状况。</p><p><img width=\"500\" height=\"572\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/5/e6f4f0a224c6e8375c45e57e7336222d.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>2、《手机网络测速大师》</p><p>该软件的功能还是非常强大的，能方便用户去查看连接的宽带信息，包括该工具的服务范围也很广泛，拥有超过数千个测试服务器节点，能在短时间内提供详尽的网速测试报告，包括延迟、速率等都能清楚的了解到。</p><p><img width=\"500\" height=\"320\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/3/71afccd8c787601d411999e6209917ab.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>3、《网络测速精灵》</p><p>若是大家针对网络进行优化的话，那么该软件是个不错的选择，同时用户只需一键操作即可迅速进行网络速度测试，同时还能看到直观的图表形式展示，当然了大家还可清楚的掌握自身的网络状况，包括完成的网速报告等也能知晓。</p><p><img width=\"500\" height=\"888\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/4/715e183b0b984aa4259a1010cff0f633.jpeg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>4、《测速网》</p><p>该软件为大家提供了信息的展示和过往测试记录的查看等功能，让用户可轻松地追溯和比较历史的网速数据，更是有着清晰的测速曲线等带给大家，让用户能够清楚地了解到自身的网络环境状况。</p><p><img width=\"500\" height=\"888\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/2/97a29df1fa26194c9ec49d51fb3b6e7d.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>5、《测速高手》</p><p>该软件的操作十分简单，是一款非常实用的手机网络速度测试工具。它不仅能实时显示当前网络速度，还能记录并展示历史网速数据，全部信息都能清晰呈现，让大家能够快速的了解自身的网络状况。</p><p><img width=\"500\" height=\"377\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/0/d22afaf6434ca864e2d9266a883c8b35.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>6、《精准测速》</p><p>在这里大家能够去针对网络进行专业的测试，同时支持的网络类型也很是广泛，让大家无论身在何处都能轻松掌握自己的网络状况，操作界面简洁直观，点击即可开始测速。</p><p><img width=\"500\" height=\"833\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/6/27416462d317ef6f87ee051cc756e8c7.jpeg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>好了，以上就是网络排名优化软件有哪些的全部介绍了，文中带来的这些软件除了能针对网络方面进行优化外，也能去通过测速来了解具体的延迟等状况，各位若是对此方面有想法的话，那么就去点击文中的链接来安装吧，希望大家能够喜欢。</p></p>\n              \n'),(159,1,3,'\n              \n              <p><p>现在打车软件，外卖软件的流行给人们的生活带来了很大的便利，甚至现在都有可以提供同城跑腿服务的软件。那么大家知道好用的同城帮送跑腿app推荐都有哪些吗？相信许多有过工作经验的小伙伴在工作中都会遇到需要为同城的合作伙伴送文件的经历。现在如果有同城跑腿儿需求的话，可以直接使用相关的软件，叫一个跑腿，帮自己将需要送的东西送达目的地。希望小编找到了以下几款跑腿软件，大家能够喜欢。</p><p>1、《爱跑腿》</p><p>这是一款可以方便用户的服务平台。能够满足个人或者是企业的同城配送需求，他的经营模式主要是通过整合社会各种闲置资源，实现线上线下新零售提供代买，代跑，帮送等服务。而且用户也可以在这里成为代跑小哥挣一些外快。</p><p><img width=\"550\" height=\"916\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/7/115_1447807ed85ffe4ea71d3d8b414f3278.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>2、《uu跑腿》</p><p>如果遇到同城急送的情况，大家可以选择uu跑腿这款APP。这个服务平台为用户提供了同城帮，取送，帮买全能帮还有帮排队等服务，在生活中的各个场景都可以在这个平台上找到相关的服务。在同城范围内，平均37分钟都可以完成一单服务。</p><p><img width=\"550\" height=\"977\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/5/115_030af027fe6980092aa30238e05b37aa.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>3、《跑腿快车》</p><p>如果遇到特殊天气情况无法出门儿，但又急需采购一些物资的话，可以登陆跑腿快车这款APP。在这个软件上，用户只需动手点一点就可以做到外卖送货到家或者是代为跑腿儿去超市购物。为用户带来方便快捷的代跑服务。</p><p><img width=\"550\" height=\"916\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/10/115_eb06f2a1656f9269a96a505d69e5111f.JPEG?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>4、《美团》</p><p>对于这款跑腿平台是一个便民惠民的专业农村快递配送服务软件。为处在农村地区的用户提供便捷的快递代取代寄上门服务，那即使身处大山地区的农民也可以收到快递。当然他也有帮忙送物品的服务。</p><p><img width=\"550\" height=\"667\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/9/65cf740e6ec80011a44c419f73fef959.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>5、《飞毛腿跑腿》</p><p>这是目前跑腿服务系统最为完善的一款APP。目前在这个平台主要提供了包括跑腿送和跑腿办两大主要功能。可以专门为用户提供跑腿儿，送文件，送快递，送鲜花或者送蛋糕。也可以提供到政府部门代为办事，到医院代为挂号排队等等。</p><p><img width=\"550\" height=\"977\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/4/115_b29a82df1dcd6a1eac9d51c011e72fcc.JPEG?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>6、《微顶跑腿》</p><p>微顶跑腿是一款方便简单的同城生活服务型软件。它可以为用户提供省心省市的帮送，帮取，帮买，帮办等服务。而且都是由专人提供服务，超时有赔付，是可以提供卫生可靠优质商家的。</p><p><img width=\"550\" height=\"977\" src=\"https://android-imgs.25pp.com/fs08/2024/03/28/0/115_2ede3b027364b0acec423f78f5302d24.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>如果上班儿时间紧，没有时间买早餐的话，可以在跑腿软件上叫一个跑腿儿，帮自己买早餐。如果公司需要传达业务的话，也可以叫跑腿儿帮忙送文件。跑腿儿给大家的生活带来了非常大的帮助。希望小编推荐的以上几个跑腿APP能为大家的生活带来更多便利。</p></p>\n              \n'),(160,1,3,'\n              \n              <p><p><span>在同等学力英语考试当中，会对学生的英语听说读写能力进行一个综合性的考试了解，学生的英语水平到底是怎样的，当然也要了解更多词汇。那么同等学力英语词汇用哪个app呢？如果自己准备进行这方面的考试，或者是想要多学习一些常用的词汇都可了解一下，今天给大家介绍的这几款，非常的好用又实用。</span></p><p><span>1、《牛津现代英语词典》</span></p><p><span>学习同等学力英语词汇时可使用这款app，它是由牛津大学出版社官方授权发行的，不仅里面有很多的英语词汇汇总内容，还有每个单词的正确发音以及释义诸多的内容，可了解原汁原味的英语。收录了很多的单词，以及全球各种英语辩题，让用户掌握地道发音了解每个单词正确的含义。拥有简洁明了的界面，具有非常高的准确性。</span></p><p><img width=\"427\" height=\"602\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/10/ec9a7f359bda80afb4982376241bfb96.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"牛津现代英语词典\"  data-wdj-app-id=\"7577097\" data-packagename=\"cn.dictcn.android.digitize.oxford_concisedict_17201\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>2、《考满分词汇》</span></p><p><span>在英语考试当中，托福考试也是比较受欢迎的，这里就是专门为脱口考试而设计的，有很多的词汇大全，包含了同等学力英语词汇的内容，有期权的分类，也有诸多的词汇内容，可按考试类型分学科，既有基础词，也有核心词，更有冲刺词等，可快速高效地让学习英语的人高效背单词，具有科学快速的背词方法，还能降低考生的备考时间，提升做题效率。</span></p><p><img width=\"421\" height=\"701\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/5/34d05e11edf4712ce69c7e48259cf9dc.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"考满分词汇\"  data-wdj-app-id=\"8002726\" data-packagename=\"com.enhance.kmf.ielts.wordsapplication\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>3、《学英语》</span></p><p><span>不管是任何的考试，各种各样的词汇学习是非常有必要的，比如这款就是学生可学习英语的软件，汇总了各种各样的词汇内容，可让用户高效学英语。功能齐全，还有配音英语听力、作文、口语学习栏目，是专门为中小学生学习英语的软件。可通过外教老师视频教学英语国际音标发音的方式掌握音标，同时还能正确运用各种英语词汇。</span></p><p><img width=\"412\" height=\"740\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/5/bbaaefcb8752f8b97078945db50a9cec.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"学英语\"  data-wdj-app-id=\"\" data-packagename=\"\" data-has-pkg=\"\"></div></span></p><p><span>4、《完美英语》</span></p><p><span>这里汇总了诸多的词汇，包括考同等学力英语时所包含的词汇内容，也是一款由知名公司推出的英语学习app里面有口语课以及新概念全四册自然拼读等多门课程，让每个用户在学习英语的时候，感受到纯正的外教领读。不管是想要学习单词还是句子都能实时纠正发音，让用户提升口语的方式也能提升自己的英语成绩具有多个模块，全方位练习。</span></p><p><img width=\"407\" height=\"691\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/0/b211e3b78ad147fd0c0d1b1d9acd3b90.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"完美英语\"  data-wdj-app-id=\"8372090\" data-packagename=\"com.perfectlingo.newconcept\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>5、《鲸奇英语》</span></p><p><span>很多人都在使用这款拥有诸多词汇内容的app来学习，英语功能非常的丰富，而且方便又实用，里面拥有人工智能算法，可减少学生的学习时间，提升学习效率。对于平时学习英语自主能力并不是特别好的人，这里还会给学生建立自适应学习计划，了解在英语学习时不同的难点，只需要很短的时间，就能够帮助学生提升自己的英语分数。</span></p><p><img width=\"409\" height=\"746\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/6/bc3fe815630d518239ddc6226989bb22.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"鲸奇英语\"  data-wdj-app-id=\"8390383\" data-packagename=\"com.jingqi.yingyu\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>关于同等学力英语词汇用哪个app的内容，今天就为大家介绍到这里，如果需要进行同等学力英语考试，或者是想要进行其他的考试，只要是想要学习比较常用的词汇内容，都可下载今天给大家介绍的这几款app。</span></p></p>\n              \n'),(161,1,3,'\n              \n              <p><p><span>在战争当中，哪一方可以掌握制空权，哪一方就有着强大的火力压制。学习战斗的策略技巧，不妨看看这篇空战手游下载最新版大全，这篇文章给大家带来了五款最新的空战手游，想要制霸战场的玩家们，一定不要错过这些经典的空战游戏，只要玩家们肯付出努力，你的空战技术提升也就指日可待。</span></p><p><span>1、《全民飞机大战》</span></p><p><img width=\"500\" height=\"746\" src=\"https://android-imgs.25pp.com/fs08/2024/03/20/9/6c9986029700e5cbd1b047e9161ae969.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span>翱翔于天际之上，玩家们肯定有过这样的想法。这一款《全民飞机大战》手游给玩家们带来了空中战斗的感觉，其中玩家们可以选择多种飞机进行战斗，这些飞机的特色也各不相同，比如有适合近距离战机格斗类型的飞机、有适合远程火力压制类型的飞机等等。并且《全民飞机大战》手游还给各位玩家带来了丰富的道具功能，其中有很多是需要在战斗中要用到的。</span></p><p><span>2、《雷霆战飞机大战》</span></p><p><img width=\"500\" height=\"281\" src=\"https://android-imgs.25pp.com/fs08/2024/03/20/4/2066c1e4374bad4da041318587e4971d.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span>想要在手机上也能欣赏蓝天上的美景，选择这款《雷霆战飞机大战》无疑是正确的。玩家们在这款游戏里面可以享受到极佳的飞行体验感，并且它还给玩家们提供了3D的卡通风格，不论是游戏场景亦或是人物角色方面，玩家们都能享受极强的视觉体验。《雷霆战飞机大战》手游还贴心的推出了武器改进系统，玩家们的飞机在游戏后期都可以进行各方面的升级。</span></p><p><span>3、《全能飞机》</span></p><p><img width=\"500\" height=\"888\" src=\"https://android-imgs.25pp.com/fs08/2024/03/20/11/682c656bafadb6ccd71438074c7502fe.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span>全能一词顾名思义就是什么都行，那么更为全面的空战手游，还得是这款《全能飞机》。玩家们在这里可以体验到惊险的飞机射击对战，大家不仅要面对来自敌人的进攻，还要小心与坠毁物不经意间的碰撞。同时这款《全能飞机》还提供了强大的武器火力加持，玩家们在游戏中只要能吃到对应道具就可以提升。并且在游戏中所带来的震撼的视听感受，也可以满足不同需求的玩家。</span></p><p><span>4、《全民飞机空战》</span></p><p><img width=\"500\" height=\"281\" src=\"https://android-imgs.25pp.com/fs08/2024/03/20/5/c50ab93a2347303926ab9134ae2f8e1c.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span>想要体验多人在线PK的空战手游，不妨下载这款《全民飞机空战》在。这款手游采用了飞机战斗的传统玩法，玩家们在游戏中可以与其他玩家进行实时PK，甚至还有团队作战模式。同时玩家们对于操作方面不需要担心，官方给玩家们也带来了极为简便的操作模式。并且玩家们也可以在游戏界面中的升级系统来改装自己的飞机，成为空战中最厉害的机器。</span></p><p><span>5、《无尽飞机大战》</span></p><p><img width=\"500\" height=\"1084\" src=\"https://android-imgs.25pp.com/fs08/2024/03/20/8/1291d0417aa63a22193d46a9c952d7a3.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span>作为空战手游中的一大代表，《无尽飞机大战》这款手游有诸多的特色所在。首先就飞机种类方面而言，玩家们可以选择多种类型不一的飞机进行战斗，同时每一类型的飞机也都有自身的优劣势所在，近战类飞机自然在远程火力压制上略逊一筹，但远程输出的战斗机却又在近距离格斗上不如前者。玩家们可以在《无尽飞机大战》手游中自由自在的飞行与战斗，随着关卡的升级游戏难度也会上涨。</span></p><p><span>综上所述，这篇空战手游下载最新版文章为各位玩家带来了五款时下新兴的游戏，玩家们能够在这五款手游中找到自己最适合的那款，但是想要在空战游戏里成为高手，时时刻刻地进行练习才能独霸一方。</span></p></p>\n              \n'),(162,1,3,'\n              \n              <p><p>格斗为核心的游戏，可以帮助大家在有压力时进行释放，或者在无聊时想要追求刺激也能来试试小编下面讲解的几款格斗竞技游戏合集，无比流畅又自然的格斗动作和动感十足的视觉特效，肯定会让越来越多的玩家们深陷其中，这期带来的几款格斗游戏都是近期风评极高和耐玩的，大家可耐心看下。</p><p>1、《火影忍者》</p><p><img width=\"500\" height=\"281\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/1/fad5c70c734b4691067f3a51250bb824.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>是一款2d卡通的正版格斗手游，呈现出原汁原味的动漫剧情和战斗玩法，其中佐助、鸣人和宇智等经典忍者都可扮演，还会加入小南和君麻吕等新忍者，能够使用的格斗招式也极其的丰富多样，2v2的热血跨服竞技之战和大型的忍者格斗赛事，只需要五分钟就可结束战斗，都可充分发挥操作技巧打出与众不同的忍道。</p><p>2、《边际猎人》</p><p><img width=\"500\" height=\"281\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/5/8e699842a10d357389b9961ea0e60950.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><div>科技感十足的横版格斗手游，激情四射的音乐节奏和丝滑的操作手感，都能使各位在任何时刻都感受到满腔热血的打斗感。机械师、剑客和射击手三大职业都可选择，而且达到条件就可实现转职，通过对技能的掌握就可打出花样式的招式流派，添加具有加成的服饰和道具，就可塑造一位战斗力极强的赏金猎人，挑战各方的格斗高手成为万众瞩目的焦点。</div><p>3、《忍者必须死3》</p><p><img width=\"500\" height=\"281\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/0/3841f711c4c6caed28636dd36c8d6038.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>清新脱俗的东方水墨画色彩与动漫元素相碰撞设计出的横版格斗游戏，玩法上将忍者与跑酷相结合搭配上原著的剧情，极大的提高了游玩的兴致和吸引力。你将操控多位忍者参与boss之战，每次对战玩法都不相同，比普通的打怪玩法更加的刺激，而且还有切水果、限时跳脱和飞龙等丰富的闯关玩法，只要下载去体验就会爱上。</p><p>4、《格斗之皇》</p><p><img width=\"500\" height=\"243\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/8/89d773264e3eb9ed599019560ecbc33e.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>是一款超燃的格斗竞技手游，满屏的技能特效和华丽的服饰搭配，都可让人眼前一亮，无时无刻都在激发你内心的战斗欲望，带感的节奏和震撼的配音都能符合你对格斗所有的幻想。另外，动漫中海量的格斗技能都会重现江湖，随机组合招式体验畅快淋漓的打斗，还会有上百种幻兽并肩作战，成就你的格斗皇位之路。</p><p>5、《太空狼人格斗》</p><p><img width=\"500\" height=\"231\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/10/5a2b75220453dd8465a95d1458aca69b.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><div>当推理类游戏与格斗相碰撞产生的新型手游，将会带来怎样惊奇的玩法体验呢？你作为一名具有格斗技能的太空船员，唯一的目的就是阴藏在船舱内将船员们全部击败，不被人发现活到最后才算完成卧底任务。玩家们不仅能体验到相互猜疑和谋算，还可感受到热血澎湃的格斗打击感，最后能否成为胜利者就看各位的智力和战斗力啦！</div><p>格斗竞技游戏合集就是以上这五款，经典不过时的格斗玩法搭配时尚的服饰和炫酷的招式，真是让格斗爱好者爱不释手，如果大家在了解完这些游戏后，能够遇到自己喜欢的几款，就不妨来下载感受一下格斗的热血沸腾吧！</p></p>\n              \n'),(163,1,3,'\n              \n              <p><p><span>每一个人心一定都有一个属于自己的英雄梦，而逐渐长大成人之后才发现世界是那么的苍白无力。但是没有关系，小编为各位玩家带来了关于机动奥特曼手游的盘点文章，玩家们可以在游戏当中实现自己的超人梦，让自己重新回到小时候的感觉，而这五款手游也会带给各位玩家不一样体验。</span></p><p><span>1、《奥特曼融合激战》</span></p><p><img width=\"500\" height=\"280\" src=\"https://android-imgs.25pp.com/fs08/2024/03/19/9/f02253fa3f50fc359d3f4e7daf747dd3.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span>游戏中的主人公即是光之子，这款《奥特曼融合激战》手游数不胜数的特色。从游戏画面上就能看到鲜活的色调与绚丽的技能特效，让玩家们享受到动画片中原有的感觉。大家在动画片中见过的那些奥特曼人物在这里也都会登场。游戏官方尽可能地收集了很多的地图场景，并且各个地图区域内也有专属的任务等待着玩家。</span></p><p><span>2、《热血奥特曼》</span></p><p><img width=\"500\" height=\"280\" src=\"https://android-imgs.25pp.com/fs08/2024/03/19/3/02fbbd8a5706b0e9db472b6053e3075b.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span>动画片中奥特曼每一次和怪兽的热血对决，都能够在《热血奥特曼》这款手游中得到了全面的还原。玩家们在游戏里面可以操控任意一位奥特曼，它们每一处细节都各不相同并且制作的非常精细。玩家们还可以清楚的见到每一位人物的技能简介，同时在技能释放上也有简单的操作步骤。游戏还为各位提供了任务系统，玩家们完成每一个任务都可以领取相应奖励。</span></p><p><span>3、《奥特曼正义降临》</span></p><p><img width=\"500\" height=\"280\" src=\"https://android-imgs.25pp.com/fs08/2024/03/19/11/4da6b4db7bdf17e42df72862ae5e9c25.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span>游戏还是得具备自己的特色与创新才能更加长久，这款《奥特曼正义降临》手游有自己独特的游戏优势。在这里玩家们可以享受到与动画片原有的故事玩法，甚至在全新的版本中也带给各位玩家银河冒险篇的体验玩法。同时这款手游也不再仅仅局限于那些原有的奥特曼，玩家们可以大开脑洞来创造一款属于自己的奥特曼。</span></p><p><span>4、《奥特曼银河传说》</span></p><p><img width=\"500\" height=\"832\" src=\"https://android-imgs.25pp.com/fs08/2024/03/19/5/3671a77e92b3aa5d0293a5ec0977e906.jpeg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span>动画手游并不仅仅是对游戏剧情的复刻，这款《奥特曼银河传说》独具特色的方面就在于它融合了很多的元素，比如说更强调策略与竞技之间的搭配，玩家们能在这里体验到丰富的可玩性。游戏中玩家们可以领略多样化的技能特效，数以百计的奥特曼人物都有登场，只不过需要玩家们自己前去探索或者完成任务才能发现。</span></p><p><span>5、《奥特曼超人大战小怪兽》</span></p><p><img width=\"500\" height=\"300\" src=\"https://android-imgs.25pp.com/fs08/2024/03/19/9/c054419ebed6fe5702d40d04a7bfd521.jpg?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span>作为多数人童年时代的陪伴，《奥特曼超人大战小怪兽》这款手游也回到了玩家们的视野中。这款手游的画面效果非常漂亮，每一位奥特曼的技能效果都各不相同。并且奥特曼人物的操作也很便捷，玩家们只需要简单的练习即可。而手游当中也提供了许多不同类型的道具，但是道具是需要玩家们通过特定关卡才可以获得的。</span></p><p></p><p><span>总而言之，玩家们可以通过机动奥特曼手游来完成自己的梦想，虽然有些不太真实，但是却能够让玩家们在这些游戏里面感受到快乐，其实这才是各位玩家所应得到的最重要的目的了。</span></p></p>\n              \n'),(164,1,3,'\n              \n              <p><p><span>英语启蒙教育对于幼儿来说至关重要，幼儿阶段是吸收接收能力最强的阶段，此时为他们进行启蒙教育，能够让宝宝迅速掌握正确的发音以及基本的语法，并为之后的学习打下足够的基础。那么英语早教app哪个好？每位家长都不希望让孩子输在起跑线上，所以对于英语早教特别重视，接下来给大家推荐几款比较热门的软件吧。</span></p><p><span>1、《英语早教》</span></p><p><span>抓住适合的阶段，为宝宝教学各种英语知识，能够让孩子知识发展水平普遍高于同龄儿童。就连孩子的思维也会变得更加独特，这款软件专为宝宝所设计，能够让孩子更早接触外语，对于之后的学习有着较大的帮助，让孩子边学边玩，不知不觉积累较多的英文单词。目前收录了28类常用的幼儿英语单词，其中的所有资源都是免费的，有蔬菜、水果、动物、交通、身体等等各种相关课程。</span></p><p><img width=\"393\" height=\"552\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/2/ac7db9e4a34a8684ab9022516fe8fb80.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"英语早教\"  data-wdj-app-id=\"8074385\" data-packagename=\"com.yjhf.english\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>2、《儿童英语》</span></p><p><span>专为儿童所设计打开之后就能随时快速学习，是启蒙教育的好帮手，有多种不同的分类，包括字母、音标、单词、日常用语、英文歌曲等等。26个字母以及48个音标的学习方式相对来说比较独特，以生动的形象输出，让宝宝更好理解，并加深印象。卡片单词包含动物汽车颜色等各种事物。</span></p><p><img width=\"401\" height=\"517\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/7/b444cccdf00989e1bbfc7b5708bc49d6.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"儿童英语\"  data-wdj-app-id=\"7908622\" data-packagename=\"com.itfirer.childenglish\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>3、《儿童英语字母》</span></p><p><span>好玩又好学的app，由外教录音，发音非常标准又非常清晰，每天利用15分钟到20分钟左右的时间，让宝宝熟悉词汇并学会唱字母歌。有动听的歌曲以及视频，小朋友在体验时不会觉得过于枯燥，激发学习兴趣。同时罗列字母手写部分，让宝宝正确书写。</span></p><p><img width=\"398\" height=\"632\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/7/0f15a6efa4cefd758bf5f863a1dfb56c.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"儿童英语字母\"  data-wdj-app-id=\"8123256\" data-packagename=\"air.com.aaaedu.newalphabet\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>4、《儿童英语启蒙》</span></p><p><span>专为儿童启蒙所推送快速学习字母单词收录有趣的声音，其中的动画人物能够与宝宝互动，让孩子爱上读书，爱上学习。除了有字母学习之外，还有颜色，数字形状等等，此外还可让宝宝利用英文学会1~20的具体读法。目前这款应用有着较高下载量，其中的卡通动物很吸引人，宝宝爱不释手。</span></p><p><img width=\"413\" height=\"557\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/9/5e83d033ee42c423f67670088cfbe19a.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"儿童英语启蒙\"  data-wdj-app-id=\"2559861\" data-packagename=\"com.jjshuai.yingyuqimeng\" data-has-pkg=\"0\" data-real-name=\"0\"></div></span></p><p><span>5、《小步英语绘本》</span></p><p><span>孩子在小的时候就应该养成阅读绘本的习惯，这样不仅能够激发学习兴趣，同时也能扩展思维能力。这款应用整合经典绘本，不断的磨耳朵，有海量启蒙动画，有趣的陪伴孩子，让他们在学习过程中感受足够的趣味。有8000多本欧美原版绘本，比如牛津树、大猫、国家地理、神奇校车等等这些经典读物，适合不同的年龄段，营造良好的学习氛围。</span></p><p><img width=\"402\" height=\"647\" src=\"https://android-imgs.25pp.com/fs08/2024/03/27/5/d16afdc638f7685996d48ca898759d2d.png?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p><span><div class=\"__cdl\" data-appname=\"小步英语绘本\"  data-wdj-app-id=\"8366042\" data-packagename=\"com.english.xiaobu\" data-has-pkg=\"1\" data-real-name=\"0\"></div></span></p><p><span>以上关于英语早教app哪个好的相关内容就为大家介绍到这里，早教是非常重要的启蒙阶段，每个家长都不希望让孩子输在起跑线，利用app进行早教启蒙是非常不错的选择，让孩子提前接触英语，更好掌握基本发音。</span></p></p>\n              \n'),(165,1,3,'\n              \n              <p><p>小编总结了几款2024大型手机动作游戏，动作类型的手游凭借着花里胡哨的攻击技能，以及人物打斗时的激烈场面，特别能够吸引玩家下载体验，今天小编带来的这几款动作手游，都是从内容到画面再到角色都设计的非常棒的几款游戏，良心推荐给各位玩家，来看看都是那几款游戏吧。</p><p>1、《航海王热血航线》</p><p><img width=\"500\" height=\"333\" src=\"https://android-imgs.25pp.com/fs08/2024/03/12/4/8f28869e169d5fbef5c63caf261e30dd.JPG?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><p>《航海王热血航线》这款游戏是由动漫改编而来的大型动作游戏，在这款游戏中你可以看见路飞、撒谎布以及塔西米等等动漫中特别出名的角色，玩这款游戏首先要提升角色的战斗能力，这样就可以肆无忌惮的和其他玩家进行对战。里面人物的打斗动作都高度还原动漫，简直帅呆了酷毙了，还不下载来看看。</p><div>2、《拳皇97ol》</div><p><img width=\"500\" height=\"750\" src=\"https://android-imgs.25pp.com/fs08/2024/03/12/0/df7a68a4e301339fb75219159f8a1481.PNG?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><div>《拳皇97ol》这款游戏是一款非常经典的格斗类游戏，游戏中高度还原了格斗的精髓，玩家在游戏中来看看体验到超级真实的格斗状况，还配有丰富的剧情来辅佐，使得这款游戏更加的好玩。在这款游戏过程中玩家可以自行选择角色进行对战，需而且要不断练习提高实力，毕竟优秀的背后是汗水呀，可以下载来试试。</div><div>3、《崩坏3》</div><p><img width=\"500\" height=\"333\" src=\"https://android-imgs.25pp.com/fs08/2024/03/12/0/db85872974d3cd6af3ca777b81e7ee40.JPG?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><div>《崩坏3》这款游戏的设计主要是女性角色，游戏中完成任务升级关卡是关键，玩家通过完成任务获取游戏资源和奖励。这款游戏的角色建模制作非常精细，每一个角色都是明艳动人的大美人，而且游戏中的打斗动作非常的好看，让人有眼前一亮的感觉，小编倾情推荐给各位玩家。</div><div>4、《全民奇迹》</div><p><img width=\"500\" height=\"750\" src=\"https://android-imgs.25pp.com/fs08/2024/03/21/5/f4af25033539e03ba6b9a9e8050dfb1c.JPG?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><div>《全民奇迹》这是一款以魔幻题材为背景的角色扮演动作游戏，游戏中提供了广阔的世界观以及多种多样的职业体验。游戏内容包括快节奏的战斗体验、炫丽的技能特效以及跨服交互功能。优势在于它的开放世界设计和实时交互特性，无论是从游戏触感或者是游戏剧情，都让玩家能够感受到超级棒的动作游戏体验。</div><div>5、《刀斧大乱斗》</div><p><img width=\"500\" height=\"333\" src=\"https://android-imgs.25pp.com/fs08/2024/03/12/2/48f9801cec40245819f94a3b36df59f0.JPG?x-oss-process=image/watermark,image_d2RqX2ljb24ucG5nP3gtb3NzLXByb2Nlc3M9aW1hZ2UvcmVzaXplLFBfMzA=,x_30,y_20,t_75\" slate-data-type=\"image\"/></p><div>《刀斧大乱斗》这是一款像素类型的格斗游戏，玩家随意选择不同形象和能力的角色，在地图中随意大乱斗，游戏中为玩家构建了一个充满竞争的格斗世界，整个场面刀光剑影，只有勇往直前的战斗才能够在这充满血性的战场上活下来，技能操作连串，一系列连招就能打的对方措手不及，赶快下载体验不容错过。</div><div>以上就是小编今天给大家带来的2024大型手机动作游戏，这几款游戏的画风都很有特色，角色打斗场面壮观，满足你对动作手游的超级想象，剧情设置围绕动作发展，让玩家充分感受到动作手游的魅力，赶快下载体验吧。</div><p></p></p>\n              \n');
/*!40000 ALTER TABLE `{dbprefix}1_news_data_0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_news_draft`
--

DROP TABLE IF EXISTS `{dbprefix}1_news_draft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_news_draft` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '具体内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `catid` (`catid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容草稿表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_news_draft`
--

LOCK TABLES `{dbprefix}1_news_draft` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_news_draft` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}1_news_draft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_news_flag`
--

DROP TABLE IF EXISTS `{dbprefix}1_news_flag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_news_flag` (
  `flag` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '文档标记id',
  `id` int(10) unsigned NOT NULL COMMENT '文档内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  KEY `flag` (`flag`,`id`,`uid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='标记表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_news_flag`
--

LOCK TABLES `{dbprefix}1_news_flag` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_news_flag` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}1_news_flag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_news_hits`
--

DROP TABLE IF EXISTS `{dbprefix}1_news_hits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_news_hits` (
  `id` int(10) unsigned NOT NULL COMMENT '文章id',
  `hits` int(10) unsigned NOT NULL COMMENT '总点击数',
  `day_hits` int(10) unsigned NOT NULL COMMENT '本日点击',
  `week_hits` int(10) unsigned NOT NULL COMMENT '本周点击',
  `month_hits` int(10) unsigned NOT NULL COMMENT '本月点击',
  `year_hits` int(10) unsigned NOT NULL COMMENT '年点击量',
  `day_time` int(10) unsigned NOT NULL COMMENT '本日',
  `week_time` int(10) unsigned NOT NULL COMMENT '本周',
  `month_time` int(10) unsigned NOT NULL COMMENT '本月',
  `year_time` int(10) unsigned NOT NULL COMMENT '年',
  UNIQUE KEY `id` (`id`),
  KEY `day_hits` (`day_hits`),
  KEY `week_hits` (`week_hits`),
  KEY `month_hits` (`month_hits`),
  KEY `year_hits` (`year_hits`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='时段点击量统计';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_news_hits`
--

LOCK TABLES `{dbprefix}1_news_hits` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_news_hits` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}1_news_hits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_news_index`
--

DROP TABLE IF EXISTS `{dbprefix}1_news_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_news_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(2) NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容索引表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_news_index`
--

LOCK TABLES `{dbprefix}1_news_index` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_news_index` DISABLE KEYS */;
INSERT INTO `{dbprefix}1_news_index` VALUES (1,1,3,9,1711613588),(3,1,2,9,1711613684),(4,1,2,9,1711613811),(5,1,2,9,1711614079),(6,1,2,9,1711614024),(7,1,2,9,1711614064),(8,1,2,9,1711614045),(9,1,2,9,1711614138),(10,1,2,9,1711614729),(11,1,2,9,1711614761),(12,1,2,9,1711614794),(13,1,2,9,1711614858),(126,1,3,9,1711633606),(127,1,3,9,1711633619),(128,1,3,9,1711633629),(129,1,3,9,1711633639),(130,1,3,9,1711633652),(131,1,3,9,1711633666),(132,1,3,9,1711633677),(133,1,3,9,1711633691),(134,1,3,9,1711633705),(135,1,3,9,1711633717),(136,1,3,9,1711633729),(137,1,3,9,1711633742),(138,1,3,9,1711633756),(139,1,3,9,1711633770),(140,1,3,9,1711633782),(141,1,3,9,1711633795),(142,1,3,9,1711633807),(143,1,3,9,1711633818),(144,1,3,9,1711633832),(145,1,3,9,1711633845),(146,1,3,9,1711633857),(147,1,3,9,1711633868),(148,1,3,9,1711633883),(149,1,3,9,1711633898),(150,1,3,9,1711633910),(151,1,3,9,1711633922),(152,1,3,9,1711633934),(153,1,3,9,1711633945),(154,1,3,9,1711633956),(155,1,3,9,1711633970),(156,1,3,9,1711633985),(157,1,3,9,1711633999),(158,1,3,9,1711634012),(159,1,3,9,1711634027),(160,1,3,9,1711634039),(161,1,3,9,1711634052),(162,1,3,9,1711634063),(163,1,3,9,1711634075),(164,1,3,9,1711634085),(165,1,3,9,1711634098);
/*!40000 ALTER TABLE `{dbprefix}1_news_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_news_recycle`
--

DROP TABLE IF EXISTS `{dbprefix}1_news_recycle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_news_recycle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '具体内容',
  `result` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '删除理由',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `catid` (`catid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容回收站表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_news_recycle`
--

LOCK TABLES `{dbprefix}1_news_recycle` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_news_recycle` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}1_news_recycle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_news_search`
--

DROP TABLE IF EXISTS `{dbprefix}1_news_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_news_search` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '参数数组',
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '关键字',
  `contentid` int(10) unsigned NOT NULL COMMENT '字段改成了结果数量值',
  `inputtime` int(10) unsigned NOT NULL COMMENT '搜索时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `catid` (`catid`),
  KEY `keyword` (`keyword`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='搜索表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_news_search`
--

LOCK TABLES `{dbprefix}1_news_search` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_news_search` DISABLE KEYS */;
INSERT INTO `{dbprefix}1_news_search` VALUES ('5ab7489a948f0a2b3d83cf357f77a2fb',0,'{\"param\":{\"keyword\":\"型手机动作游戏\"},\"sql\":\"SELECT `{dbprefix}1_news`.`id` FROM `{dbprefix}1_news` WHERE (`{dbprefix}1_news`.`title` LIKE \\\"%型手机动作游戏%\\\" OR `{dbprefix}1_news`.`keywords` LIKE \\\"%型手机动作游戏%\\\") ORDER BY NULL \",\"where\":\"(`{dbprefix}1_news`.`title` LIKE \\\"%型手机动作游戏%\\\" OR `{dbprefix}1_news`.`keywords` LIKE \\\"%型手机动作游戏%\\\")\"}','型手机动作游戏',1,1711634809),('abe734863dc6d0f130536603da2959ee',0,'{\"param\":{\"keyword\":\"英语早教\"},\"sql\":\"SELECT `{dbprefix}1_news`.`id` FROM `{dbprefix}1_news` WHERE (`{dbprefix}1_news`.`title` LIKE \\\"%英语早教%\\\" OR `{dbprefix}1_news`.`keywords` LIKE \\\"%英语早教%\\\") ORDER BY NULL \",\"where\":\"(`{dbprefix}1_news`.`title` LIKE \\\"%英语早教%\\\" OR `{dbprefix}1_news`.`keywords` LIKE \\\"%英语早教%\\\")\"}','英语早教',1,1711635916);
/*!40000 ALTER TABLE `{dbprefix}1_news_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_news_time`
--

DROP TABLE IF EXISTS `{dbprefix}1_news_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_news_time` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '具体内容',
  `result` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '处理结果',
  `posttime` int(10) unsigned NOT NULL COMMENT '定时发布时间',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `posttime` (`posttime`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容定时发布表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_news_time`
--

LOCK TABLES `{dbprefix}1_news_time` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_news_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}1_news_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_news_verify`
--

DROP TABLE IF EXISTS `{dbprefix}1_news_verify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_news_verify` (
  `id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `vid` tinyint(2) NOT NULL COMMENT '审核id号',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '是否新增',
  `islock` tinyint(1) unsigned NOT NULL COMMENT '是否锁定',
  `author` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '作者',
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(2) NOT NULL COMMENT '审核状态',
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `vid` (`vid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容审核表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_news_verify`
--

LOCK TABLES `{dbprefix}1_news_verify` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_news_verify` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}1_news_verify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_ruanjian`
--

DROP TABLE IF EXISTS `{dbprefix}1_ruanjian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_ruanjian` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '主题',
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '缩略图',
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关键字',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT '描述',
  `hits` int(10) unsigned DEFAULT NULL COMMENT '浏览数',
  `uid` int(10) unsigned NOT NULL COMMENT '作者id',
  `author` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '笔名',
  `status` tinyint(2) NOT NULL COMMENT '状态(已废弃)',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `link_id` int(10) NOT NULL DEFAULT '0' COMMENT '同步id',
  `tableid` smallint(5) unsigned NOT NULL COMMENT '附表id',
  `inputip` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` int(10) DEFAULT '0' COMMENT '排序值',
  `xitong` text COLLATE utf8mb4_unicode_ci COMMENT '系统',
  `daxiao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '大小',
  `banben` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '版本',
  `jietu` text COLLATE utf8mb4_unicode_ci COMMENT '截图',
  `xiazaidizhi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '下载地址',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `link_id` (`link_id`),
  KEY `status` (`status`),
  KEY `updatetime` (`updatetime`),
  KEY `hits` (`hits`),
  KEY `category` (`catid`,`status`),
  KEY `displayorder` (`displayorder`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容主表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_ruanjian`
--

LOCK TABLES `{dbprefix}1_ruanjian` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_ruanjian` DISABLE KEYS */;
INSERT INTO `{dbprefix}1_ruanjian` VALUES (2,1,'支付宝','2','','支付宝是蚂蚁集团旗下业务，诞生于2004年，已经成长为世界领先的数字支付开放平台和服务业数字化经营开放平台。我们面向消费者、各行各业商家提供便捷、安全的数字支付服务，面向合作伙伴持续开放技术、产品，助力实现数字化升级。与此同时，大量商家机构通过支付宝App为消费者提供政务办事、扫码点单、生活缴费等超过1000种生活服务。截至目前，支付宝和合作伙伴一起服务8000万商家、10亿消费者。备案号：浙IC',1,1,'创始人',9,'/index.php?c=show&id=2',0,0,'125.84.163.116-30672',1711612101,1711612101,0,'1','128.0 M','10.5.78.8000','{\"file\":[\"3\",\"4\",\"5\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/A22A610B1E274CA53D248A60575CE298.apk?fsname=com.eg.android.AlipayGphone_10.5.78.8000.apk&hsr=5294'),(14,1,'移动经纪人','https://pp.myapp.com/ma_icon/0/icon_1040117_1711437060/128','','安居客是国内优质房地产租售服务平台，专注于房地产租售信息服务。安居客以“帮助人们实现家的梦想”为企业愿景，全面覆盖买房、租房、商业地产三大业务，同时为开发商与经纪人提供高效的网络推广平台。安居客旗下业务网站每月独立访问用户已突破7000万。移动经纪人致力于更好的为经纪人服务，满足经纪人随时随地办公的需求，打造经纪人的移动工作平台。',1,1,'创始人',9,'/index.php?c=show&id=14',0,0,'125.84.163.116-29778',1711616340,1711616458,0,'1','234.3 M','9.69.0','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_1040117_1_1711437057/0\",\"https://pp.myapp.com/ma_pic2/0/shot_1040117_2_1711437057/0\",\"https://pp.myapp.com/ma_pic2/0/shot_1040117_3_1711437057/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/B447BED93C825EB21C49AB5CDB4B51DA.apk?fsname=com.anjuke.android.newbroker_9.69.0.apk'),(15,1,'最美天气','https://pp.myapp.com/ma_icon/0/icon_11479_1711444968/128','','【简洁天气界面】天气背景：真实城市美景、自然风光、多版主题随心切换;天气动画：超炫天气动画，下雨、打雷、闪电动画唯美逼真，让您身临其境;桌面天气小插件：提供多款桌面插件，总有一款风格适合你;【准确实况天气】*短临降雨：分钟级降水量预报，每时每刻雨雪变化，尽在掌握;*空气质量：实时空气质量监测，PM2.5及AQI指数预报，关心天气，更关心您的健康生活;【权威天气预报】*90日天气预报:提供90日天气',1,1,'创始人',9,'/index.php?c=show&id=15',0,0,'125.84.69.31-54997',1711616788,1711616788,0,'1','68.5 M','8.2.4','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_11479_1_1711444965/0\",\"https://pp.myapp.com/ma_pic2/0/shot_11479_2_1711444965/0\",\"https://pp.myapp.com/ma_pic2/0/shot_11479_3_1711444965/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/14E38667D42B9AB4252909B4AB5EBEF8.apk?fsname=com.icoolme.android.weather_8.2.4.apk&hsr=11479'),(16,1,'中国联通','https://pp.myapp.com/ma_icon/0/icon_3722_1711458380/128','','“更懂你的通信管家”——中国联通APP11.0新版本来了!中国联通APP是中国联通推出的官方客户端自服务软件。集查询交费、业务办理、生活服务于一身，致力于为用户提供更优质的使用体验，创造更便捷、更个性化的美好智慧生活。1.新版服务大厅•100+项服务在线办：分类更明确，便于查找;操作更简化，轻松办理;•常用功能自定义：支持自定义编辑，可自选常用功能放置在首页;•省力更省时：足不出户，就能体验营业厅',1,1,'创始人',9,'/index.php?c=show&id=16',0,0,'125.84.69.31-55023',1711616862,1711616862,0,'1','105.4 M','11.4.1','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_3722_1_1711458378/0\",\"https://pp.myapp.com/ma_pic2/0/shot_3722_2_1711458378/0\",\"https://pp.myapp.com/ma_pic2/0/shot_3722_3_1711458378/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/8CB303C2420E4327CD5C0831F62DA8A6.apk?fsname=com.sinovatech.unicom.ui_11.4.1.apk&hsr=3722'),(17,1,'扇贝阅读','https://pp.myapp.com/ma_icon/0/icon_10280003_1711015369/128','','扇贝阅读，为你推送原汁原味的英语短文和原著，它不只是一个“学英语”的app，更是一个帮你开始“用英语学”的app。【英文原著】经典的英文原著，带你感受原汁原味的阅读体验。【精选短文】精心编排的英语短文',0,1,'HSQ',9,'/index.php?c=show&id=17',0,0,'127.0.0.1',1711617577,1711617577,0,'1','109.1 M','4.4.2701','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_10280003_1_1711015367/0\",\"https://pp.myapp.com/ma_pic2/0/shot_10280003_2_1711015367/0\",\"https://pp.myapp.com/ma_pic2/0/shot_10280003_3_1711015367/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/95A154E23676C953C8658A3C3E127771.apk?fsname=com.shanbay.news_4.4.2701.apk&amp;hsr=10280003'),(18,1,'仟映音频剪辑','https://pp.myapp.com/ma_icon/0/icon_54080272_1711555210/128','','仟映音乐剪辑是一款功能强大、操作简单的音乐剪辑、音频剪辑软件，提供各类丰富的音频剪辑功能，可以方便快捷地进行音乐剪辑、音乐制作和铃声制作等，并且支持mp3、m4a、aac、wav、flac等多种常见音',0,1,'HSQ',9,'/index.php?c=show&id=18',0,0,'127.0.0.1',1711617937,1711617937,0,'1','24.9 M','1.6.1','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54080272_1_1711555207/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54080272_2_1711555207/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54080272_3_1711555207/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/521590EB0B75DA7885671E5BD61A76B6.apk?fsname=com.qianying360.music_1.6.1.apk&amp;hsr=54080272'),(19,1,'天气早知道','https://pp.myapp.com/ma_icon/0/icon_54082933_1711552931/128','','提供实时天气以及天气预报，天气预报24小时、新增地震预警 未来15天天气预报。实时温度计算空气质量指数、温度趋势、pm2.5等全面天气信息。提供穿衣、紫外线、舒适度等生活指数。帮助出差异地天气变化不会',0,1,'HSQ',9,'/index.php?c=show&id=19',0,0,'127.0.0.1',1711617937,1711617937,0,'1','41.8 M','6.8.9','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54082933_1_1711552928/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54082933_2_1711552928/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54082933_3_1711552928/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/8B2214516C6CFEA04C9C03DD1FA22F45.apk?fsname=com.haiyan.zaoweather_6.8.9.apk&amp;hsr=54082933'),(20,1,'方竹论坛','https://pp.myapp.com/ma_icon/0/icon_52641441_1711551803/128','','方竹论坛是南川比较有影响力的综合性网络平台，目前，拥有网站用户30万，微信粉丝超过25万人，南川区委指定阳光政务平台，区县网站联盟副理事长单位，渝网盟副理事长单位！',0,1,'HSQ',9,'/index.php?c=show&id=20',0,0,'127.0.0.1',1711617949,1711617949,0,'1','49.0 M','6.5.6','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_52641441_1_1711551801/0\",\"https://pp.myapp.com/ma_pic2/0/shot_52641441_2_1711551801/0\",\"https://pp.myapp.com/ma_pic2/0/shot_52641441_3_1711551801/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/12939ABF2E429A5AABA07EE23A47607A.apk?fsname=com.fangzhuluntan.forum_6.5.6.apk&amp;hsr=52641441'),(21,1,'美团众包','https://pp.myapp.com/ma_icon/0/icon_12181057_1711551743/128','','【品牌介绍】美团众包APP是一款专门为兼职人群打造的专业的兼职配送工具，依托于美团外卖，每天有超过2000万配送订单等您配送，让您成为用户和商家的兼职送餐骑士，自己创业的老板！海量兼职配送订单等你来，',0,1,'HSQ',9,'/index.php?c=show&id=21',0,0,'127.0.0.1',1711617951,1711617951,0,'1','101.9 M','10.8.5.4915','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_12181057_1_1711551741/0\",\"https://pp.myapp.com/ma_pic2/0/shot_12181057_2_1711551741/0\",\"https://pp.myapp.com/ma_pic2/0/shot_12181057_3_1711551741/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/1B5906E789DE85BCB13F82FB032CA092.apk?fsname=com.sankuai.meituan.dispatch.crowdsource_10.8.5.4915.apk&amp;hsr=12181057'),(22,1,'CM语音','https://pp.myapp.com/ma_icon/0/icon_52559491_1711551767/128','','CM语音ChatMe，时下超火的社交平台：一起交友冲浪吧！无聊就上CM语音，找人陪伴、匿名聊天、组队开黑，满足你的社交需求，甩掉孤单。特色功能：【全天候电台直播】24小时永不断电的电台直播全新上线沉浸',0,1,'HSQ',9,'/index.php?c=show&id=22',0,0,'127.0.0.1',1711617962,1711617962,0,'1','60.7 M','7.10.0','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_52559491_1_1711551762/0\",\"https://pp.myapp.com/ma_pic2/0/shot_52559491_2_1711551762/0\",\"https://pp.myapp.com/ma_pic2/0/shot_52559491_3_1711551762/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/F57BE91C6E2E4F33BD0D486016CD725A.apk?fsname=sg.bigo.orangy_7.10.0.apk&amp;hsr=52559491'),(23,1,'出口成章','https://pp.myapp.com/ma_icon/0/icon_52561659_1711548438/128','','“出口成章”是大连厚仁科技有限公司开发的一款AI驱动的中小学人文素质教育平台。【产品特色】·经典和历史结合——培根、铸魂、启智、润心·兴趣和素养并重——寓教于乐，日积月累·学习和测评同步——AI伴学，',0,1,'HSQ',9,'/index.php?c=show&id=23',0,0,'127.0.0.1',1711617975,1711617975,0,'1','426.3 M','3.3.1','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_52561659_1_1711548435/0\",\"https://pp.myapp.com/ma_pic2/0/shot_52561659_2_1711548435/0\",\"https://pp.myapp.com/ma_pic2/0/shot_52561659_3_1711548435/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/2A955FA4D0D35690385E382C6F664F3E.apk?fsname=com.sainti.eduread_3.3.1.apk&amp;hsr=52561659'),(24,1,'建行惠懂你','https://pp.myapp.com/ma_icon/0/icon_52727858_1711548423/128','','“建行惠懂你”App是建设银行面向小微企业、个体工商户等普惠客群打造的综合服务平台，为用户提供“信贷融资+综合金融+经营管理”的一体化服务。焕新升级4.0版本，打造更加贴心、顺畅、智能的服务体验。【信',0,1,'HSQ',9,'/index.php?c=show&id=24',0,0,'127.0.0.1',1711617986,1711617986,0,'1','118.0 M','4.5.0','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_52727858_1_1711548420/0\",\"https://pp.myapp.com/ma_pic2/0/shot_52727858_2_1711548420/0\",\"https://pp.myapp.com/ma_pic2/0/shot_52727858_3_1711548420/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/006CA19DB0B5FF22E21A4B11806112EC.apk?fsname=com.ccb.leye_4.5.0.apk&amp;hsr=52727858'),(25,1,'天坦读屏','https://pp.myapp.com/ma_icon/0/icon_52462716_1711548379/128','','天堑变坦途，天坦读屏，一款专为视障者或阅读不便人群设计的安卓屏幕阅读器，它上手简单、易于使用、功能全面，同时有着专业的客服团队,提供不同的沟通渠道为您排忧解惑。通过天坦读屏，您可以自由的使用安卓手机与',0,1,'HSQ',9,'/index.php?c=show&id=25',0,0,'127.0.0.1',1711617998,1711617998,0,'1','41.4 M','8.0.4','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_52462716_1_1711548378/0\",\"https://pp.myapp.com/ma_pic2/0/shot_52462716_2_1711548378/0\",\"https://pp.myapp.com/ma_pic2/0/shot_52462716_3_1711548378/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/06BE16B504AFD7636FA0C51C0E3C1F96.apk?fsname=com.android.tback_8.0.4.apk&amp;hsr=52462716'),(26,1,'万能遥控器','https://pp.myapp.com/ma_icon/0/icon_54107264_1711548325/128','','智能家用电视空调万能遥控遥软件，手机遥控器，支持多种设备连接，您的智能遥控帮手。适用于日常生活中使用家电的常用遥控场景。',0,1,'HSQ',9,'/index.php?c=show&id=26',0,0,'127.0.0.1',1711618016,1711618016,0,'1','48.6 M','39.8','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54107264_1_1711548323/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54107264_2_1711548323/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54107264_3_1711548323/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/768266EC63C05A4B6B6AE5395AEA38AD.apk?fsname=com.general.op_39.8.apk&amp;hsr=54107264'),(27,1,'短线王','https://pp.myapp.com/ma_icon/0/icon_52526932_1711548292/128','','短线王，为短线交易而生，超过1000万短线高手都在使用。 汇集深度龙虎榜，集合竞价，事件驱动，打板神器，实时龙虎榜，题材风口挖掘，AI擒龙等短线工具，包含短线战法，游资研究，脱水研报，深度公告等内容干',0,1,'HSQ',9,'/index.php?c=show&id=27',0,0,'127.0.0.1',1711618029,1711618029,0,'1','70.5 M','6.0.7','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_52526932_1_1711548289/0\",\"https://pp.myapp.com/ma_pic2/0/shot_52526932_2_1711548289/0\",\"https://pp.myapp.com/ma_pic2/0/shot_52526932_3_1711548289/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/63233C84D7CF899B3EC70CCB21CEA3F5.apk?fsname=com.quchaogu.dxw_6.0.7.apk&amp;hsr=52526932'),(28,1,'小月记','https://pp.myapp.com/ma_icon/0/icon_53310521_1711548256/128','','专为女生设计的经期管理工具。预测准确、记录方便，还有图形化的统计信息，帮助你更了解自己。这也是一本女性日历，月经周期、排卵期、排卵日、安全期、易孕期等等，标识清楚、一目了然。根据科学的预测和周到的提醒',0,1,'HSQ',9,'/index.php?c=show&id=28',0,0,'127.0.0.1',1711618043,1711618043,0,'1','17.6 M','V1.9.110','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_53310521_1_1711548253/0\",\"https://pp.myapp.com/ma_pic2/0/shot_53310521_2_1711548253/0\",\"https://pp.myapp.com/ma_pic2/0/shot_53310521_3_1711548253/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/FF2E2291D92298192249DD423FF4EC97.apk?fsname=com.slfteam.moonbook_V1.9.110.apk&amp;hsr=53310521'),(29,1,'论文帮','https://pp.myapp.com/ma_icon/0/icon_42329218_1711548245/128','','论文帮平台经过10年的论文服务探索，现已全新升级，正式迎来2.0时代！我们面向硕博 | 本科 | MBA | 期刊 | 职称评定等论文用户群体，提供一站式论文解决方案。1. 论文领域：本硕博毕业论文/',0,1,'HSQ',9,'/index.php?c=show&id=29',0,0,'127.0.0.1',1711618054,1711618054,0,'1','11.2 M','3.7.6','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_42329218_1_1711548243/0\",\"https://pp.myapp.com/ma_pic2/0/shot_42329218_2_1711548243/0\",\"https://pp.myapp.com/ma_pic2/0/shot_42329218_3_1711548243/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/A5A8B54286579017039B95268DB08238.apk?fsname=com.gto.bangbang_3.7.6.apk&amp;hsr=42329218'),(30,1,'扫描王','https://pp.myapp.com/ma_icon/0/icon_10138100_1711548231/128','','手机描仪，文档管理工具。拍照清晰可切边裁剪图像，裁剪你需要的文件内容，生成PDF。邮件发送、连接打印机、传真、微信共享电脑脑功能齐全、云存储，多设备多途径数据区！实用型的办公无纸化节能工具！全球几千万',0,1,'HSQ',9,'/index.php?c=show&id=30',0,0,'127.0.0.1',1711618068,1711618068,0,'1','98.3 M','3.1.2.0','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_10138100_1_1711548228/0\",\"https://pp.myapp.com/ma_pic2/0/shot_10138100_2_1711548228/0\",\"https://pp.myapp.com/ma_pic2/0/shot_10138100_3_1711548228/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/3C4AAF857A5AA441E72BD13B4C20595F.apk?fsname=com.ws.lite.worldscan_3.1.2.0.apk&amp;hsr=10138100'),(31,1,'享聊','https://pp.myapp.com/ma_icon/0/icon_52566370_1711548210/128','','与在线用户语音派对、视频交友、聊天，有同城单身男女、恋爱、交友、聊天，默默汇集了不同趣味爱好的真实用户。你可以在这里匹配视频聊天、恋爱交友，或诉说或倾听另一种别样的生活。随时随地想聊就聊，你可以同城交',0,1,'HSQ',9,'/index.php?c=show&id=31',0,0,'127.0.0.1',1711618078,1711618078,0,'1','98.7 M','3.22.9','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_52566370_1_1711548208/0\",\"https://pp.myapp.com/ma_pic2/0/shot_52566370_2_1711548208/0\",\"https://pp.myapp.com/ma_pic2/0/shot_52566370_3_1711548208/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/4DE7B41659652CE332089374E87D0095.apk?fsname=cn.sharesmile.enjoychat_3.22.9.apk&amp;hsr=52566370'),(32,1,'阿拉相亲','https://pp.myapp.com/ma_icon/0/icon_54060199_1711548202/128','','欢迎使用阿拉相亲---一款强调宁波本土真实恋爱的相亲婚恋交友APP真实恋爱交友多重资料认证，会员信息经严格人工审核，拒绝一切虚假内容，我们致力于打造宁波安全靠谱的相亲环境，杜绝照骗，拒绝机器人，隐私保',0,1,'HSQ',9,'/index.php?c=show&id=32',0,0,'127.0.0.1',1711618093,1711618093,0,'1','13.3 M','2.0.0','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54060199_1_1711548200/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54060199_2_1711548200/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54060199_3_1711548200/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/9BB72D99C57A2BB42932D1007055CB77.apk?fsname=com.alaxiangqin_2.0.0.apk&amp;hsr=54060199'),(33,1,'药源网','https://pp.myapp.com/ma_icon/0/icon_52860773_1711548189/128','','提供药品说明书、批准文号、生产企业、医保目录、基本药物目录、中药保护品种、药物标准索引、药物辞典等医药生产研发及销售等常用信息服务。',0,1,'HSQ',9,'/index.php?c=show&id=33',0,0,'127.0.0.1',1711618102,1711618102,0,'1','55.1 M','V2.3.4','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_52860773_1_1711548186/0\",\"https://pp.myapp.com/ma_pic2/0/shot_52860773_2_1711548186/0\",\"https://pp.myapp.com/ma_pic2/0/shot_52860773_3_1711548186/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/F312633AF2ED05C7D010DB7DDE84C5C7.apk?fsname=com.yaopinnet.m_V2.3.4.apk&amp;hsr=52860773'),(34,1,'上海外服','https://pp.myapp.com/ma_icon/0/icon_1095521_1711548152/128','','本软件只针对员工个人用户（C端）提供服务，目前底层使用外服全国雇员平台的数据和接口，覆盖上海外服本部及中央数据库覆盖范围的分子公司，具体功能如下：一、社会保险：员工可查询24个月的社保缴纳记录二、公积',0,1,'HSQ',9,'/index.php?c=show&id=34',0,0,'127.0.0.1',1711618116,1711618116,0,'1','26.2 M','6.9.8.0','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_1095521_1_1711548150/0\",\"https://pp.myapp.com/ma_pic2/0/shot_1095521_2_1711548150/0\",\"https://pp.myapp.com/ma_pic2/0/shot_1095521_3_1711548150/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/EC7C2C5F48A6DF2B308CA5A4669216A6.apk?fsname=com.Wf_6.9.8.0.apk&amp;hsr=1095521'),(35,1,'ShinePhone','https://pp.myapp.com/ma_icon/0/icon_1289974_1711548151/128','','一款光伏电站监控客户端软件，具有全新的监控管理,全面的数据分析和贴心的客服服务。    可从深圳古瑞瓦特新能源股份有限公司（Growatt）数据中心获取光伏电站的运行参数，如发电量、发电收益、设备状态',0,1,'HSQ',9,'/index.php?c=show&id=35',0,0,'127.0.0.1',1711618126,1711618126,0,'1','90.5 M','8.1.4.1','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_1289974_1_1711548148/0\",\"https://pp.myapp.com/ma_pic2/0/shot_1289974_2_1711548148/0\",\"https://pp.myapp.com/ma_pic2/0/shot_1289974_3_1711548148/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/21A65B478968E501D160F0D4622A9396.apk?fsname=com.growatt.shinephone_8.1.4.1.apk&amp;hsr=1289974'),(36,1,'中泰齐富通','https://pp.myapp.com/ma_icon/0/icon_12003427_1711548143/128','','中泰齐富通是中泰证券（原齐鲁证券）旗下为广大投资者打造的集证券开户、股票交易、股票行情、投资资讯、业务办理多功能于一体的股票/证券/炒股/理财/投资金融平台。中泰证券（原齐鲁证券）是全国大型综合类老牌',0,1,'HSQ',9,'/index.php?c=show&id=36',0,0,'127.0.0.1',1711618137,1711618137,0,'1','104.8 M','8.10.2211','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_12003427_1_1711548141/0\",\"https://pp.myapp.com/ma_pic2/0/shot_12003427_2_1711548141/0\",\"https://pp.myapp.com/ma_pic2/0/shot_12003427_3_1711548141/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/4310BF7EB58AA8A039BE514DCBC3859D.apk?fsname=com.qlscupgrade_8.10.2211.apk&amp;hsr=12003427'),(37,1,'脉脉','https://pp.myapp.com/ma_icon/0/icon_10264058_1711548133/128','','现在流行，上脉脉问内部员工。脉脉——公司员工都在用的职场内容社区，拥有职业认证背书。分布在不同行业、不同公司的内部员工为你提供独特而有价值的一手信息。无论你处于职业发展的哪个阶段，都可以来脉脉听听大家',0,1,'HSQ',9,'/index.php?c=show&id=37',0,0,'127.0.0.1',1711618148,1711618148,0,'1','89.3 M','6.3.54','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_10264058_1_1711548131/0\",\"https://pp.myapp.com/ma_pic2/0/shot_10264058_2_1711548131/0\",\"https://pp.myapp.com/ma_pic2/0/shot_10264058_3_1711548131/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/04DDCD73FE294A12A6B9F3F459B686ED.apk?fsname=com.taou.maimai_6.3.54.apk&amp;hsr=10264058'),(38,1,'全民严选','https://pp.myapp.com/ma_icon/0/icon_53910438_1711548126/128','','全民严选—全民已为你严选『关于全民严选』全民严选新电商，从选品到上新，全流程把控全民严选模式。全民严选始终坚持做“精选万千好物，提升品质生活”的理念，作为全民严选在生活消费品领域的主阵地，致力于为用户',0,1,'HSQ',9,'/index.php?c=show&id=38',0,0,'127.0.0.1',1711618161,1711618161,0,'1','51.8 M','6.9.3','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_53910438_1_1711548124/0\",\"https://pp.myapp.com/ma_pic2/0/shot_53910438_2_1711548124/0\",\"https://pp.myapp.com/ma_pic2/0/shot_53910438_3_1711548124/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/6F25635A4D7F5B036E041E5647962B4C.apk?fsname=com.aysd.bcfa_6.9.3.apk&amp;hsr=53910438'),(39,1,'中邮保险','https://pp.myapp.com/ma_icon/0/icon_54094671_1711548117/128','','中邮保险APP提供线上保险产品展示及购买，可进行保单保全自助服务、理赔报案与查询、续期缴费操作。APP可以进行全渠道购买保单的查询，APP购买保单的订单查询，还可以进行一系列的保全操作。包括了投保人信',0,1,'HSQ',9,'/index.php?c=show&id=39',0,0,'127.0.0.1',1711618175,1711618175,0,'1','39.4 M','1.4.7','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54094671_1_1711548115/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54094671_2_1711548115/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54094671_3_1711548115/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/97CE50FA0708E5AFB6AE1FBAE59B8523.apk?fsname=com.chinapost.life_1.4.7.apk&amp;hsr=54094671'),(40,1,'考拉小匠','https://pp.myapp.com/ma_icon/0/icon_53963520_1711548113/128','','考拉小匠家装服务平台，找独立工长、设计师  上考拉小匠。=主要功能=【发布招标】业主发布装修需求，服务者（工长、设计师 和 监理）前来竞标，业主联系竞标服务者免费上门量房报价；【招标管理】业主选定想合',0,1,'HSQ',9,'/index.php?c=show&id=40',0,0,'127.0.0.1',1711618187,1711618187,0,'1','114.4 M','6.6.5','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_53963520_1_1711548111/0\",\"https://pp.myapp.com/ma_pic2/0/shot_53963520_2_1711548111/0\",\"https://pp.myapp.com/ma_pic2/0/shot_53963520_3_1711548111/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/EB74D59EAD1B3AD4DF7C5B096FDEAA17.apk?fsname=com.kaola.xj.kaola_6.6.5.apk&amp;hsr=53963520'),(41,1,'车智管','https://pp.myapp.com/ma_icon/0/icon_54036340_1711548088/128','','车智管是一款车辆管理软件，可以录入车辆的加油、充电、保养、维修、开支、收入信息，生成完整的车辆花费和收入报告，帮助车主分析并节省车辆开支。 1.记账：车辆的加油，保养，支出，收入，维修费用记录；2.提',0,1,'HSQ',9,'/index.php?c=show&id=41',0,0,'127.0.0.1',1711618198,1711618198,0,'1','18.7 M','2.9.30','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54036340_1_1711548085/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54036340_2_1711548085/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54036340_3_1711548085/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/F9B1CB71020A34B7D60CAA5D0E39F97C.apk?fsname=com.sluyk.carbuddy_2.9.30.apk&amp;hsr=54036340'),(43,1,'360手机助手','https://pp.myapp.com/ma_icon/0/icon_2633_1711546223/128','','360手机助手，您手机上的软件管家！数十万款Android软件和游戏供您下载，360安全中心检测全方位安全保障。每天推荐当下火热的应用和好玩的游戏，让您轻松成为时尚的玩机达人。安装360手机助手，瞬间',0,1,'HSQ',9,'/index.php?c=show&id=43',0,0,'127.0.0.1',1711618211,1711618211,0,'1','26.3 M','10.2.2','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_2633_1_1711546221/0\",\"https://pp.myapp.com/ma_pic2/0/shot_2633_2_1711546221/0\",\"https://pp.myapp.com/ma_pic2/0/shot_2633_3_1711546221/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/FFA1CCFBC1C67E77E2DE77DE822C1395.apk?fsname=com.qihoo.appstore_10.2.2.apk&amp;hsr=2633'),(46,1,'升学e网通','https://pp.myapp.com/ma_icon/0/icon_12064713_1711545456/128','','升学e网通是一款专为高中生打造的集在线学习、志愿填报、心理辅导等多元化功能为一体的综合性学习教辅产品 。围绕高中生遇到的学习基础薄弱、志愿填报难题、心理负面情绪等问题，通过“学科学习、生涯规划、心灵成',0,1,'HSQ',9,'/index.php?c=show&id=46',0,0,'127.0.0.1',1711618239,1711618239,0,'1','142.5 M','10.4.5','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_12064713_1_1711545452/0\",\"https://pp.myapp.com/ma_pic2/0/shot_12064713_2_1711545452/0\",\"https://pp.myapp.com/ma_pic2/0/shot_12064713_3_1711545452/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/130BBCBDC9B4B7826A3556D6DCC94037.apk?fsname=com.mistong.ewt360_10.4.5.apk&amp;hsr=12064713'),(48,1,'RoadCam','https://pp.myapp.com/ma_icon/0/icon_42341232_1711544893/128','','Roadcam主要服务于行车记录仪用户，提供给用户，更好的使用体验。提供了友好的人机交互界面，并提供在线视频剪辑，视频分享，车友圈等功能。',0,1,'HSQ',9,'/index.php?c=show&id=48',0,0,'127.0.0.1',1711618252,1711618252,0,'1','79.2 M','3.2.1','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_42341232_1_1711544891/0\",\"https://pp.myapp.com/ma_pic2/0/shot_42341232_2_1711544891/0\",\"https://pp.myapp.com/ma_pic2/0/shot_42341232_3_1711544891/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/EA604C83DE633307156B4F59B5576134.apk?fsname=com.camera.ligo_3.2.1.apk&amp;hsr=42341232'),(50,1,'新漂流瓶','https://pp.myapp.com/ma_icon/0/icon_52418934_1711544747/128','','来新漂流瓶，茫茫人海遇见懂你的TA。新漂流瓶是一款以“漂流瓶”为主题的匿名语音聊天交友平台。这里的人真实、走心，共同维护纯粹、干净的交友环境。在这里，人们没有现实社交中的压力，大家相聚在漂流瓶世界里，',0,1,'HSQ',9,'/index.php?c=show&id=50',0,0,'127.0.0.1',1711618264,1711618264,0,'1','124.8 M','4.3.0','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_52418934_1_1711544744/0\",\"https://pp.myapp.com/ma_pic2/0/shot_52418934_2_1711544744/0\",\"https://pp.myapp.com/ma_pic2/0/shot_52418934_3_1711544744/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/A277F47C402E3B0876284BE2104591C3.apk?fsname=com.yilahuo.driftbottle_4.3.0.apk&amp;hsr=52418934'),(52,1,'光彩龙驹','https://pp.myapp.com/ma_icon/0/icon_52750592_1711544728/128','','光彩出行专车，湖南光彩神舟网约车有限责任公司旗下品牌，发展目标定位于“打造国内县市级专车出行服务品牌”，致力于成为近郊出行服务方案的设计者和服务商。形成以租车、购车、新能源分时租车等主体的移动出行产业',0,1,'HSQ',9,'/index.php?c=show&id=52',0,0,'127.0.0.1',1711618275,1711618275,0,'1','47.6 M','3.8.24','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_52750592_1_1711544726/0\",\"https://pp.myapp.com/ma_pic2/0/shot_52750592_2_1711544726/0\",\"https://pp.myapp.com/ma_pic2/0/shot_52750592_3_1711544726/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/24544E44E643CDBFF42D7E6532B72BBF.apk?fsname=com.gcsz.driver_3.8.24.apk&amp;hsr=52750592'),(54,1,'万物心选','https://pp.myapp.com/ma_icon/0/icon_52724557_1711544702/128','','万物心选，是一家涵盖儿童服饰、玩具绘本、课程服务、亲子旅游到美食生鲜、时尚美容、家居生活...涵盖全场景、专注于服务90后新生代家庭的社交新电商平台。-万物心选，更懂新生代家庭需求，专注挖掘和开发用心',0,1,'HSQ',9,'/index.php?c=show&id=54',0,0,'127.0.0.1',1711618290,1711618290,0,'1','73.4 M','7.10.57','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_52724557_1_1711544699/0\",\"https://pp.myapp.com/ma_pic2/0/shot_52724557_2_1711544699/0\",\"https://pp.myapp.com/ma_pic2/0/shot_52724557_3_1711544699/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/4F1A71E1F14422B67E50DA74DD4626C7.apk?fsname=com.wanwu.wanwu_7.10.57.apk&amp;hsr=52724557'),(56,1,'转单宝','https://pp.myapp.com/ma_icon/0/icon_52419158_1711544689/128','','转单宝是国内专业专注于鲜花蛋糕礼品行业的订单转单交易平台，为鲜花、蛋糕行业用户提供全网订单管理解决方案；同城物流配送解决方案；行业供应链一键转单、一件代发解决方案。转单宝旨在提升鲜花、蛋糕实体店及网店',0,1,'HSQ',9,'/index.php?c=show&id=56',0,0,'127.0.0.1',1711618301,1711618301,0,'1','103.7 M','2.14.13','{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_52419158_1_1711544687/0\",\"https://pp.myapp.com/ma_pic2/0/shot_52419158_2_1711544687/0\",\"https://pp.myapp.com/ma_pic2/0/shot_52419158_3_1711544687/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','https://imtt.dd.qq.com/sjy.20002/sjy.00004/16891/apk/01DC4B1DE206053FE8E4CD4265B5066E.apk?fsname=com.zhuandanbao.app_2.14.13.apk&amp;hsr=52419158');
/*!40000 ALTER TABLE `{dbprefix}1_ruanjian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_ruanjian_category`
--

DROP TABLE IF EXISTS `{dbprefix}1_ruanjian_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_ruanjian_category` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所有上级id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目名称',
  `dirname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目目录',
  `pdirname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '上级目录',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有下级',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用',
  `ismain` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否主栏目',
  `childids` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '下级所有id',
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目图片',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `setting` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '属性配置',
  `displayorder` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `show` (`show`),
  KEY `disabled` (`disabled`),
  KEY `ismain` (`ismain`),
  KEY `module` (`pid`,`displayorder`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='栏目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_ruanjian_category`
--

LOCK TABLES `{dbprefix}1_ruanjian_category` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_ruanjian_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}1_ruanjian_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_ruanjian_category_data`
--

DROP TABLE IF EXISTS `{dbprefix}1_ruanjian_category_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_ruanjian_category_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` int(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='栏目模型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_ruanjian_category_data`
--

LOCK TABLES `{dbprefix}1_ruanjian_category_data` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_ruanjian_category_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}1_ruanjian_category_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_ruanjian_data_0`
--

DROP TABLE IF EXISTS `{dbprefix}1_ruanjian_data_0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_ruanjian_data_0` (
  `id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COLLATE utf8mb4_unicode_ci COMMENT '内容',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容附表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_ruanjian_data_0`
--

LOCK TABLES `{dbprefix}1_ruanjian_data_0` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_ruanjian_data_0` DISABLE KEYS */;
INSERT INTO `{dbprefix}1_ruanjian_data_0` VALUES (2,1,1,'&lt;p&gt;支付宝是蚂蚁集团旗下业务，诞生于2004年，已经成长为世界领先的数字支付开放平台和服务业数字化经营开放平台。&lt;/p&gt;&lt;p&gt;我们面向消费者、各行各业商家提供便捷、安全的数字支付服务，面向合作伙伴持续开放技术、产品，助力实现数字化升级。&lt;/p&gt;&lt;p&gt;与此同时，大量商家机构通过支付宝App为消费者提供政务办事、扫码点单、生活缴费等超过1000种生活服务。&lt;/p&gt;&lt;p&gt;截至目前，支付宝和合作伙伴一起服务8000万商家、10亿消费者。&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p&gt;备案号：浙ICP备16025414号-40A&lt;/p&gt;'),(14,1,1,'&lt;p&gt;安居客是国内优质房地产租售服务平台，专注于房地产租售信息服务。安居客以“帮助人们实现家的梦想”为企业愿景，全面覆盖买房、租房、商业地产三大业务，同时为开发商与经纪人提供高效的网络推广平台。安居客旗下业务网站每月独立访问用户已突破7000万。&lt;/p&gt;&lt;p&gt;\r\n&lt;/p&gt;&lt;p&gt;移动经纪人致力于更好的为经纪人服务，满足经纪人随时随地办公的需求，打造经纪人的移动工作平台。&lt;/p&gt;'),(15,1,1,'&lt;p&gt;【简洁天气界面】&lt;/p&gt;&lt;p&gt;天气背景：真实城市美景、自然风光、多版主题随心切换;&lt;/p&gt;&lt;p&gt;天气动画：超炫天气动画，下雨、打雷、闪电动画唯美逼真，让您身临其境;&lt;/p&gt;&lt;p&gt;桌面天气小插件：提供多款桌面插件，总有一款风格适合你;&lt;/p&gt;&lt;p&gt;【准确实况天气】&lt;/p&gt;&lt;p&gt;*短临降雨：分钟级降水量预报，每时每刻雨雪变化，尽在掌握;&lt;/p&gt;&lt;p&gt;*空气质量：实时空气质量监测，PM2.5及AQI指数预报，关心天气，更关心您的健康生活;&lt;/p&gt;&lt;p&gt;【权威天气预报】&lt;/p&gt;&lt;p&gt;*90日天气预报:提供90日天气预报功能，让您预知未来天气，出行轻松无忧;&lt;/p&gt;&lt;p&gt;*24小时气温趋势：轻松查阅气温变化，提早预防早晚温差过大;&lt;/p&gt;&lt;p&gt;*15日空气质量趋势：空气质量预报涵盖各县市级地区，防“霾”于未然;&lt;/p&gt;&lt;p&gt;*恶劣天气提示：雾、霾、暴雨、寒潮、高温、沙尘暴、大雾等各类恶劣性天气的预报;&lt;/p&gt;&lt;p&gt;【气象灾害预警】&lt;/p&gt;&lt;p&gt;*信息可靠：采用气象部门授权的权威预警信息;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p&gt;*及时预警：渍涝风险、山洪灾害、中小河流洪水气象风险以及台风路径预警，及时通知您气象灾害，帮您提前做好气象防范;&lt;/p&gt;'),(16,1,1,'&lt;p&gt;“更懂你的通信管家”——中国联通APP11.0新版本来了!&lt;/p&gt;&lt;p&gt;中国联通APP是中国联通推出的官方客户端自服务软件。集查询交费、业务办理、生活服务于一身，致力于为用户提供更优质的使用体验，创造更便捷、更个性化的美好智慧生活。&lt;/p&gt;&lt;p&gt;1.新版服务大厅&lt;/p&gt;&lt;p&gt;•100+项服务在线办：分类更明确，便于查找;操作更简化，轻松办理;&lt;/p&gt;&lt;p&gt;•常用功能自定义：支持自定义编辑，可自选常用功能放置在首页;&lt;/p&gt;&lt;p&gt;•省力更省时：足不出户，就能体验营业厅服务。&lt;/p&gt;&lt;p&gt;2.话费账单 全新升级&lt;/p&gt;&lt;p&gt;•更清晰：剩余话费页面化繁为简，本月已消费实时更新;&lt;/p&gt;&lt;p&gt;•更易懂：我的账单新增本月消费明细，同时提供账单阅读指南，让账单通俗易懂，明白消费每一笔。&lt;/p&gt;&lt;p&gt;3.品质宽带 上门服务&lt;/p&gt;&lt;p&gt;•千兆网速：高至2000M、全屋覆盖、WiFi无死角;&lt;/p&gt;&lt;p&gt;•智家设备：看家神器、智能门锁、IPTV;&lt;/p&gt;&lt;p&gt;•上门服务：在线报修、一键测速、快速上门。&lt;/p&gt;&lt;p&gt;4.海量套餐 任你挑选&lt;/p&gt;&lt;p&gt;•套餐多：超多品类套餐，超多档位可选，超多流量语音，官方套餐一站看全;&lt;/p&gt;&lt;p&gt;•配送快：订单处理快、上门配送速度快、客服售后快，下单体验快人一步;&lt;/p&gt;&lt;p&gt;•服务好：在线客服，专业服务，问题解答小能手。&lt;/p&gt;&lt;p&gt;5.一亿靓号 挑你喜欢&lt;/p&gt;&lt;p&gt;•学子靓号：学业有成，金榜题名;&lt;/p&gt;&lt;p&gt;•爱情靓号：为Ta定制，爱要大声说出来;&lt;/p&gt;&lt;p&gt;•亲友靓号：爱意绵延，家庭圆满;&lt;/p&gt;&lt;p&gt;•稀有靓号：奢华靓号，独显尊贵;&lt;/p&gt;&lt;p&gt;•生日靓号：年年岁岁，快乐加倍;&lt;/p&gt;&lt;p&gt;•幸运靓号：每一天都是lucky day;&lt;/p&gt;&lt;p&gt;•福多多：福气满堂，福禄寿号码带回家;&lt;/p&gt;&lt;p&gt;6.手机数码 专享优惠&lt;/p&gt;&lt;p&gt;•合约购机：正品手机，官方补贴，贴心客服快速响应;&lt;/p&gt;&lt;p&gt;•限时特惠：数码好物限量抢;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p&gt;•以旧换新：换机大回馈，上门取旧送新。&lt;/p&gt;'),(17,1,1,' 扇贝阅读，为你推送原汁原味的英语短文和原著，它不只是一个“学英语”的app，更是一个帮你开始“用英语学”的app。<br><br>【英文原著】<br>经典的英文原著，带你感受原汁原味的阅读体验。<br><br>【精选短文】<br>精心编排的英语短文，让你在轻松的阅读中收获学习和成长。<br><br>【学习计划】<br>阅读中的生词可以即时添加到自己的学习计划中，利用扇贝强大的记忆系统进行学习。<br><br>【重难点强化】<br>文章的重点单词、各类考试（四六级、考研、托福GRE雅思等）的难点单词，都会由系统高亮展示，帮助你查缺补漏。<br><br>【图表反馈】<br>你每天的学习进度，都会通过图表生动展示，包括每日的单词和短文数。<br><br>【短文计划】<br>我们还会协助你制定短文计划，约束自己在一个月、两个月内一天不落地进行阅读。<br> <br>【读书笔记】<br>你可以在短文中自由添加读书笔记，你的优质读书笔记还会获得其他用户的点赞；阅读完一篇文章，在读后感区可以发布自己的评论，交流学习心得。<br> <br>公众号：shanbay17<br>新浪：@扇贝网<br>电子邮箱：help@shanbay.com<br><br>这些全部是用户的真实评价——<br>@Linx-tiger：看了一年多扇贝英文短文，题材宽泛，很棒！<br><br>@双重视角：每天都会有实时新消息推送，在学英语的同时还可以了解到很多新知，UI设计简洁大方，很棒的app<br><br>@他点亮了地球：可以很好的利用碎片时间，坐地铁必备。每日提醒功能也很棒。帮助自己养成了学英语的好习惯。'),(18,1,1,' 仟映音乐剪辑是一款功能强大、操作简单的音乐剪辑、音频剪辑软件，提供各类丰富的音频剪辑功能，可以方便快捷地进行音乐剪辑、音乐制作和铃声制作等，并且支持mp3、m4a、aac、wav、flac等多种常见音频格式，同时支持一些简单的视频处理功能。主要功能为：<br><br>【音乐剪切】 提供毫秒级精度的音频剪切、裁剪功能，并提供了去除选中部分功能，让您可以一键去掉音乐中不想要的部分。<br>.<br>【音乐合成】 提供了多种合成模式，可将多首音乐按顺序拼接起来，特别是淡入淡出模式，可让您两首音乐的切换丝滑、流畅不突兀。<br><br>【格式转换】 支持多种主流音频格式，如mp3、m4a、aac、flac、wma、arm等，并且支持调整音乐的采样率、比特率和声道模式。 <br><br>【混音】 可将多首音乐混音到一起实现同时播放，并且采用独特混音算法，使得混音的音质保留得更高质量且音量无任何衰减。<br><br>【淡入淡出】 让音乐舒缓展开或者舒缓结束。<br><br>【变速变调】 可自由调整音乐的播放速度，以及音乐的升降调。<br><br>【视频提取音频】 用于将视频中的音乐提取出来。<br><br>【修改音量】 可自由调整音乐的音量大小。<br><br>【人声/伴奏分离】 通过智能算法，将一首歌'),(19,1,1,' 提供实时天气以及天气预报，天气预报24小时、新增地震预警 未来15天天气预报。实时温度计算空气质量指数、温度趋势、pm2.5等全面天气信息。提供穿衣、紫外线、舒适度等生活指数。帮助出差异地天气变化不会墨迹天气，简单快捷天气预报，为您开启每日彩云好天气，帮您美好生活小助手！<br>【全球任意经纬度天气查询】<br>支持全球任意经纬度天气信息查询，无论赤道南极，天气尽知晓。<br> <br>【未来40天预报】<br>40日天气趋势预测，预知晴雨早做打算。<br> <br>【四大场景化服务】<br>出行、钓鱼、亲子、运势四大场景板块，更懂你的气象服务，用气象简化你的生活。<br> <br>【2小时精准雨雪预报】<br>降水雷达图走势清晰，提供分钟级精准天气预报，出行更放心。<br> <br>【空气质量实时监控】<br>实时监控空气质量，关爱健康全面护航。<br> <br>精准实时与24小时逐小时天气预报，温度变化冷暖早知道。<br> <br>未来2小时雨雪预报，精准到分钟级别，让您出行无忧。<br> <br>超长15天天气预测，预知晴雨为您的日常生活早做打算。<br> <br>空气质量实时查询，PM2.5一目了然，从容面对雾霾污染<br>'),(20,1,1,' 方竹论坛是南川比较有影响力的综合性网络平台，目前，拥有网站用户30万，微信粉丝超过25万人，南川区委指定阳光政务平台，区县网站联盟副理事长单位，渝网盟副理事长单位！'),(21,1,1,' 【品牌介绍】<br>美团众包APP是一款专门为兼职人群打造的专业的兼职配送工具，依托于美团外卖，每天有超过2000万配送订单等您配送，让您成为用户和商家的兼职送餐骑士，自己创业的老板！海量兼职配送订单等你来，轻松送餐，有机会月入过万！更有多重活动，对兼职及送餐助力！平台长期保持兼职专职骑手招聘活动，注册即可开始进行配送兼职工作，单单结算，让您随时随地开赚，自我掌控时间！<br><br>【平台优势】<br>海量订单——附近订单实时更新<br>操作简单——只需四步点击即可完成订单<br>收入可靠——单单结算，奖励丰厚<br>邀请有奖——你的人脉就是你的财富<br>【新人奖励】<br>新手入门友好，多项专属权益等你解锁，还有多样奖励不定期发放，达成活动条件，即可获得额外现金，助力新手收入提升，具体信息以APP内页面展示为准。<br><br>【联系方式】<br>1、骑手客服：10101777<br>2、骑手官方微信：mtqishou'),(22,1,1,' CM语音ChatMe，时下超火的社交平台：一起交友冲浪吧！<br>无聊就上CM语音，找人陪伴、匿名聊天、组队开黑，满足你的社交需求，甩掉孤单。<br><br>特色功能：<br>【全天候电台直播】<br>24小时永不断电的电台直播全新上线<br>沉浸式解压的自然声、轻音乐陪伴入眠，不间断的声音陪伴我全都有！<br><br>【附近的人】<br>网络社交太遥远？<br>点点列表，随时发现身边高颜值又有趣的新伙伴~<br><br>【交友聊天】<br>认识新朋友，邂逅浪漫爱情，收获莫逆之交。<br>扩列相亲、CP配对、派对聊天、主播点唱、声音恋人……总有你想认识的Ta在CM！<br><br>【匿名连麦】<br>语音匹配怕尴尬？<br>匿名的语音连麦聊天，用声音，用想法，认识我。<br>更有破冰小游戏，让你远离连麦尴尬的状况。<br><br>【动态社区】<br>有趣的Ta平时都玩些什么？<br>来社区看看吧，你和TA的故事，说不定能从一个评论开始哦~<br>小tips：多多点赞能够交到好多新朋友哦~'),(23,1,1,' “出口成章”是大连厚仁科技有限公司开发的一款AI驱动的中小学人文素质教育平台。<br><br>【产品特色】<br>·经典和历史结合——培根、铸魂、启智、润心<br>·兴趣和素养并重——寓教于乐，日积月累<br>·学习和测评同步——AI伴学，实时反馈，个性推荐<br><br>【主要功能】<br>·AI诵读评测<br>百万字传统文化经典诵读库，标准诵读示范语音，五维一体的智能语音评测及服务系统，为青少年提供诵读评测、反馈、分析等服务，助力青少年口诵心维、爱上经典<br>·AI规范汉字书写评测<br>应用图像识别、深度学习等前沿技术，帮助青少年规范书写常用汉字<br>·AI课外书阅读评价<br>从信息提取到鉴赏评价等维度展开评测，为青少年提供课外书阅读评价、反馈、分析等服务，帮助青少年培养阅读兴趣、提升阅读能力<br><br>【热门内容】<br>·《字正腔圆》《跟主持人学朗读》<br>专项训练，趣味挑战，让孩子爱上普通话，轻松绕口令，塑造自信朗读力。<br>·《汉字农场》《智慧冰雪岛》<br>“六步识字法”助力生字掌握，冰雪世界畅享汉语之美。<br>·《成语数独》《成语森林》<br>趣味闯关，寓教于乐，学测结合，轻松掌握8000常用成语。<br>·《飞花令》《少年诗词会》《诗风词韵》《爱上小古文》<br>覆盖经典古诗词篇目，AI技术提供即时反馈，趣味答题激发学习热情。<br>·《人文知识争霸》《超级运动会》《国风庄园》《历史守卫军》<br>科普、文学、体育、艺术、历史、传统文化等主题式学习，开拓视野，激发学习热情，全面提升素养。<br>·《爱国诗篇》《红色家书》《华夏少年说非遗》《文物映耀百年征程》《红色地标》<br>朗朗乾坤，堂堂中华，讲不完的爱国情怀，述不尽的文化遗产，出口成章概括浩瀚青史，浓缩辉煌文化，帮助孩子厚植爱国情怀，增强理想信念，树立文化自信。<br>·音频故事<br>精选优质历史、神话、文学、艺术、科普、哲学篇章，精心制作音频故事，为孩子打开聆听世界的大门。<br>·智慧父母<br>育儿问题，健康管理，习惯培养，陪伴指南，手把手教您做智慧家长。<br><br>【团队荣誉】<br>· 2022.09 入选“2022年度出版融合发展工程数字出版优质平台”<br>· 2022.07 入选辽宁省“揭榜挂帅”科技计划（重点）项目<br>· 2022.05 获“辽宁省专精特新‘小巨人’企业”。<br>· 2021.06 获“辽宁软件产业20年 优秀企业”。<br>· 2021.04 获“辽宁五一劳动奖状”。<br>· 2020.12 获“2020年度大数据智能产业 社会贡献奖” “2020年度大数据智能产业 卓越发展奖”。<br>· 2020.11 获评辽宁省文化和科技融合示范基地。<br>· 2020.06 入选大连市科技重大专项计划。<br>· 2019.12 获评2019年辽宁省新型创新主体——“种子独角兽”企业。<br>· 2019.12 荣获上海开放数据创新应用大赛“最具投资价值项目奖”。<br>· 2019.11 入选人民教育出版社《中小学数字化教学》第二届理事会常务理事单位。<br>· 2019.12 通过教育部教育APP备案，备案号：教APP备2100005号。<br>· 2018.11 登录CCTV2“创业英雄汇”节目。<br><br>【用户评价】<br>辽宁省大连市用户：非常非常好的一个软件，孩子在家爱上了朗读、背诵。学到了许多诗词，认识了好多生字。孩子用了这款软件后，更加热爱学习了！<br>湖南省长沙市用户：孩子不愿意在我们面前开口朗读，总是害羞，自从装了这个软件以后，孩子跟着软件自己练习，还能对孩子的朗读进行评估。慢慢孩子的朗读水平提高了，认识的生字都越来越多了！<br>福建省厦门市用户：除了古诗词、经典名著以外，孩子还能学到不少谜语、绕口令、对联、科普、艺术等方面的知识，不仅朗读水平提高了，还对学习越来越有兴趣啦~<br>吉林省吉林市用户：好多家长推荐的APP，孩子们特别喜欢，对学习很有帮助。<br><br>【联系我们】<br>官方微信公众账号：出口成章家长服务号<br>客服电话：4008723188'),(24,1,1,' “建行惠懂你”App是建设银行面向小微企业、个体工商户等普惠客群打造的综合服务平台，为用户提供“信贷融资+综合金融+经营管理”的一体化服务。焕新升级4.0版本，打造更加贴心、顺畅、智能的服务体验。<br>【信贷融资】<br>● 多元化信贷产品。面向小微企业、个体工商户、农户、科创企业等客群提供多款贷款产品。<br>● 旅程式信贷服务。支持额度测算、贷款申请、签约、支用、还款、续贷等一站式线上操作。<br>【综合金融】<br>● 账户结算服务。提供账户查询、无盾对账、电子回单等高频金融服务。<br>● 打造税费薪专区。围绕工资发放、企业缴税、缴社保等高频经营场景，部署移动端查询、缴纳功能。<br>【经营管理】<br>● 集成惠企服务。聚焦“财税”“物流”“法律”“差旅”等领域，合作引入企业经营服务。<br>● 多元用户角色。支持企业主授权员工使用缴税、记账等服务。<br>【贴心服务】<br>● 专属客户服务体系。引入AI数字客户经理、线下客户经理，提供7x24h咨询服务和操作引导。<br>● 简洁“融易”版本。集合核心贷款功能、高频金融服务打造新版本，随心切换。<br>【多维赋能】<br>● 知识干货分享。小微云课堂改版升级，围绕企业经营、贷款知识等主题提供“短视频+直播”课程。<br>● 优惠权益礼包。持续上线惠企活动和丰富权益礼包，赋能企业经营成长。'),(25,1,1,' 天堑变坦途，天坦读屏，一款专为视障者或阅读不便人群设计的安卓屏幕阅读器，它上手简单、易于使用、功能全面，同时有着专业的客服团队,提供不同的沟通渠道为您排忧解惑。通过天坦读屏，您可以自由的使用安卓手机与家人朋友进行交流，网上购物、外卖、打车、读书、刷视频，听小说也是轻而易举。它将是你贴心的同行者。'),(26,1,1,' 智能家用电视空调万能遥控遥软件，手机遥控器，支持多种设备连接，您的智能遥控帮手。<br>适用于日常生活中使用家电的常用遥控场景。'),(27,1,1,' 短线王，为短线交易而生，超过1000万短线高手都在使用。 汇集深度龙虎榜，集合竞价，事件驱动，打板神器，实时龙虎榜，题材风口挖掘，AI擒龙等短线工具，包含短线战法，游资研究，脱水研报，深度公告等内容干货。多维度短线选股，及时精准通知！一个app在手，炒股无忧，是上班炒股不可缺少的工具。<br>1 多维度选股<br>【深度龙虎榜】市场最好用，速度最快的龙虎榜工具，一线游资追踪，庄股，筹码分布等最实用的功能 ，同时每天一篇龙虎榜复盘，炒股更轻松！<br>【集合竞价】全市场首家全面解析集合竞价的炒股软件，包括涨停试盘，主力资金大幅流入，量比大增等，让您第一时间获悉集合竞价的异动股票<br>【抓涨停板】最实时的涨停报盘和涨停揭秘，第一时间打上板，打板更从容。<br>【竞价龙头】集合竞价选出当日强势股，很大概率涨停<br>【大盘温度计】实时监控大盘温度，比上证指数，深证成指，创业板指数等更全面，特别为短线炒股定制！<br>【脱水研报】每天一篇脱水研报，机构关注热点，优质板块轻松获悉。<br>【短线战法】市场最热门的，最新的短线战法一网打尽。<br>【游资分析】A股市场知名游资的手法，最深度的分析，包括其营业部，常用手法，喜好板块等<br>【圈子功能】针对不同的投资风格的股民可以一起沟通交流，目前有打板圈，题材圈，风口圈等主流投资风格<br><br>2 及时精准通知<br>在短线王app，您都可以第一时间获得如下通知。<br>【事件通知】一分钟以内，所有重大的事件，都由人工智能炒股机器人自动发现，把重要事件及时推送到手机上<br>【短线买卖信号】在你的自选股的股票，短线上的技术买卖信号，非常及时的通知到，是你做T的必备炒股软件！<br>【个股公告】自选股发生了公告事件之后，极短的时间以内通知到手机炒股软件短线王上。<br>【智能盯盘通知】对不同的自选股，个性化定制的推送，一旦达到条件第一时间推送<br><br>3 其他功能<br>   短线王是一款通用的炒股软件，包含了k线训练营，训练课程和炒股教学和股票视频，是您的股市导师！<br><br>4 用户反馈<br>    证券分析师张老师：“我是证券公司的投资顾问，平时最喜欢用的就是短线王app了，他的龙虎榜，特别是榜单的分析和官方的游资营业部组合，非常实用。”<br>    股民吕先生：“论寻找短线交易机会，短线王app是我们每天必须打开看的，哪怕有时候大盘不好，不想交易，也要打开看看！”<br>     股民王小姐： “短线王加油！通过你们的短线战法，学到了好多使用的信息，希望越做越好！“<br><br>投资有风险，选择需谨慎。'),(28,1,1,' 专为女生设计的经期管理工具。预测准确、记录方便，还有图形化的统计信息，帮助你更了解自己。<br>这也是一本女性日历，月经周期、排卵期、排卵日、安全期、易孕期等等，标识清楚、一目了然。<br>根据科学的预测和周到的提醒，帮你做好避孕或备孕的准备，让例假不再尴尬。<br><br>特点功能：<br>* 精美的交互界面专为美丽的你设计<br>* 主面板综合月经周期的各种提示，简单清除、一目了然<br>* 日历采用各种色彩标记，让您清楚了解、合理安排<br>* 日历页面可以针对每天可以做记录，并显示标记<br>* 可以记录包含：流量多少、有无性爱、22种常见经期症状，以及私有记录<br>* 我们还将生理周期用图表形式展示，提供平均值，以帮助你更好的了解自己的经期情况<br>* 可以分别设置姨妈提醒、易孕期提醒和排卵日提醒<br>* 可以打开密码保护功能保护隐私<br>* 支持账户登录（偲来方应用的统一账户）<br><br>我们乐于聆听你的意见~'),(29,1,1,' 论文帮平台经过10年的论文服务探索，现已全新升级，正式迎来2.0时代！<br><br>我们面向硕博 | 本科 | MBA | 期刊 | 职称评定等论文用户群体，提供一站式论文解决方案。<br>1. 论文领域：本硕博毕业论文/MBA论文/留学论文/国内外期刊发表等各学术使用场景。<br>2. 面向用户：硕士/本科/博士/留学在校生、MBA/职称评定/期刊发表等泛论文需求群体。<br><br>核心功能：论文服务 + 论文社区  + 论文下载 + 论文攻略<br>1. 论文服务：分为全日制毕业论文专区、期刊论文专区、在职MBA专区<br>选题+开题+初稿+定稿：论文全流程全科覆盖，为您打造专属论文小能手。<br>1) 帮帮：蕞快5-7天定稿，根据您的论文要求，匹配专业名校老师1v1全程跟进，省心定制。<br>2) 查重：免费论文查重，全体用户每日都可享受2次免费查重(10万字以内)。<br>3) 润色：只需您提供修改意见，1-2天润色完成，可加急可定制。<br>4) 辅导：保姆级1v1论文辅导咨询，本硕博毕业论文可送选题和提纲。<br>声明：拒绝学术不端，不建议直接用我们的论文内容直接交稿取得毕业证，授人以鱼不如授人以渔，我们始终以快速提升您的论文能力为核心目标。<br><br>2. 论文下载：找论文更容易，不用全网找，一个APP就够了。<br>1) 权威数据库论文下载：我们已汇聚5000篇来自知网、维普、万方的高下载量论文。<br>2) 原创论文下载：由论文帮资深写作团队亲历打造的品质论文，同时提供30%查重报告。<br><br>3. 问答社区：专注论文领域<br>2016年建成全网No1问答型论文社区：您的每个论文问题都会得到小帮团队可信赖的回答。<br>我们凝聚近百名985/211硕博毕业成员加入小帮团队，专业且认真的回复您的任何论文问题。<br>来这里，解答您的难题，每天进步一点点。<br><br>4. 论文攻略：新增「看一看」模块，每日生产优质论文写作指导内容。<br>覆盖范围：选题、开题、初稿、定稿、查重、降重论文全过程，写作技巧、论文资讯、开题模板、论文模板、论文撰写教程等应有尽有。<br><br>我们的愿景：致力为论文用户提供优质可信赖的服务。<br>1. 打造优质论文学术交流社区：任何论文问题都在这里能够找打优质答案。<br>2. 提供专业可信赖的论文服务：任何论文需求都在这里能沟找到解决方案。<br><br>商务合作<br>-官方微信：ipaper2023<br>-官方邮件：lunwenbang2020@163.com<br>期待与更多的合作伙伴建联：留学机构/教育机构/自媒体/期刊业务/出版社'),(30,1,1,' 手机描仪，文档管理工具。拍照清晰可切边裁剪图像，裁剪你需要的文件内容，生成PDF。邮件发送、连接打印机、传真、微信共享电脑脑功能齐全、云存储，多设备多途径数据区！实用型的办公无纸化节能工具！<br>全球几千万用户使用，2011年服务至今<br>扫描王图像处理技术功能让你的文件清更清晰，陈旧文件也一样可以增强<br>代替扫描仪，随时随地分享，让你的办公效率显著提高<br>功能亮点<br>1：手机上的扫描仪<br>手机拍照文档，自动切边去除杂乱背景，生成JPGG图片或PDF。<br><br>2：图片OCR，可以识别文字<br>OCR文字识别，拍纸质文件，可以识别图片的文字内容，搜索更简单<br><br>3：云存储，让你更安全的管理文件，查阅更方便<br>手机、平板、电脑，多设备随时，随地查阅文档。<br>标签归类，手写批注，文档加密，方便有序，高效安全。<br><br>4：无线打印，微信，QQ，邮件多功能分享<br>支持无线打印，可以微信，QQ，邮件多功能分享，还有拼图功用<br><br>扫描王的无纸化理念，是为了配合你们的需果，更适合哪些人群<br>1：商务人士：出差不用携带文件，更可以扫描合同、文件，可以通过微信，邮件等即时通讯工具、共享，随时随地工作<br>2：学生，教师，教授，音乐，作家，设计师等：随手扫描笔记、课堂讲仪，乐谱，作家手稿、PPT<br>3：手绘：没有扫描仪，也能把手绘画稿美美地秀给小伙伴们了~<br><br><br>----使用建议---- <br>为确保你能获得清晰的扫描图，请在拍照时：<br>* 光线充足，尽量避免抖动<br>* 尽量使图片占满拍摄屏幕'),(31,1,1,' 与在线用户语音派对、视频交友、聊天，有同城单身男女、恋爱、交友、聊天，默默汇集了不同趣味爱好的真实用户。你可以在这里匹配视频聊天、恋爱交友，或诉说或倾听另一种别样的生活。随时随地想聊就聊，你可以同城交友。<br><br>功能亮点：<br>【语音聊天】<br>不看长相只听声音，语音聊天为爱转身。通过声音你可以判断对方是否有趣，幽默或者涵养，用声音做跟你陪聊天的好伙伴。<br><br>【视频聊天】<br>通过推荐、同城、附近、新人等分类，为你展示不同的用户，你可以浏览用户列表，喜欢谁直接撩。推荐，为你展示社交达人，与她们聊天，提高聊天能力。同城，展示与你同城的人，同城交友更方便。附近，尽可能为你展示你附近的人，满足你的附近聊天交友需求。新人，展示新萌妹萌新用户，体验羞涩的对聊感觉。<br>【陌生人速配】<br>你可以通过视频速配，开启闪聊体验。通过聊天速配开启。陌生人聊天，也可以闪爱哦！<br>陌生人速配，让爱和聊天都可以闪速升温。<br><br>【详尽资料】<br>你可以查看对方的主页资料，包括动态，生活照，兴趣爱好等。喜欢的话，可以在线处CP。<br><br>在享聊，如果一见钟情，你可以找人快聊，来一场快闪式恋爱。也可以跳出生活小圈认识更多有缘人，或能得一人细水长流，情意绵绵。我们一直致力于做满足广大用户的视频聊天交友软件。'),(32,1,1,' 欢迎使用阿拉相亲---一款强调宁波本土真实恋爱的相亲婚恋交友APP<br><br>真实恋爱交友<br>多重资料认证，会员信息经严格人工审核，拒绝一切虚假内容，我们致力于打造宁波安全靠谱的相亲环境，杜绝照骗，拒绝机器人，隐私保证，如有不文明交友现象可在线举报拉黑。阿拉相亲，爱的放心。<br><br>专注宁波本土相亲<br>专注宁波本地单身人士，同城高效相亲，发现身边的缘分，线上沟通，线下见面，宁波同城交友，附近的人，快速脱单，寻找属于自己的宁波伴侣。<br><br>优质会员推荐<br>首页海量优质会员推荐，俊男靓女总能遇见心仪的那个TA。完善个人资料，丰富相册板块就有机会获得首页推荐哦!<br><br>阿拉广场<br>最美好的事情，就是我们在此相遇。多维度筛选会员，海量宁波单身男女，查看详情，点击收藏让缘分不再悄悄溜走。<br><br>宁波人自己的相亲平台<br>宁波人找老公，找老婆，宁波人相亲交友，线下相亲会活动，都在宁波阿拉相亲免费征婚平台。有专业的宁波红娘牵线介绍，不定期组织线下交友活动，旨在帮助宁波单身男女拓展人脉圈子，让宁波人找对象不再迷茫。<br><br>牵线成功率<br>单身者填写择偶要求和基础条件，系统通过算法找到较合适的用户，阿拉小红娘结合自身对单身者的了解以及对宁波人的牵线经验进行配对推荐，提高了相亲成功率，让宁波人找对象不再困难。<br><br>专注宁波中老年群体<br>阿拉相亲平台不仅针对宁波大龄青年，适婚青年，且还帮助宁波中老年群体找对象，建立宁波单身微信群，让宁波中老年人也能找到适合过日子的老伴。<br><br>宁波人真实可靠的婚恋相亲平台：主打宁波同城交友和在线征婚相亲APP平台，阿拉相亲是专注宁波真诚相亲交友且无各种视频娱乐成分的APP， 这里有专业的宁波月老和宁波红娘为你牵线搭桥，助有缘人终成眷属 ，在阿拉相亲每天都可以亲眼见证很多人的牵手幸福，也许你也是其中的一员~ 找对象，上宁波人自己的平台，更真实的恋爱交友社区。<br><br>阿拉相亲应用程序简约明了，只要使用手机号和验证码即可登录注册，方便快捷，不需要记忆密码，注册APP时需要填写昵称，生日，性别，以及上传本人头像即可完成。用户信息采用瀑布流方式展示，通过定位计算出与周边人的距离，让缘分不再擦肩而过，若查看用户详情，则需要完善自己的基础信息，包含年收入，工作，婚姻状况，子女状况，是否抽烟喝酒等，同时还要填写自己的择偶要求，年龄范围，身高范围等。待审核通过时即可浏览查看所有用户资料信息。中意某个用户，点击聊一聊，或者发送喜欢表明心意，把爱勇敢说出来。<br>无论是90后还是80后，不管是成熟稳重型还是窈窕淑女型，在这里总有一款适合你。<br><br>花费一分钟注册，找到一辈子陪伴'),(33,1,1,' 提供药品说明书、批准文号、生产企业、医保目录、基本药物目录、中药保护品种、药物标准索引、药物辞典等医药生产研发及销售等常用信息服务。'),(34,1,1,' 本软件只针对员工个人用户（C端）提供服务，目前底层使用外服全国雇员平台的数据和接口，覆盖上海外服本部及中央数据库覆盖范围的分子公司，具体功能如下：<br>一、社会保险：员工可查询24个月的社保缴纳记录<br>二、公积金：员工可查询24个月的公积金缴纳记录<br>三、人事服务：员工可在线申请各类证明材料、员工可查看居住证积分、户籍申请、用工、退工的办理状态<br>四、薪酬服务：员工可查询36个月的薪酬明细数据，可在线提交银行卡相关信息<br>五、健康体检：员工可在线预约个人体检，也可新增家属，再行购买家属体检券，可在线完成订单支付、退款操作，体检完成后，员工可收到体检报告可查询推送，员工可通过移动端查询体检报告信息<br>六、医疗理赔：员工可在线提交理赔申报，查看理赔申报的结果，员工可查看理赔保障信息及其相关的保障条款<br>七、员工福利：员工可在线通过券号和密码兑换福利产品，并可查看购买产品的详细信息<br>八、外企党建：员工可查看党建工作相关动态，如是党员且信息已经录入在上海外服党员系统，可以查看党员的基本信息、所在党小组的基本信息、党内活动等信息<br>九、各类活动：员工可查看并参与外服的的各类活动<br>十、入离职：新员工可根据页面提示在线填写基本信息、提交入职材料，选择寄送实物材料完成入职操作，并实时查看办理进度；离职员工可通过移动端填写如公积金下家单位等完成离职<br>十一、考勤管理：购买workimate的员工可通过移动端进入考勤页面，可完成考勤、休请假等操作<br>十二、咨询反馈：员工可在线填写咨询主题、选择咨询类别、内容在线反馈或者咨询相关问题，并可实时查看外服的反馈结果<br>十三、辅助工具：员工可使用个税计算器、社保计算器、房贷计算器<br>十四、个人信息：员工查看个人的基本信息，可更新个人信息<br>十五、联系我们：员工查看外服各业务中心及各分子公司的联系方式<br>十六、其他操作：员工可通过手机或者邮箱完成注册，如忘记密码，可选择填写证件号后通过手机或者邮箱找回；员工可在线绑定手机或者邮箱，后续通过手机或者邮箱登录；员工可在线修改账户密码;员工可设置需要推送的内容（包含薪酬、体检预约、体检报告）;员工可查看外服系统的的一些常见问题，便于快速解决部分问题'),(35,1,1,' 一款光伏电站监控客户端软件，具有全新的监控管理,全面的数据分析和贴心的客服服务。<br>    可从深圳古瑞瓦特新能源股份有限公司（Growatt）数据中心获取光伏电站的运行参数，如发电量、发电收益、设备状态等，实现电站的远程无线访问。<br>    目前仅支持在Growatt（深圳古瑞瓦特新能源股份有限公司）光伏数据中心（server.growatt.com）上注册过的电站。'),(36,1,1,' 中泰齐富通是中泰证券（原齐鲁证券）旗下为广大投资者打造的集证券开户、股票交易、股票行情、投资资讯、业务办理多功能于一体的股票/证券/炒股/理财/投资金融平台。中泰证券（原齐鲁证券）是全国大型综合类老牌券商，2016年至2020年荣获券商中国评选的多项大奖，其中包括“证券公司APP十大品牌”和“券商APP突破创新奖”等大奖，2016年至2022年，连续7年蝉联新浪财经券商APP风云榜年度十佳APP。<br><br>【主要功能】<br>证券开户：7*24小时在线三分钟极速开户，开户体验更流畅<br>2）股票交易：闪电下单，全面准确快速的股票行情数据，提供基金、融资融券、港股通（沪深）、新三板等多品种股票交易服务<br>3）智能工具：近百种决策工具，集极速行情、辅助决策、深度资金、特色指标、智能条件单等五大功能于一体。<br>4）投资资讯：市场要闻，个股机会，概念投资等资讯实时推送<br>5）业务办理：股票开户、资料修改、权限管理、账户管理、三方存管、信用业务、期权业务、私募专区、电子影像等九大类70余项业务在线自助办理<br><br>【特色亮点】<br>1）股票行情：level-2 Plus行情刷新速度业内领先，“智盈”系列产品满足行情、选股、择时三大方面投资需求。条件单覆盖普通及信用账户，解放盯盘双眼，您开启智能投资之路<br>2）牛人领航：视频直播上线，畅听专家观点，提供投资策略，创建明星组合产品，满足客户多样化需求<br>3）精选理财：专属服务提醒，精选理财产品，提供一站式基金投资顾问服务<br>4）齐富通答：7x24小时在线专家实时解答<br>5）一站式服务：提供股票开户交易、股票行情资讯、牛人投顾、基金投顾、投顾直播、一键打新等服务功能'),(37,1,1,' 现在流行，上脉脉问内部员工。<br><br>脉脉——公司员工都在用的职场内容社区，拥有职业认证背书。分布在不同行业、不同公司的内部员工为你提供独特而有价值的一手信息。无论你处于职业发展的哪个阶段，都可以来脉脉听听大家的现身说法。<br><br>薪资揭秘、offer比较、公司氛围……上脉脉问内部员工，你想知道的总有人为你解答；中年危机、职业瓶颈、转型破圈……你经历的总有人正在经历或曾经经历过，与他们交流一下获得启发和帮助，让前人的宝贵经验成为你的重要参考。 <br><br>不仅如此，在这个拥有 “职业认证”的职场内容社区里，通过与不同公司的员工之间友好交流互助，你将更容易拓展自己的职场人脉，搭建优质人脉网络。无论商务洽谈、交流合作还是求职招聘都更加轻松高效。<br><br><br>【薪资揭秘】各公司员工揭秘真实薪资水平。待遇不盲猜，身价有参考。<br>【offer比较】大佬牛人为你深入分析比较不同offer优劣，让你的选择更清晰。<br>【挑好公司】内部员工现身说法，发现真正的好雇主，工作更舒心。<br>【打探公司真相】提前了解公司真相。为你排雷避坑，求职跳槽更踏实。<br>【人脉拓展神器】基于人脉网络引擎的智能“推荐+搜索”功能，拓展人脉比混群跑会场更高效。<br>【打造职业形象】鲜活职场主页加上“职业认证”背书，你的独特价值总能获得更多机遇垂青。<br>【谈合作有门路】在急速找人搜索关键词，快速精准找到合作方的决策人。<br><br>开通会员，拓展人脉快人一步。<br>针对有找合作/找客户/找工作/找投资等需求的用户，脉脉提供了付费会员服务。<br>会员可享受超过11项专属特权，拓展人脉、招募人才更快更方便。'),(38,1,1,' 全民严选—全民已为你严选<br><br>『关于全民严选』<br>全民严选新电商，从选品到上新，全流程把控全民严选模式。全民严选始终坚持做“精选万千好物，提升品质生活”的理念，作为全民严选在生活消费品领域的主阵地，致力于为用户提供高品质、高颜值、高性价比的生活类产品。<br><br>【会员全额返】<br>1元返1积分 ，1积分等于1元，消费金额全额返，积分具有等额的购买力<br><br>【积分免费兑】<br>消耗积分，可兑换相同价格的商品，无需额外支付费用<br><br>【9.9元秒大牌】<br>万千好物，大额商品，会员9.9元即可到手<br><br>【严选品质】<br>为用户精挑细选高性价比的品质好货，购物更省心<br><br>【联系我们】<br>如果您有任何建议及问题，可以通过以下方式联系我们<br>客服电话：4008317118<br>微信公众号：全民严选<br>微信小程序：全民严选<br>官方网站：https://www.quanminyanxuan.cn/'),(39,1,1,' 中邮保险APP提供线上保险产品展示及购买，可进行保单保全自助服务、理赔报案与查询、续期缴费操作。APP可以进行全渠道购买保单的查询，APP购买保单的订单查询，还可以进行一系列的保全操作。包括了投保人信息变更、被保人信息变更、交费信息变更、通知书寄送方式变更、红利领取方式变更、生存金领取方式变更、保单还款、保单补发、复效、生存金领取、保单借款、满期金领取、退保、犹豫期外退保、红利查询、生存金查询；可进行产品线上购买；还可以对用户名下全渠道的保单进行理赔、续期交费等操作，为用户提供更加完善的保险服务。'),(40,1,1,' 考拉小匠家装服务平台，找独立工长、设计师  上考拉小匠。<br><br>=主要功能=<br>【发布招标】业主发布装修需求，服务者（工长、设计师 和 监理）前来竞标，业主联系竞标服务者免费上门量房报价；<br>【招标管理】业主选定想合作的服务者，服务者上传电子合同，业主审核通无误后，线上签约，合同履约期间，全程线上付款和节点验收；<br>【节点管理】整装、局改和房屋设计服务，每个关键节点都在线上确认，存在争议可申请平台客服介入协调：<br>    （一）整装施工服务：4次付款6个节点，预付担保金、隐蔽工程验收、泥木工程验收、软装工程验收+竣工验收、质保金服务 和 服务评价；<br>    （二）局改施工服务（<2万）：2次付款5个节点，预付担保金、硬装工程验收、软装工程验收+竣工验收、质保金服务 和 服务评价；<br>    （三）局改施工服务（≥2万）：3次付款5个节点，预付担保金、硬装工程验收、软装工程验收+竣工验收、质保金服务 和 服务评价；<br>    （四）装修设计服务：3次付款4个节点，预付担保金、平面图验收、施工和效果图验收、施工期间协助修改完工验收 和 服务评价。<br>【担保金】合同款的首笔款中，平台会代为托管20%，待合同主体服务完工时，结算给服务者；<br>【质保金】工长合同独有的服务，工长发起项目竣工时，业主可以设置0%~6%的合同款作为质保金，质保金从完工日后的1年内由平台代为保管，工长这一年内有义务为该项目提供质量保障服务，如工长无法提供服务，平台会介入为业主提供质保服务，质保期满之后，质保金结算给工长。<br><br>=关注我们=<br>官   网：www.kaolaxj.com<br>微信公众号：考拉小匠网<br>小程序：小匠商城<br>客服电话：400-101-9696<br>客服微信号：kaolaxj001'),(41,1,1,' 车智管是一款车辆管理软件，可以录入车辆的加油、充电、保养、维修、开支、收入信息，生成完整的车辆花费和收入报告，帮助车主分析并节省车辆开支。 <br><br>1.记账：车辆的加油，保养，支出，收入，维修费用记录；<br>2.提醒：设置时间或公里数，提醒车主保养车辆或支出费用；<br>3.平均油耗计算：加油自动计算车辆平均油耗，了解车辆真实油耗；<br>4.多维度报表：分类统计车辆花费和收入，生成清晰图表，每月开支图表，花费比较图表，里程表图表，燃油效率图表，加油站图表等10多种图表；<br>5.数据安全：本地数据自动备份，云端实时同步，保证数据安全；<br>6.车辆管理：支持同时管理多个车辆，随时切换；<br>7.数据导出：支持车辆数据导出至Excel；<br>8.多用户：添加额外的驾驶员一起记录车辆数据；'),(43,1,1,' 360手机助手，您手机上的软件管家！<br>数十万款Android软件和游戏供您下载，360安全中心检测全方位安全保障。每天推荐当下火热的应用和好玩的游戏，让您轻松成为时尚的玩机达人。<br>安装360手机助手，瞬间下软件，畅玩编辑精选游戏，随时管理手机软件，是您Android手机的必备！<br>小编联合粉丝建了个用户交流（反馈/建议）QQ群：446718762，欢迎感兴趣的朋友加入~'),(46,1,1,' 升学e网通是一款专为高中生打造的集在线学习、志愿填报、心理辅导等多元化功能为一体的综合性学习教辅产品 。围绕高中生遇到的学习基础薄弱、志愿填报难题、心理负面情绪等问题，通过“学科学习、生涯规划、心灵成长”等核心内容版块，提供了系统化的解决方案。<br><br>1、学科提升版块：主要包括精品课程、优质试题、个性化学情报告、智能错题本、知识点诊断；<br>2、生涯规划版块：主要包括高中生涯规划课程、四大测评、三大宝库（专业、职业、院校）、新高考选科系统、高考志愿填报系统；<br>3、心灵成长版块：主要包括心晴FM、心理课程、心理测试、心事Weekly专栏。'),(48,1,1,' Roadcam主要服务于行车记录仪用户，提供给用户，更好的使用体验。提供了友好的人机交互界面，并提供在线视频剪辑，视频分享，车友圈等功能。'),(50,1,1,' 来新漂流瓶，茫茫人海遇见懂你的TA。<br><br>新漂流瓶是一款以“漂流瓶”为主题的匿名语音聊天交友平台。这里的人真实、走心，共同维护纯粹、干净的交友环境。<br>在这里，人们没有现实社交中的压力，大家相聚在漂流瓶世界里，敞开心扉，真实的表达自我。在这里，无论你是社恐还是社牛，总能找到聊得来的人，陪你分享喜怒哀乐。你还可以通过语音连麦邂逅喜欢的声音，找到心仪的另一半。<br><br>功能介绍：<br>【漂流瓶】自由扔捡瓶子，匿名倾诉倾听。在没人认识你的地方，遇见真正懂你的人<br>【语音派对】多人实时连麦互动，既能谈天说地，也能安静陪伴<br>【假面舞会】进入匿名聊天室，卸下现实的压力。大胆畅聊，轻松交友<br>【动态广场】记录真实生活，分享美好瞬间，发现有趣的瓶友<br>【瓶友速配】精准匹配，超快回复，缘来如此简单<br>【家族群聊】与家族伙伴们一起群聊互动，收获缘分和友谊<br><br>——瓶友们这样说——<br>「清酒人生」：我一直想漂流瓶到底能给我什么？当你像一阵风吹向我，拥抱我，我才知道原来是爱。瓶子见证的是忽如其来，汹涌无比的爱。我特意买了很多好吃的零食，很多香甜的水果，在瓶友们一个又一个爱的祝福中，我想大声喊：我们恋爱了！<br>「如梦」：首次玩这种聊天软件，碰到一群可爱的人，讲着各自生活的趣事，倾诉着各自的烦心事，相互鼓励着，互动着，倾听着，也见证了一些小可爱的爱恨情仇，悲欢离合。总而言之，遇见你们很开心.<br>「晚霞」：之前玩瓶子是一个人玩，现在玩瓶子是一群人玩~ 有幸进入这个大家庭，一个温暖滴大家庭，一起做游戏，一起聊天，欢迎各位好玩滴朋友... (悄悄说一声，家族里有好多帅哥和美女)<br><br>下载新漂流瓶，邂逅心中的TA。<br><br>有问题找瓶子君：我的-设置-关于新漂流瓶-客服QQ<br>微信公众号：新漂流瓶小助手<br>玩家交流群：418377498'),(52,1,1,' 光彩出行专车，湖南光彩神舟网约车有限责任公司旗下品牌，发展目标定位于“打造国内县市级专车出行服务品牌”，致力于成为近郊出行服务方案的设计者和服务商。形成以租车、购车、新能源分时租车等主体的移动出行产业格局。'),(54,1,1,' 万物心选，是一家涵盖儿童服饰、玩具绘本、课程服务、亲子旅游到美食生鲜、时尚美容、家居生活...涵盖全场景、专注于服务90后新生代家庭的社交新电商平台。<br><br>-万物心选，更懂新生代家庭需求，专注挖掘和开发用心的产品<br>1. 我们专注于挖掘用心的制造商，更自研生产新生代家庭需求的产品：<br>-happy nocnoc敲开心：<br>1）2019年万物心选孵化的专注于0-14岁儿童生活方式的新锐母婴品牌；<br>2）涵盖服饰、童鞋、洗护、玩具、用品各类目，好品质、好价格，闭眼买不踩坑；<br>3）2021年3月在天猫旗舰店上线，帆布鞋即跻身天猫儿童帆布鞋TOP10，口罩排在儿童口罩前列；<br><br>-万物极制：<br>1）挖掘全世界用心的制造商，提供匠心制造的极制单品；<br>2）去掉“浮夸溢价”、“智商税”，筛选出超高性价比的好品质产品；<br><br>2. 我们在全世界范围选品，筛选新家庭各品类的必入好商品：<br>1）专业选品：上万+品牌，数百万+商品，家庭需求各大品类各有具备专业度的买手团队经历选品、质检全过程，跟着买不踩坑；<br>2）正品保证：全平台商品正品保险，授权链路完整，所有商品可溯源；<br>3）售后省心：平台客服直接服务，及时响应，所有售后问题必解决；<br><br>-数十万90后新生代妈妈自买分享，一起种草，养娃路上不踩坑<br>1）ta们尤其擅长给宝宝找好品质好价格的衣服鞋子，搭出各种风格，审美不在线没关系，直接抄作业！<br>2）ta们知道近期爆火的网红零食、安全无添加的宝宝辅食，不知道怎么吃？跟着ta们买！<br>3）ta们会选好看又好玩的玩具，限量乐高、莫兰迪色磁力积木、爆火的学习机、故事机，跟着ta们玩具都能完成教具！既好玩又益智！<br>4）ta们更会为自己挑选值得剁手的护肤、医美产品，提供幸福指数的家务神器、小家电，养娃路上也要美、少辛苦！<br><br>-万物会员，既能自买省，还能分享赚<br>1）成为万物会员，购买商品享额外返利优惠，买越多省越多，开通价格低，活跃购买者年省¥600+；<br>2）成为万物会员，是消费者也是分享者，分享好货能赚钱，活跃分享者平均月赚¥1000+；<br><br>-因为倾听，所以懂你：如何联系我们？<br>有任何意见或建议，可以通过以下方式联系我们：<br>微信服务号：万物心选<br>万物心选微信小程序：微信-聊天界面顶部搜索“万物心选”<br>万物心选APP：我的-联系客服'),(56,1,1,' 转单宝是国内专业专注于鲜花蛋糕礼品行业的订单转单交易平台，为鲜花、蛋糕行业用户提供全网订单管理解决方案；同城物流配送解决方案；行业供应链一键转单、一件代发解决方案。转单宝旨在提升鲜花、蛋糕实体店及网店用户的运作效率，降低行业用户的IT投入成本。<br>转单宝APP，可以方便的让随时随地发单、接单。利用碎片时间高效处理订单。多年的 鲜花、蛋糕订单处理经验。让您的生意更上一层楼。<br>在转单宝平台，实体鲜花店、蛋糕店可以接到更多的订单。并提供了非富的订单处理辅助工具。可在线打印签收单、贺卡、快递单。可以用手机上传签收图。方便订单管理，有效减少漏单、误单。');
/*!40000 ALTER TABLE `{dbprefix}1_ruanjian_data_0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_ruanjian_draft`
--

DROP TABLE IF EXISTS `{dbprefix}1_ruanjian_draft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_ruanjian_draft` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '具体内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `catid` (`catid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容草稿表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_ruanjian_draft`
--

LOCK TABLES `{dbprefix}1_ruanjian_draft` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_ruanjian_draft` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}1_ruanjian_draft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_ruanjian_flag`
--

DROP TABLE IF EXISTS `{dbprefix}1_ruanjian_flag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_ruanjian_flag` (
  `flag` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '文档标记id',
  `id` int(10) unsigned NOT NULL COMMENT '文档内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  KEY `flag` (`flag`,`id`,`uid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='标记表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_ruanjian_flag`
--

LOCK TABLES `{dbprefix}1_ruanjian_flag` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_ruanjian_flag` DISABLE KEYS */;
INSERT INTO `{dbprefix}1_ruanjian_flag` VALUES (1,2,1,1),(2,2,1,1),(1,18,1,1),(1,20,1,1),(1,21,1,1),(1,22,1,1),(1,23,1,1),(1,24,1,1),(1,25,1,1),(1,26,1,1),(1,27,1,1),(1,28,1,1);
/*!40000 ALTER TABLE `{dbprefix}1_ruanjian_flag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_ruanjian_hits`
--

DROP TABLE IF EXISTS `{dbprefix}1_ruanjian_hits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_ruanjian_hits` (
  `id` int(10) unsigned NOT NULL COMMENT '文章id',
  `hits` int(10) unsigned NOT NULL COMMENT '总点击数',
  `day_hits` int(10) unsigned NOT NULL COMMENT '本日点击',
  `week_hits` int(10) unsigned NOT NULL COMMENT '本周点击',
  `month_hits` int(10) unsigned NOT NULL COMMENT '本月点击',
  `year_hits` int(10) unsigned NOT NULL COMMENT '年点击量',
  `day_time` int(10) unsigned NOT NULL COMMENT '本日',
  `week_time` int(10) unsigned NOT NULL COMMENT '本周',
  `month_time` int(10) unsigned NOT NULL COMMENT '本月',
  `year_time` int(10) unsigned NOT NULL COMMENT '年',
  UNIQUE KEY `id` (`id`),
  KEY `day_hits` (`day_hits`),
  KEY `week_hits` (`week_hits`),
  KEY `month_hits` (`month_hits`),
  KEY `year_hits` (`year_hits`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='时段点击量统计';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_ruanjian_hits`
--

LOCK TABLES `{dbprefix}1_ruanjian_hits` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_ruanjian_hits` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}1_ruanjian_hits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_ruanjian_index`
--

DROP TABLE IF EXISTS `{dbprefix}1_ruanjian_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_ruanjian_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(2) NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容索引表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_ruanjian_index`
--

LOCK TABLES `{dbprefix}1_ruanjian_index` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_ruanjian_index` DISABLE KEYS */;
INSERT INTO `{dbprefix}1_ruanjian_index` VALUES (2,1,1,9,1711612101),(14,1,1,9,1711616458),(15,1,1,9,1711616788),(16,1,1,9,1711616862),(17,1,1,9,1711617577),(18,1,1,9,1711617937),(19,1,1,9,1711617937),(20,1,1,9,1711617949),(21,1,1,9,1711617951),(22,1,1,9,1711617962),(23,1,1,9,1711617975),(24,1,1,9,1711617986),(25,1,1,9,1711617998),(26,1,1,9,1711618016),(27,1,1,9,1711618029),(28,1,1,9,1711618043),(29,1,1,9,1711618054),(30,1,1,9,1711618068),(31,1,1,9,1711618078),(32,1,1,9,1711618093),(33,1,1,9,1711618102),(34,1,1,9,1711618116),(35,1,1,9,1711618126),(36,1,1,9,1711618137),(37,1,1,9,1711618148),(38,1,1,9,1711618161),(39,1,1,9,1711618175),(40,1,1,9,1711618187),(41,1,1,9,1711618198),(42,1,4,10,1711618201),(43,1,1,9,1711618211),(44,1,4,10,1711618214),(45,1,4,10,1711618238),(46,1,1,9,1711618239),(47,1,4,10,1711618249),(48,1,1,9,1711618252),(49,1,4,10,1711618260),(50,1,1,9,1711618264),(51,1,4,10,1711618273),(52,1,1,9,1711618275),(53,1,4,10,1711618288),(54,1,1,9,1711618290),(55,1,4,10,1711618300),(56,1,1,9,1711618301),(57,1,4,10,1711618314),(58,1,4,10,1711618326),(59,1,4,10,1711618338),(60,1,4,10,1711618349),(61,1,4,10,1711618361),(62,1,4,10,1711618374),(63,1,4,10,1711618386),(64,1,4,10,1711618400),(65,1,4,10,1711618412),(66,1,4,10,1711618422),(67,1,4,10,1711618434),(68,1,4,10,1711618446),(69,1,4,10,1711618460),(70,1,4,10,1711618471),(71,1,4,10,1711618483),(72,1,4,10,1711618494),(73,1,4,10,1711618505),(74,1,4,10,1711618519),(75,1,4,10,1711618532),(76,1,4,10,1711618545),(77,1,4,10,1711618557),(78,1,4,10,1711618571),(79,1,4,10,1711618586),(80,1,4,10,1711618601),(81,1,4,10,1711618607),(82,1,4,10,1711618622),(83,1,4,10,1711618633),(84,1,4,10,1711618647);
/*!40000 ALTER TABLE `{dbprefix}1_ruanjian_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_ruanjian_recycle`
--

DROP TABLE IF EXISTS `{dbprefix}1_ruanjian_recycle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_ruanjian_recycle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '具体内容',
  `result` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '删除理由',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `catid` (`catid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容回收站表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_ruanjian_recycle`
--

LOCK TABLES `{dbprefix}1_ruanjian_recycle` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_ruanjian_recycle` DISABLE KEYS */;
INSERT INTO `{dbprefix}1_ruanjian_recycle` VALUES (1,84,1,4,'{\"1_ruanjian\":{\"id\":\"84\",\"catid\":\"4\",\"title\":\"暗黑破坏神：不朽\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_54217670_1711504823/128\",\"keywords\":\"\",\"description\":\"作为暗黑系列的全新手游作品，由网易和暴雪娱乐联合开发的旗舰大作《暗黑破坏神：不朽》极致还原IP精髓特色，传承经典暗黑画风和恢弘世界观，再现畅爽战斗体验和沉浸的探索乐趣。在冒险之路上，你与其他冒险者亦敌\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=84\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618647\",\"updatetime\":\"1711618647\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"1.88G\",\"banben\":\"2.3.0\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_54217670_1_1711504820/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54217670_2_1711504820/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54217670_3_1711504820/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/3AD69E78571CF01C23A9B7EB1F822FFD.apk?fsname=com.tencent.tmgp.g67_19781812.apk\"},\"1_ruanjian_data_0\":{\"id\":\"84\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 作为暗黑系列的全新手游作品，由网易和暴雪娱乐联合开发的旗舰大作《暗黑破坏神：不朽》极致还原IP精髓特色，传承经典暗黑画风和恢弘世界观，再现畅爽战斗体验和沉浸的探索乐趣。在冒险之路上，你与其他冒险者亦敌亦友，或集结挑战凶险的地下城，或争夺“不朽者”的无上殊荣。当世界之石分崩离析，当威斯特玛黯淡无光，你，就是最后的希望！<br><br>暗黑破坏神IP首款手游，传承27年经典IP的暗黑画风和恢弘世界观，还原畅爽战斗和沉浸式探索乐趣，并创造了全新故事剧情和玩法。庇护之地迎来曦光时代，开启掌上暗黑宇宙新篇章！<br><br>全新PVE玩法——恐惧降临<br>全新PVP玩法——1V1擂台<br>减负优化——自动挂机<br>全新剧情——凯恩剧情<br>成长之爽——高速升级畅刷神装<br>竞技之爽——选择阵营为荣耀而战<br>探索之爽——开放世界自由冒险<br>视听之爽——拟真现实3A质感<br><br>【适龄提示】<br>为维护未成年人健康上网环境，本游戏暂不支持实名认证18岁以下的用户登录体验\"},\"1_ruanjian_category_data\":null}','测试数据',1711631415),(2,83,1,4,'{\"1_ruanjian\":{\"id\":\"83\",\"catid\":\"4\",\"title\":\"密室逃脱7环游世界\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_52816938_1711505338/128\",\"keywords\":\"\",\"description\":\"【游戏介绍】多关卡，小地图，一款引人入胜的真人快速密室解谜游戏。每个关卡都提供了多样的谜题、大量的小游戏和丰富的任务。你需要找出破解密室的方法，通过传送门逃出困境！【游戏特色】未知而多变的场景，让经验\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=83\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618633\",\"updatetime\":\"1711618633\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"729.66M\",\"banben\":\"7.1.9\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_52816938_1_1711505336/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_52816938_2_1711505336/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_52816938_3_1711505336/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/94DA551104E9F10909A90191E52C1287.apk?fsname=com.tencent.tmgp.room7_700010009.apk\"},\"1_ruanjian_data_0\":{\"id\":\"83\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 【游戏介绍】<br>多关卡，小地图，一款引人入胜的真人快速密室解谜游戏。每个关卡都提供了多样的谜题、大量的小游戏和丰富的任务。你需要找出破解密室的方法，通过传送门逃出困境！<br><br>【游戏特色】<br>未知而多变的场景，让经验丰富的解谜大师绞尽脑汁；<br>神秘又诡异的环境，让初露锋芒的密逃新手跃跃欲试。<br>精致而梦幻的画面，让解谜变成一段享受；<br>短小却烧脑的小游戏，让密室逃脱妙趣横生。<br>洞察细微巧用道具，破解谜题逃出生天；<br>环游世界解谜冒险，多重关卡等你挑战！\"},\"1_ruanjian_category_data\":null}','测试数据',1711631415),(3,82,1,4,'{\"1_ruanjian\":{\"id\":\"82\",\"catid\":\"4\",\"title\":\"台球游戏大师\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_54133916_1711506159/128\",\"keywords\":\"\",\"description\":\"专业3D桌球物理引擎，打造真实台球立体视听体验，还原真实球感，实现真实击球碰撞与弧线，竞技1V1，与全网高手在线切磋；花式闯关，思考与练习的同时，助你练就大师解球杆法；更有约战模式，足不出户与好友在线\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=82\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618622\",\"updatetime\":\"1711618622\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"94.82M\",\"banben\":\"2.3.9\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_54133916_1_1711506155/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54133916_2_1711506155/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54133916_3_1711506155/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/69E9D7679D494A5F2DD74D1B5826609C.apk?fsname=com.tencent.tmgp.poolmastersl_20309.apk\"},\"1_ruanjian_data_0\":{\"id\":\"82\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 专业3D桌球物理引擎，打造真实台球立体视听体验，还原真实球感，实现真实击球碰撞与弧线，竞技1V1，与全网高手在线切磋；花式闯关，思考与练习的同时，助你练就大师解球杆法；更有约战模式，足不出户与好友在线PK！\"},\"1_ruanjian_category_data\":null}','测试数据',1711631415),(4,81,1,4,'{\"1_ruanjian\":{\"id\":\"81\",\"catid\":\"4\",\"title\":\"天天象棋（无障碍版）\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_54312692_1711506553/128\",\"keywords\":\"\",\"description\":\"天天象棋通过读屏和语音指令结合的方式来实现视障者高效流畅的对局体验。读屏是视障者进入象棋对局以及阅读棋局的基础，而语音指令则是提高视障者走子效率的方式。当前版本支持棋力评测/人机对战/好友对战等核心功\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=81\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618607\",\"updatetime\":\"1711618607\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"86.54M\",\"banben\":\"4.2.4.8\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_54312692_1_1711506550/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54312692_2_1711506550/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54312692_3_1711506550/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00001/16891/apk/B235110C456712189FA5B54E5855D73B.apk?fsname=com.tencent.qqgame.xqwza_42408.apk\"},\"1_ruanjian_data_0\":{\"id\":\"81\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 天天象棋通过读屏和语音指令结合的方式来实现视障者高效流畅的对局体验。读屏是视障者进入象棋对局以及阅读棋局的基础，而语音指令则是提高视障者走子效率的方式。当前版本支持棋力评测/人机对战/好友对战等核心功能，希望未来有更多视障棋友能体验到中国象棋带来的乐趣。\"},\"1_ruanjian_category_data\":null}','测试数据',1711631415),(5,80,1,4,'{\"1_ruanjian\":{\"id\":\"80\",\"catid\":\"4\",\"title\":\"敢达决战\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_12257171_1711506621/128\",\"keywords\":\"\",\"description\":\"【游戏介绍】《敢达决战》为中国大陆首款授权敢达题材手游，由株式会社万代南梦宫娱乐与DeNA中国合力打造。《机动战士敢达》《机动战士Z敢达》《机动战士敢达SEED》《机动战士敢达UC》等经典人气作品悉数\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=80\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618601\",\"updatetime\":\"1711618601\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"1.62G\",\"banben\":\"6.7.3\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_12257171_1_1711506618/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_12257171_2_1711506618/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_12257171_3_1711506618/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/A4282F56667CE5F1FD6F19A2FC81BA6D.apk?fsname=com.tencent.tmgp.g13001230_93.apk\"},\"1_ruanjian_data_0\":{\"id\":\"80\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 【游戏介绍】<br>《敢达决战》为中国大陆首款授权敢达题材手游，由株式会社万代南梦宫娱乐与DeNA中国合力打造。《机动战士敢达》《机动战士Z敢达》《机动战士敢达SEED》《机动战士敢达UC》等经典人气作品悉数登场。历代敢达机体机师大集结，武器数据中心、联合作战、机师挑战，多种策略玩法，高度还原一个真实而经典的敢达世界。每一台主战机体都有独特动作和酷炫大招，配合专属队长技合体技，弹指间逆转战场形势。升级进阶，机师培养，打造专属于你的机动战士部队。<br><br>《敢达决战》全新2.0版本开启新纪元！殖民卫星重建完毕，主城焕新，王牌指挥官准备作战！美术升级，界面优化，体验全新游戏世界，机体重塑，必杀技能效果燃炸全场， 联合作战开启，宇宙对抗，全局预览运筹帷幄！《敢达决战》2.0等你来探索。\"},\"1_ruanjian_category_data\":null}','测试数据',1711631415),(6,79,1,4,'{\"1_ruanjian\":{\"id\":\"79\",\"catid\":\"4\",\"title\":\"宾果消消消-3亿人都在玩\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_11292460_1711507524/128\",\"keywords\":\"\",\"description\":\"《宾果消消消》,累计注册用户超过3亿,以三消+开店的形式，让国民连接在一起！2021年，3亿玩家的共同选择！早上好，下午好，晚上好各位朋友！恭喜你开启了《宾果消消消》的世界！在这里你可以体验到传统三消\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=79\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618586\",\"updatetime\":\"1711618586\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"601.35M\",\"banben\":\"8.37.0.2\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_11292460_1_1711507522/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_11292460_2_1711507522/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_11292460_3_1711507522/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/92052C693BB8B4332FB8EFCEC45C658C.apk?fsname=com.mfp.jelly.yingyongbao_837020.apk\"},\"1_ruanjian_data_0\":{\"id\":\"79\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 《宾果消消消》,累计注册用户超过3亿,以三消+开店的形式，让国民连接在一起！<br>2021年，3亿玩家的共同选择！<br>早上好，下午好，晚上好各位朋友！恭喜你开启了《宾果消消消》的世界！<br>在这里你可以体验到传统三消游戏的独特魅力。<br>我们有超60个有趣的棋子玩法，超5500个精致的主线关卡；<br>可以随意搭配组合的超实用道具、组合技，炫酷的连招特效。<br>还有定期推出的特殊副本、周赛和冲榜活动，轻松产出超多道具。<br>总结一句话就是：紧张刺激不费脑，轻松愉快不无聊！<br> <br>三消之外，你可能想不到，在这里还可以体验到：<br>翻新海景别墅，独享整片海滩的那种；<br>修饰豪华轮船，电影里看到过的那种；<br> <br>开一家奶茶店，青梅竹马每天见的那种；<br>开一家蛋糕店，姐妹花联手创业的那种；<br> <br>和胖女巫斗智，只动口不动手的那种；<br>和小怪兽斗勇，光挨打不还手的那种；<br> <br>设计专属小屋，异空间特神奇的那种；<br> <br>快来下载体验吧，上瘾有趣不粘人的那种！\"},\"1_ruanjian_category_data\":null}','测试数据',1711631415),(7,78,1,4,'{\"1_ruanjian\":{\"id\":\"78\",\"catid\":\"4\",\"title\":\"2048并并并\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_54269208_1711438401/128\",\"keywords\":\"\",\"description\":\"分为经典模式与降落模式，通过横向和纵向滑动移动数字图块，当两个相同数字的图块接触时，它们将合并成一个数字为它们本身2倍的新图块，一直合并道2048或4096或更大，当没有可合并的图块，且没有可移动的位\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=78\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618571\",\"updatetime\":\"1711618571\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"34.41M\",\"banben\":\"2.6.0\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_54269208_1_1711438399/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54269208_2_1711438399/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54269208_3_1711438399/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/D19B2811A973C2272C6124ECF8CE0CEE.apk?fsname=com.lovejiajiao.my2048_2.6.0.apk\"},\"1_ruanjian_data_0\":{\"id\":\"78\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 分为经典模式与降落模式，<br>通过横向和纵向滑动移动数字图块，当两个相同数字的图块接触时，它们将合并成一个数字为它们本身2倍的新图块，一直合并道2048或4096或更大，当没有可合并的图块，且没有可移动的位置时，玩家失败。可以撤销，可以使用道具。\"},\"1_ruanjian_category_data\":null}','测试数据',1711631415),(8,77,1,4,'{\"1_ruanjian\":{\"id\":\"77\",\"catid\":\"4\",\"title\":\"全民象棋\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_54134793_1711507922/128\",\"keywords\":\"\",\"description\":\"全新无广告版《全民象棋》正式上线，为您还原最纯净的象棋对弈体验！游戏包括棋技评测、限时排位、揭棋对战、体力残局、好友对弈、观战聊天等多种玩法；对弈双方可根据自己对棋局的理解调动车马、组织兵力、协调作战\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=77\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618557\",\"updatetime\":\"1711618557\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"114.04M\",\"banben\":\"5.7.0\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_54134793_1_1711507919/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54134793_2_1711507919/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54134793_3_1711507919/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/180B4BB49B28C3C31E5520AAA3848FDB.apk?fsname=com.tencent.tmgp.hchess_5007000.apk\"},\"1_ruanjian_data_0\":{\"id\":\"77\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 全新无广告版《全民象棋》正式上线，为您还原最纯净的象棋对弈体验！<br>游戏包括棋技评测、限时排位、揭棋对战、体力残局、好友对弈、观战聊天等多种玩法；对弈双方可根据自己对棋局的理解调动车马、组织兵力、协调作战。<br>海量棋友实时在线，比赛互动欢乐有趣，木制棋盘精美雅致，立体棋子逼真考究，快来探索全新的象棋世界！<br>游戏玩法介绍：<br>【棋技博弈】快速匹配对手，与各地棋友切磋棋艺，评测双方的棋力等级；<br>【限时赛季】大脑风暴限制思考时间，挑战自己，推进局面；<br>【揭棋挑战】运气与智力的对决，体验与传统象棋完全不同的对弈乐趣；<br>【体力残局】体力限制搭配千古残局，脑力风暴就在其中；<br>【好友对弈】邀请好友自定义玩法，感受突破常规的独特象棋；<br>【人机对弈】多种难度AI选择，棋友们可韬光养晦，自行打磨棋艺；<br>【大师观战】觉得自己棋艺不精？顶级棋手正在直播，前往观战，领教高招！\"},\"1_ruanjian_category_data\":null}','测试数据',1711631415),(9,76,1,4,'{\"1_ruanjian\":{\"id\":\"76\",\"catid\":\"4\",\"title\":\"弹弹岛2\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_42279093_1711508414/128\",\"keywords\":\"\",\"description\":\"《弹弹岛2》是一款治愈系，新生代休闲策略射击手游感应召唤，邂逅冒险小伙伴，育成可爱萌宠，一起与小姐姐们共结情缘！游戏有丰富的外观，在宠物系统上增加了宠物羁绊、武器系统、坐骑特效、皮肤特效。既增加了操作\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=76\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618545\",\"updatetime\":\"1711618545\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"459.87M\",\"banben\":\"3.9.8\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_42279093_1_1711508411/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_42279093_2_1711508411/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_42279093_3_1711508411/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/8744B09CFB929453EEE907022E2DD409.apk?fsname=com.tencent.tmgp.DDD2_186.apk\"},\"1_ruanjian_data_0\":{\"id\":\"76\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 《弹弹岛2》是一款治愈系，新生代休闲策略射击手游<br>感应召唤，邂逅冒险小伙伴，育成可爱萌宠，一起与小姐姐们共结情缘！<br>游戏有丰富的外观，在宠物系统上增加了宠物羁绊、武器系统、坐骑特效、皮肤特效。既增加了操作性，又丰富了游戏的策略性，让玩家以轻松的操作，体验爽快的策略玩法\"},\"1_ruanjian_category_data\":null}','测试数据',1711631415),(10,75,1,4,'{\"1_ruanjian\":{\"id\":\"75\",\"catid\":\"4\",\"title\":\"龙与家园：时光\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_54347258_1711508415/128\",\"keywords\":\"\",\"description\":\"《龙与家园：时光》是一款主城自建与交易自由的多人在线沙盒游戏，既有养老模拟之意，亦有探索战斗之魂。你可以在游戏里自成一派，过上你要的诗和远方。【游戏特色】▷ 充满未知的探险 ◁在探索地图里，分布着多个\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=75\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618532\",\"updatetime\":\"1711618532\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"1.8G\",\"banben\":\"2.5.0.0\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_54347258_1_1711508411/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54347258_2_1711508411/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54347258_3_1711508411/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/96C0618A84C7F2E055473A603BEBA598.apk?fsname=com.tencent.tmgp.dnh_3.apk\"},\"1_ruanjian_data_0\":{\"id\":\"75\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 《龙与家园：时光》是一款主城自建与交易自由的多人在线沙盒游戏，既有养老模拟之意，亦有探索战斗之魂。你可以在游戏里自成一派，过上你要的诗和远方。<br><br>【游戏特色】<br><br>▷ 充满未知的探险 ◁<br>在探索地图里，分布着多个独立而神秘的世界，你可以在这里自由穿梭，采集与收获一切你所需要的内容。每个世界的角落隐藏着神秘的boss秘境，秘境里设置着各种机关，等着你一一挑战。你所穿戴的装备武器决定了你的职业与技能，通过装备的随意切换，玩转法师、战士、猎户三种职业。战斗装备都可通过附魔、点亮技能天赋等行为进行强化升级，让你在探索过程中游刃有余。<br><br>▷ 体验慢节揍休闲生活 ◁<br>如果你向往美好的田园生活，不如让生活慢下来，享受难得的悠闲时光。<br>你可以悉心呵护你的田地，撒种、浇水、施肥，除虫，静待开花结果。也可以带上鱼竿，和朋友们在湖畔边做一个自在的钓鱼翁。<br><br>▷ 多人共建家园<br>作为支持多人在线的社交沙盒游戏，你可以施展你的建造才能，在游戏里与小伙伴们共建家园，打造一个属于你们自己的乌邦托。你的理想家园可以是一座地中海风格的海边度假村、慵懒惬意的日式温泉镇、精致奢华的中式宫殿。\"},\"1_ruanjian_category_data\":null}','测试数据',1711631415),(11,74,1,4,'{\"1_ruanjian\":{\"id\":\"74\",\"catid\":\"4\",\"title\":\"攻城天下\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_54135682_1711508460/128\",\"keywords\":\"\",\"description\":\"白嫖T0级别红将！挂机还有武将打工拿元宝！！周周2W+元宝资源拿到手软！豹子头零充也能玩的很爽！更多福利尽在日常活动！全尺寸大地图，自由攻城掠地，策略兵种搭配，多样武将特色加成，和兄弟一起攻下江山！《\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=74\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618519\",\"updatetime\":\"1711618519\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"232.25M\",\"banben\":\"2.99\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_54135682_1_1711508457/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54135682_2_1711508457/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54135682_3_1711508457/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/D1A384B42A56A293A5EC0C69B0F3A6F9.apk?fsname=com.tencent.tmgp.mqwgctx_20240326.apk\"},\"1_ruanjian_data_0\":{\"id\":\"74\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 白嫖T0级别红将！挂机还有武将打工拿元宝！！周周2W+元宝资源拿到手软！豹子头零充也能玩的很爽！更多福利尽在日常活动！<br>全尺寸大地图，自由攻城掠地，策略兵种搭配，多样武将特色加成，和兄弟一起攻下江山！《攻城天下》带你重温三国经典战役，运筹帷幄，成为君主招兵买马，即时控制战局，搭配武将，是真三国！武将和国战都重要！\"},\"1_ruanjian_category_data\":null}','测试数据',1711631421),(12,73,1,4,'{\"1_ruanjian\":{\"id\":\"73\",\"catid\":\"4\",\"title\":\"云&middot;全民奇迹2\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_54140984_1711508502/128\",\"keywords\":\"\",\"description\":\"《全民奇迹2云游戏》是由腾讯先锋云游戏和《全民奇迹2》手游联合发布的云游戏体验版本。15M的超小包体即可体验完整游戏内容，免更新、不发热、低耗电，机型要求低，一键下载，立即体验！\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=73\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618505\",\"updatetime\":\"1711618505\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"33.58M\",\"banben\":\"5.0.1.4019306\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_54140984_1_1711508500/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54140984_2_1711508500/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54140984_3_1711508500/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/1AEF3B32E81693B9DE451BA1FA9ACCEA.apk?fsname=com.tencent.gamematrix.tmgp.tmsk.qj3_5.0.1.4019306.apk\"},\"1_ruanjian_data_0\":{\"id\":\"73\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 《全民奇迹2云游戏》是由腾讯先锋云游戏和《全民奇迹2》手游联合发布的云游戏体验版本。15M的超小包体即可体验完整游戏内容，免更新、不发热、低耗电，机型要求低，一键下载，立即体验！\"},\"1_ruanjian_category_data\":null}','测试数据',1711631421),(13,72,1,4,'{\"1_ruanjian\":{\"id\":\"72\",\"catid\":\"4\",\"title\":\"云&middot;黑色沙漠\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_54230840_1711508681/128\",\"keywords\":\"\",\"description\":\"《黑色沙漠云游戏》是由腾讯先锋云游戏和《黑色沙漠》手游联合发布的云游戏体验版本。15M的超小包体即可体验完整游戏内容，免更新、不发热、低耗电，机型要求低，一键下载，立即体验！\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=72\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618494\",\"updatetime\":\"1711618494\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"35.09M\",\"banben\":\"5.0.1.4019306\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_54230840_1_1711508677/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54230840_2_1711508677/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54230840_3_1711508677/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/D1947BF7D96281E4FDFB1F91B51CEE17.apk?fsname=com.tencent.gamematrix.hssm_5.0.1.4019306.apk\"},\"1_ruanjian_data_0\":{\"id\":\"72\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 《黑色沙漠云游戏》是由腾讯先锋云游戏和《黑色沙漠》手游联合发布的云游戏体验版本。15M的超小包体即可体验完整游戏内容，免更新、不发热、低耗电，机型要求低，一键下载，立即体验！\"},\"1_ruanjian_category_data\":null}','测试数据',1711631421),(14,71,1,4,'{\"1_ruanjian\":{\"id\":\"71\",\"catid\":\"4\",\"title\":\"超进化物语2\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_54299159_1711508814/128\",\"keywords\":\"\",\"description\":\"你说得对！但是《超进化物语2》是由NTFusion自主研发的一款全新变态进化手游，游戏发生在一个被称作「超进化大陆」的幻想世界，在这里，你意外获得「超2选召计划」的参与资格，你将导引进化之力，扮演一个\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=71\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618483\",\"updatetime\":\"1711618483\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"1.11G\",\"banben\":\"1.73.2024032101S.G\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_54299159_1_1711508811/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54299159_2_1711508811/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54299159_3_1711508811/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/009E6ABC4B14F79D55A352FBA383C37F.apk?fsname=com.tencent.tmgp.leiting.chaojinhua_19.apk\"},\"1_ruanjian_data_0\":{\"id\":\"71\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 你说得对！但是《超进化物语2》是由NTFusion自主研发的一款全新变态进化手游，游戏发生在一个被称作「超进化大陆」的幻想世界，在这里，你意外获得「超2选召计划」的参与资格，你将导引进化之力，扮演一个名为「探索者」的神秘角色，在不太自由的消红点之旅中见识到千奇百怪、有点变态的进化，养成自己的怪兽小队一起进化击败强敌，阻止世界被重置——同时，逐步发掘「世界进化」的真相。……后面忘了……总而言之，若想要尝试这些离谱进化的探险者们，这款可以进化出超多形态的、超有梗超有趣超变态的进化手游，千万不要错过！\"},\"1_ruanjian_category_data\":null}','测试数据',1711631421),(15,70,1,4,'{\"1_ruanjian\":{\"id\":\"70\",\"catid\":\"4\",\"title\":\"万国觉醒\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_54085281_1711509774/128\",\"keywords\":\"\",\"description\":\"《万国觉醒》创造了一个全新的战场。 世界传奇领袖在此集结，曹操、凯撒、源义经、腓特烈……人类历史上非常亮眼的璀璨明星，在这个庞大而真实的沙盘世界上相遇，集结至你的麾下。 你作为英雄们的执政官，从地图一\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=70\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618471\",\"updatetime\":\"1711618471\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"1.43G\",\"banben\":\"1.0.80.19\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_54085281_1_1711509771/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54085281_2_1711509771/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54085281_3_1711509771/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/D842D09083981BBF3D9FCE96FBE83862.apk?fsname=com.lilithgames.rok.offical.cn_1.0.80.19.apk\"},\"1_ruanjian_data_0\":{\"id\":\"70\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 《万国觉醒》创造了一个全新的战场。 世界传奇领袖在此集结，曹操、凯撒、源义经、腓特烈……人类历史上非常亮眼的璀璨明星，在这个庞大而真实的沙盘世界上相遇，集结至你的麾下。 你作为英雄们的执政官，从地图一隅起家，探索战争迷雾，集结联盟军团； 随着实力增长，你将和同盟一起征战圣所，据守要塞划分领地，称霸一方； 当迷雾隐去，世界全貌显现，巨大战争棋局呈现于眼前，强敌环绕周遭，或联合或征伐，人人皆渴望争霸世界中心神庙王座。 纵横捭阖之间，剑所指的方向，乃是万国之巅。 欲通往王座，你不仅需要具备宏观战略视野，同样也要善于临场战术指挥——《万国觉醒》模仿真实战争逻辑，自由行军即时战斗，军队可自由控制在地图上任意行进、驻扎，遇敌可临时开战，若局势不对也可撤兵脱战。自由行军操作带来丰富的战术演绎空间，使每一场战斗都充满变数！\"},\"1_ruanjian_category_data\":null}','测试数据',1711631421),(16,69,1,4,'{\"1_ruanjian\":{\"id\":\"69\",\"catid\":\"4\",\"title\":\"少年三国志\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_11778207_1711510559/128\",\"keywords\":\"\",\"description\":\"踏上东征之途，攻占邪马台，《少年三国志》再启程！在全新的天下战场中，挑战强大的敌人，体验战宠的力量与勇气。福星高照，丰厚福利等你来拿，每日任务奖励丰富，幻金道具满载而归。游戏更新多样趣味玩法，参与活动\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=69\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618460\",\"updatetime\":\"1711618460\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"1.61G\",\"banben\":\"10.2.0\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_11778207_1_1711510556/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_11778207_2_1711510556/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_11778207_3_1711510556/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/5E8D2A0356D1A8322CB4C45A7BE3C0D4.apk?fsname=com.tencent.tmgp.snsgz_100200.apk\"},\"1_ruanjian_data_0\":{\"id\":\"69\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 踏上东征之途，攻占邪马台，《少年三国志》再启程！在全新的天下战场中，挑战强大的敌人，体验战宠的力量与勇气。福星高照，丰厚福利等你来拿，每日任务奖励丰富，幻金道具满载而归。游戏更新多样趣味玩法，参与活动赢取超值奖励，与众多玩家一同探索九州风云，共创辉煌！\"},\"1_ruanjian_category_data\":null}','测试数据',1711631421),(17,68,1,4,'{\"1_ruanjian\":{\"id\":\"68\",\"catid\":\"4\",\"title\":\"天天猜字谜\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_54164812_1711510694/128\",\"keywords\":\"\",\"description\":\"天天猜字谜，根据汉字的造字规律，或汉字的音、形、义等某些特点编写的谜语.感受中华文字结构变化，趣味盎然、老少皆宜.锻炼多角度思考问题，帮助你破除固有思维，培养灵活多变的思维方式.谜底答疑，让你知道为什\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=68\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618446\",\"updatetime\":\"1711618446\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"14.4M\",\"banben\":\"1.036\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_54164812_1_1711510692/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54164812_2_1711510692/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54164812_3_1711510692/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/F4EE2249B924A422B4E9B235238FA9EF.apk?fsname=com.czm.byzxy_1.036.apk\"},\"1_ruanjian_data_0\":{\"id\":\"68\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 天天猜字谜，根据汉字的造字规律，或汉字的音、形、义等某些特点编写的谜语.<br>感受中华文字结构变化，趣味盎然、老少皆宜.<br>锻炼多角度思考问题，帮助你破除固有思维，培养灵活多变的思维方式.<br>谜底答疑，让你知道为什么会是这个谜底.<br>经常练习，你的智力水平和思维能力都会得到质的飞跃.<br>更有海量趣味脑筋急转弯题目.\"},\"1_ruanjian_category_data\":null}','测试数据',1711631421),(18,67,1,4,'{\"1_ruanjian\":{\"id\":\"67\",\"catid\":\"4\",\"title\":\"阴阳师：妖怪屋\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_53682110_1711506610/128\",\"keywords\":\"\",\"description\":\"《阴阳师：妖怪屋》是一款基于阴阳师IP的萌系云养妖手游。家主大人将在奇妙的剪纸庭院中照看妖怪们的生活起居，还将与各式Q弹妖怪并肩作战…优哉游哉的和风妖怪，轻松休闲的个性养成，趣味无穷的庭院互动，带你体\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=67\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618434\",\"updatetime\":\"1711618434\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"1.92G\",\"banben\":\"1.998.037\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_53682110_1_1711506606/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_53682110_2_1711506606/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_53682110_3_1711506606/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/C48D175CA78C770604887F3FCC3CB6F2.apk?fsname=com.tencent.tmgp.eyou.ygwu_1034.apk\"},\"1_ruanjian_data_0\":{\"id\":\"67\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 《阴阳师：妖怪屋》是一款基于阴阳师IP的萌系云养妖手游。<br>家主大人将在奇妙的剪纸庭院中照看妖怪们的生活起居，还将与各式Q弹妖怪并肩作战…优哉游哉的和风妖怪，轻松休闲的个性养成，趣味无穷的庭院互动，带你体验妖怪屋的奇趣生活！\"},\"1_ruanjian_category_data\":null}','测试数据',1711631421),(19,66,1,4,'{\"1_ruanjian\":{\"id\":\"66\",\"catid\":\"4\",\"title\":\"决战！平安京-「苍月之谣」全新世界观登场\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_52575793_1711504821/128\",\"keywords\":\"\",\"description\":\"真意觉醒，焕燃新生，《决战！平安京》六周年版本盛大开启！全服事件开启，全新角色塑造，全新经典文化演绎，全新美术标杆打造……在《决战！平安京》，在MOBA竞技的净土之上，感受新生的磅礴力量。「全新角色悟\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=66\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618422\",\"updatetime\":\"1711618422\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"1.75G\",\"banben\":\"1.191.0\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_52575793_1_1711504818/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_52575793_2_1711504818/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_52575793_3_1711504818/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/E20BC351E6661A5DD0BCB0229BC4EBB4.apk?fsname=com.tencent.tmgp.kaopu.jzpaj_236.apk\"},\"1_ruanjian_data_0\":{\"id\":\"66\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 真意觉醒，焕燃新生，《决战！平安京》六周年版本盛大开启！全服事件开启，全新角色塑造，全新经典文化演绎，全新美术标杆打造……在《决战！平安京》，在MOBA竞技的净土之上，感受新生的磅礴力量。<br><br>「全新角色悟空降临」<br>孤身鏖战诸天神佛，一腔孤勇，胜败无惧，日月轮回，斗转星移，他终了悟——纵使天道寡情，命数不公，也要踏着万般腐朽蓬勃而活。全新原创式神悟空降临平安京战场，感受悟空踏碎云霄，参悟天道的新生。<br><br>「帝释天全新典藏皮肤登场」<br>化作阆苑仙葩，以不一样的视角泛舟于太虚幻境，体味十二金钗的悲欢人生，方知世境浮沉流水，算来一梦浮生。帝释天全新典藏皮肤「故梦逐流」华丽登场。传承千古奇书《红楼梦》的极致美学，以古典写意之美雕琢梦幻绮丽的特效，感受红楼梦悲喜交织，大梦如空的新生。<br><br>「全新趣味萌宠助战玩法来袭」<br>和憨态可掬的激萌跟宠一同作战？还可体验刺激的多人混战？更有丰富的随机强化效果与别出心裁的特殊战斗机制？没错！尽情享受吧，享受趣味十足的酣畅战斗，凭借战术策略及对战能力勇夺冠军！全新趣味玩法「萌宠大作战」来袭，感受玩法创新、欢乐升级的新生。<br>\"},\"1_ruanjian_category_data\":null}','测试数据',1711631421),(20,65,1,4,'{\"1_ruanjian\":{\"id\":\"65\",\"catid\":\"4\",\"title\":\"东方归言录\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_54112419_1705284018/128\",\"keywords\":\"\",\"description\":\"《东方归言录》是一款以“东方Project”为原型的二次创作回合制RPG手游。由日本以动漫手办闻名的Good Smile Company（良笑社）与擅长做RPG的NextNinja共同开发。在本作中，\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=65\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618412\",\"updatetime\":\"1711618412\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"1.86G\",\"banben\":\"4.2.0\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_54112419_1_1705284015/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54112419_2_1705284015/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54112419_3_1705284015/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/5D02B16ED2D6031EBB426C0443CB3020.apk?fsname=com.tencent.tmgp.gg.lostword_60.apk\"},\"1_ruanjian_data_0\":{\"id\":\"65\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 《东方归言录》是一款以“东方Project”为原型的二次创作回合制RPG手游。由日本以动漫手办闻名的Good Smile Company（良笑社）与擅长做RPG的NextNinja共同开发。在本作中，因“LostWord”导致幻想乡发生巨大的异变，为了解决异变，东方Project中的角色们将重聚一起展开冒险。除了大家熟悉的博丽灵梦以及雾雨魔理沙，还有更多各色各样的角色登场，与她们一起携手周游幻想乡解决异变吧！\"},\"1_ruanjian_category_data\":null}','测试数据',1711631421),(21,64,1,4,'{\"1_ruanjian\":{\"id\":\"64\",\"catid\":\"4\",\"title\":\"秦时明月：沧海\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_54247527_1711512759/128\",\"keywords\":\"\",\"description\":\"《秦时明月：沧海》是一款以秦时明月系列动画为架构的3D放置手游，游戏在延续原作经典剧情的同时，还将重现诸多经典场面，以及战斗场景，并通过人物专属传记的形式，重温那些令人动容的过往。在《秦时明月：沧海》\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=64\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618400\",\"updatetime\":\"1711618400\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"1.29G\",\"banben\":\"1.4.3\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_54247527_1_1711512756/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54247527_2_1711512756/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54247527_3_1711512756/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/2EF7EF1B018520650BD89A5090020710.apk?fsname=com.tencent.tmgp.qsmyzzbj_43.apk\"},\"1_ruanjian_data_0\":{\"id\":\"64\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 《秦时明月：沧海》是一款以秦时明月系列动画为架构的3D放置手游，游戏在延续原作经典剧情的同时，还将重现诸多经典场面，以及战斗场景，并通过人物专属传记的形式，重温那些令人动容的过往。<br>在《秦时明月：沧海》手游中，你既能一眼尽收桑海城的盛景，也能通关幻音叠嶂的层层阻碍，窥探到宝盒的奥秘，更能跟随天明、盖聂等人一起踏上新的征程。<br><br><br><br>== 百家争鸣 重回秦时 ==<br>通过沉浸式的剧情，重回百家争鸣的时代。于乱世之中，体验百家风华。王道、侠道你将如何选择？<br><br>== 战前策略 放置战斗 ==<br>五大阵营、五种阵型、六种职业、七种攻击范围，千变万化的战前策略，体验排兵布阵，指点江湖的乐趣。轻松的放置战斗方式，劳逸结合，享受纯粹的布阵快乐。<br><br>== 豪侠养成 多维体系 ==<br>八维立体式培养，让英雄成长不再受限于门派、职业的限制。高度自由化的多维培养体系，将还你一个自由、纯粹的武侠世界。<br><br>== 丰富玩法 江湖历练 ==<br>千机阁、蜀道迷廊、幻音叠嶂……每一次历练，都能让你获得不同感官体验。江湖之大，奇遇不断，你的秦时之旅将不再枯燥。<br><br>== 独创玩法 机关兽协作 ==<br>三五朋友共同上路，不如机关兽在旁。\"},\"1_ruanjian_category_data\":null}','测试数据',1711631436),(22,63,1,4,'{\"1_ruanjian\":{\"id\":\"63\",\"catid\":\"4\",\"title\":\"云&middot;数码宝贝：新世纪\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_54281769_1688981902/128\",\"keywords\":\"\",\"description\":\"《数码宝贝：新世纪》由万代南梦宫联合奇侠互娱共同开发，是中国大陆地区首款包含原作动画剧情的手机游戏。游戏历时三年精心打磨，版权方全程紧密参与策划监修，力求将最符合IP设定、原汁原味，同时创新生态玩法的\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=63\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618386\",\"updatetime\":\"1711618386\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"32.95M\",\"banben\":\"4.9.2.3970405\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_54281769_1_1688981898/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54281769_2_1688981898/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54281769_3_1688981898/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/480C79C6A1AC879BEE0680E788259687.apk?fsname=com.tencent.gamematrix.dm_4.9.2.3970405_3970405.apk\"},\"1_ruanjian_data_0\":{\"id\":\"63\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 《数码宝贝：新世纪》由万代南梦宫联合奇侠互娱共同开发，是中国大陆地区首款包含原作动画剧情的手机游戏。游戏历时三年精心打磨，版权方全程紧密参与策划监修，力求将最符合IP设定、原汁原味，同时创新生态玩法的数码宝贝新世界呈现给大家。 在游戏中，你可以与海量数码宝贝搭档冒险、策略激战，开启专属于你的冒险之旅吧！\"},\"1_ruanjian_category_data\":null}','测试数据',1711631436),(23,62,1,4,'{\"1_ruanjian\":{\"id\":\"62\",\"catid\":\"4\",\"title\":\"三国一统天下\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_11659102_1711515625/128\",\"keywords\":\"\",\"description\":\"全景即时国战24小时开放，三百余名城关隘等你攻打，三国名臣武将为你鞍前马后，百万热血将士助你圆梦三国！开疆扩土，一将功成万骨枯！运筹帷幄，决胜于千里之外！天下制霸，江山万里皆王土！美人绝色，倾城容姿为\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=62\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618374\",\"updatetime\":\"1711618374\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"539.37M\",\"banben\":\"15.5.0\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_11659102_1_1711515622/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_11659102_2_1711515622/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_11659102_3_1711515622/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/FDAF393674AB15176620147FFC8CE00E.apk?fsname=com.tencent.tmgp.yttxky_15005000.apk\"},\"1_ruanjian_data_0\":{\"id\":\"62\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 全景即时国战24小时开放，三百余名城关隘等你攻打，三国名臣武将为你鞍前马后，百万热血将士助你圆梦三国！开疆扩土，一将功成万骨枯！运筹帷幄，决胜于千里之外！天下制霸，江山万里皆王土！美人绝色，倾城容姿为君生！现在起，叱咤风云，一统天下！\"},\"1_ruanjian_category_data\":null}','测试数据',1711631436),(24,61,1,4,'{\"1_ruanjian\":{\"id\":\"61\",\"catid\":\"4\",\"title\":\"我叫MT\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_10577921_1711519210/128\",\"keywords\":\"\",\"description\":\"《我叫MT Online》根据著名动漫作品《我叫MT》改编，游戏采用卡牌战斗的经典方式，还原了动漫中的人物角色性格和搞笑做派，同时把各大经典副本以独特的方式展现出来。    无论你是否AFK？都可以在\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=61\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618361\",\"updatetime\":\"1711618361\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"333.13M\",\"banben\":\"14.0.0.0\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_10577921_1_1711519207/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_10577921_2_1711519207/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_10577921_3_1711519207/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/52ACE437F0B24A484A8A1DA8ED4FE8CD.apk?fsname=com.tencent.tmgp.locojoy_14000.apk\"},\"1_ruanjian_data_0\":{\"id\":\"61\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 《我叫MT Online》根据著名动漫作品《我叫MT》改编，游戏采用卡牌战斗的经典方式，还原了动漫中的人物角色性格和搞笑做派，同时把各大经典副本以独特的方式展现出来。<br>    无论你是否AFK？都可以在这里和你的朋友在一起战斗，一起下副本，以一种崭新的方式重新体验艾泽拉斯的掌中世界！\"},\"1_ruanjian_category_data\":null}','测试数据',1711631436),(25,60,1,4,'{\"1_ruanjian\":{\"id\":\"60\",\"catid\":\"4\",\"title\":\"长安幻想\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_54131760_1711520675/128\",\"keywords\":\"\",\"description\":\"回合玩长安，轻松无负担！2024超人气回合捉妖手游《长安幻想》新服开启中，新手三折抽神兽，神兽岛限时捉悟空，欧皇附体一箭双雕，与我们共赴梦幻妖灵世界！神秘代码懂的都懂！【vip666】【vip777】\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=60\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618349\",\"updatetime\":\"1711618349\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"554.53M\",\"banben\":\"1.9.9\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_54131760_1_1711520673/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54131760_2_1711520673/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54131760_3_1711520673/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/28215B7A825B1FF6EC5B9A3A7ECFED14.apk?fsname=com.tencent.tmgp.cahxxc_109090.apk\"},\"1_ruanjian_data_0\":{\"id\":\"60\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 回合玩长安，轻松无负担！2024超人气回合捉妖手游《长安幻想》新服开启中，新手三折抽神兽，神兽岛限时捉悟空，欧皇附体一箭双雕，与我们共赴梦幻妖灵世界！<br><br>神秘代码懂的都懂！【vip666】【vip777】【vip888】<br><br>【星火联赛】第五届星火联赛火热进行中，灵师集聚，问鼎长安！<br><br>【决斗之地】全新PVP玩法来袭，长安也要有自己的江湖！<br><br>【长安有豪宅】<br>家园系统全面上线，0首付落地999㎡奢华庄园，随心配家居景观悠然自得。<br><br>【回归享惊喜】回归探险抽神兽，回归玩家享特权，开重逢礼盒得豪礼！<br><br>【新手登录礼】登录次日送程咬金，连登7日送变异天兵！\"},\"1_ruanjian_category_data\":null}','测试数据',1711631436),(26,59,1,4,'{\"1_ruanjian\":{\"id\":\"59\",\"catid\":\"4\",\"title\":\"寻灵大冒险\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_53982553_1711523054/128\",\"keywords\":\"\",\"description\":\"【游戏介绍】《寻灵大冒险》动画官方正版手游！在高度还原动漫细节的基础上，带来全新的MOBA体验。角色与灵兽切换的战斗设计，让战场局势更加瞬息万变；美轮美奂的场景，让你尽享丛林冒险的快感；多种英雄任凭你\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=59\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618338\",\"updatetime\":\"1711618338\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"278.85M\",\"banben\":\"1.12.2\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_53982553_1_1711523052/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_53982553_2_1711523052/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_53982553_3_1711523052/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/D5A441027CDED9F47659B3D0A4EF1A3C.apk?fsname=com.tencent.tmgp.xldmx_52.apk\"},\"1_ruanjian_data_0\":{\"id\":\"59\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 【游戏介绍】<br><br>《寻灵大冒险》动画官方正版手游！在高度还原动漫细节的基础上，带来全新的MOBA体验。角色与灵兽切换的战斗设计，让战场局势更加瞬息万变；美轮美奂的场景，让你尽享丛林冒险的快感；多种英雄任凭你选，神龙现世等你挑战。一血、超神、天下无双，秀翻全场！快带上喜爱的灵兽加入战场，准备激情一战吧！<br><br>【游戏特色】<br><br>1、随时畅玩<br>指尖上的MOBA游戏，10分钟享受畅爽竞技体验。风骚走位，极限微操，力压群雄！<br><br>2、创新玩法<br>角色与灵兽策略搭配，全新的对战体验。你可以任意操控灵兽或主角进行战斗，其技能相互独立，并且技能效果可相互继承，技能连招更加多变，操作体验更加爽快！<br><br>3、公平竞技<br>游戏不设养成系统，Carry全场全凭实力，呈现原滋原味的游戏乐趣！<br><br>4、神龙现世<br>动漫中神秘的龙宝宝显现真身，霸气加入战场，速来一探究竟吧！\"},\"1_ruanjian_category_data\":null}','测试数据',1711631436),(27,58,1,4,'{\"1_ruanjian\":{\"id\":\"58\",\"catid\":\"4\",\"title\":\"少年西游记：4亿玩家\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_42282073_1711523478/128\",\"keywords\":\"\",\"description\":\"4亿玩家期待，异族妖气已现，全盛姿态妖王悟空降临！西游卡牌王者《少年西游记》，全新天金神将登场！三界风云变幻，只等少年出手！全新版本震撼上线！少年回归领豪礼，战力登峰一日千里！全新品质天金神将玉龙·太\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=58\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618326\",\"updatetime\":\"1711618326\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"1.57G\",\"banben\":\"7.5.16\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_42282073_1_1711523475/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_42282073_2_1711523475/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_42282073_3_1711523475/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/2254CBF9CF0AB81A7A68C7D9D2C9AEB8.apk?fsname=com.tencent.tmgp.yzsnxyj_170506.apk\"},\"1_ruanjian_data_0\":{\"id\":\"58\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 4亿玩家期待，异族妖气已现，全盛姿态妖王悟空降临！西游卡牌王者《少年西游记》，全新天金神将登场！三界风云变幻，只等少年出手！全新版本震撼上线！少年回归领豪礼，战力登峰一日千里！全新品质天金神将玉龙·太子、齐天·悟空、小青·小紫即将登场！【同享豪礼】活动开启，新老少年共享奖池，周年大礼，天金品质奖励拿到手软！少年前行不止，西游热血不停！一键方寸山问道，畅游三界无压力！超级神将：斗战胜佛/六耳魔罗/大日如来免费送； 登录签到：100000元宝免费送；老玩家回归奖励再度升级！热血福利带你驰骋三界！<br>超级神将：斗战胜佛/六耳魔罗/大日如来免费送； <br>【年度受期待】4亿玩家期待，96家权威游戏媒体联合推荐，爽快通关激斗，酷炫法宝合击，唯美清新画风，热闹弹幕聊天…年度爆款！\"},\"1_ruanjian_category_data\":null}','测试数据',1711631436),(28,57,1,4,'{\"1_ruanjian\":{\"id\":\"57\",\"catid\":\"4\",\"title\":\"天天爱消除（悠游春日版）\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_10098215_1711525800/128\",\"keywords\":\"\",\"description\":\"《天天爱消除》是一款以“消除烦恼，治愈心灵”为主题的萌系治愈向消除手游，陪伴玩家度过了10个寒暑！轻划手指，将三个相同的小动物旗子连成一行或一列，即可完成一次消除哦！巧妙安排消除时机，灵活运用消除道具\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=57\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618314\",\"updatetime\":\"1711618314\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"322.86M\",\"banben\":\"2.27.0.0Build30\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_10098215_1_1711525797/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_10098215_2_1711525797/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_10098215_3_1711525797/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00001/16891/apk/465E977E21E5B7CA0531EBEFA83B8F53.apk?fsname=com.tencent.peng_2027000.apk\"},\"1_ruanjian_data_0\":{\"id\":\"57\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 《天天爱消除》是一款以“消除烦恼，治愈心灵”为主题的萌系治愈向消除手游，陪伴玩家度过了10个寒暑！轻划手指，将三个相同的小动物旗子连成一行或一列，即可完成一次消除哦！巧妙安排消除时机，灵活运用消除道具和关卡机制，为你的消除旅程插上翅膀吧！<br>开发组目前精心制作了将近5000多个关卡，120多种丰富逗趣的关卡元素，更有冒险模式、经典模式、换装玩法、家装玩法、塔防玩法等多种游戏模式等你体验！新的游戏玩法还在不断地推出中！<br>徜徉在奇妙梦幻的梦境云海里，和暖萌国民IP大使喵星星、黄豆豆、琦琦熊、果果兔一起，运用消除的力量，把人们梦里的烦恼和愁云都清理掉！在消除联萌的暖心守护下，一起做一些甜甜的美梦吧！\"},\"1_ruanjian_category_data\":null}','测试数据',1711631436),(29,55,1,4,'{\"1_ruanjian\":{\"id\":\"55\",\"catid\":\"4\",\"title\":\"指尖四川麻将\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_54148893_1711526005/128\",\"keywords\":\"\",\"description\":\"正宗真人川麻对战，网红大V强力推荐，四季常春爽不停！全新胡牌特效，百变装扮上线！更有全新玩法“十二生肖”震撼来袭，快来跟网红大V一起玩！★★★游戏特色★★★【主播力荐】直播强推，十二生肖，四季常春，血\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=55\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618300\",\"updatetime\":\"1711618300\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"1.16G\",\"banben\":\"7.20.827\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_54148893_1_1711526003/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54148893_2_1711526003/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54148893_3_1711526003/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/FBA691E9A5125A52DB2D308F333333C1.apk?fsname=com.tencent.tmgp.zjscmj_720827.apk\"},\"1_ruanjian_data_0\":{\"id\":\"55\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 正宗真人川麻对战，网红大V强力推荐，四季常春爽不停！<br>全新胡牌特效，百变装扮上线！更有全新玩法“十二生肖”震撼来袭，快来跟网红大V一起玩！<br><br>★★★游戏特色★★★<br>【主播力荐】直播强推，十二生肖，四季常春，血流红中，邀你一起争雀圣！<br><br>【十二生肖】全新玩法，爽快体验，收集生肖牌享倍数加成，吉星高照牌运爆好！<br><br>【一键开局】一键注册，登录赠金币，三秒开局玩到爽！<br><br>【本色玩法】地道玩法，开局定缺，一胡到底，原汁原味！<br><br>【真实情境】 3D牌桌，真实立体，让你身临其境，要的就是这个味！<br><br>【节流能手】奖励多多，任你随地任性畅玩！\"},\"1_ruanjian_category_data\":null}','测试数据',1711631436),(30,53,1,4,'{\"1_ruanjian\":{\"id\":\"53\",\"catid\":\"4\",\"title\":\"四川麻将（血战到底）\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_54276571_1711526283/128\",\"keywords\":\"\",\"description\":\"四川麻将又称血战麻将，盛行于川、渝、贵，风靡全国。四川麻将（血战到底），秉承核心玩法精粹，全新UI打造流行新风尚。3D牌桌，让科技拉近距离，体验真实立体感觉！地道玩法，公平赛制，让大家玩得舒心爽快！实\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=53\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618288\",\"updatetime\":\"1711618288\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"1.16G\",\"banben\":\"7.10.318\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_54276571_1_1711526280/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54276571_2_1711526280/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54276571_3_1711526280/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/9D37825335AA2E5F5924C5F2768A62A0.apk?fsname=com.tencent.tmgp.scmjxzddnew_710318.apk\"},\"1_ruanjian_data_0\":{\"id\":\"53\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 四川麻将又称血战麻将，盛行于川、渝、贵，风靡全国。四川麻将（血战到底），秉承核心玩法精粹，全新UI打造流行新风尚。3D牌桌，让科技拉近距离，体验真实立体感觉！<br>地道玩法，公平赛制，让大家玩得舒心爽快！实时赛事，看雀圣花落谁家。<br><br>★★★游戏特色★★★<br><br>【一键开局】无需注册，一键直达，登录赠金币，三秒开局玩到爽！<br><br>【本色玩法】地道玩法，开局定缺，一胡到底，原汁原味，火辣刺激！<br><br>【3D特效】 3D牌桌，更真实立体，结合创新玩法，要的就是这个味！<br><br>【节流能手】超省流量，奖励多多，随时随地任性畅玩！\"},\"1_ruanjian_category_data\":null}','测试数据',1711631446),(31,51,1,4,'{\"1_ruanjian\":{\"id\":\"51\",\"catid\":\"4\",\"title\":\"口袋进化\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_54229040_1711526420/128\",\"keywords\":\"\",\"description\":\"《口袋进化》是一款宠物对战手游，在这充满神奇宠物的世界，你将化身训练家，收集养成你的宠物，一同冒险成长。野外抓宠，培养进化作为系列的经典玩法，野外抓宠必不可少，在这世界的奇妙野外邂逅未知的宠物，共同努\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=51\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618273\",\"updatetime\":\"1711618273\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"573.97M\",\"banben\":\"23.38.6470\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_54229040_1_1711526417/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54229040_2_1711526417/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54229040_3_1711526417/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/B2551BF0B68D6A526A5C155FE9A22B82.apk?fsname=com.tencent.tmgp.gw_2338.apk\"},\"1_ruanjian_data_0\":{\"id\":\"51\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 《口袋进化》是一款宠物对战手游，在这充满神奇宠物的世界，你将化身训练家，收集养成你的宠物，一同冒险成长。<br><br>野外抓宠，培养进化<br>作为系列的经典玩法，野外抓宠必不可少，在这世界的奇妙野外邂逅未知的宠物，共同努力成长进化，前往一段美妙的冒险旅途。<br><br>玩家对战，经典回合<br>熟悉的水火草等18种属性克制，原汁原味的6V6回合战斗，合理的搭配选择你的出战宠物是获胜的关键，强力的宠物组合助你一步步战胜对手取得联盟冠军。<br><br>完美复刻，神兽再现<br>多达数百种的宠物复刻登录，更有传说中的神兽现身于神秘地点等待你去战斗捕捉。童年一同成长的宠物在等待与你再次冒险，童年错过的宠物这次一定要抓住。快来体验游戏，重回童年经典吧。<br><br>\"},\"1_ruanjian_category_data\":null}','测试数据',1711631446),(32,49,1,4,'{\"1_ruanjian\":{\"id\":\"49\",\"catid\":\"4\",\"title\":\"朕的江山2\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_54275646_1711526426/128\",\"keywords\":\"\",\"description\":\"《朕的江山2》是一款再现东方真实战场的国战策略手游。游戏采用连城式大地图设计，容纳万名玩家在地图上进行城池攻伐，谱写国战争霸独得天下的故事。真实还原东方古战场，再现历史经典战役，濮阳之战、泗水之战、赤\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=49\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618260\",\"updatetime\":\"1711618260\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"753.99M\",\"banben\":\"1.5.40\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_54275646_1_1711526422/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54275646_2_1711526422/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54275646_3_1711526422/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/344622FCCA4CA4379B2B99C2AFB8FA3C.apk?fsname=com.tencent.tmgp.p31_1992.apk\"},\"1_ruanjian_data_0\":{\"id\":\"49\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 《朕的江山2》是一款再现东方真实战场的国战策略手游。游戏采用连城式大地图设计，容纳万名玩家在地图上进行城池攻伐，谱写国战争霸独得天下的故事。<br>真实还原东方古战场，再现历史经典战役，濮阳之战、泗水之战、赤壁以少胜多；发挥你的谋略筹划，合纵连横，制胜千里之外。全服实时作战，百位武将虚位以待，千种技能自由搭配，兵种阵法不可或缺，虎符调遣重兵，亦有振奋军士之奇效；宿命相逢见对决，命数兮兮相合触发特殊合击。<br>一国对一国，一城对一城，国战攻城略地谋略至上，建江山基业扶大厦之将倾。<br>主公，一统江山霸业等你来！\"},\"1_ruanjian_category_data\":null}','测试数据',1711631446),(33,47,1,4,'{\"1_ruanjian\":{\"id\":\"47\",\"catid\":\"4\",\"title\":\"放开那三国3\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_54029891_1711527269/128\",\"keywords\":\"\",\"description\":\"《放开那三国3》三周年庆版本重磅来袭。全新周年庆紫金时装应约而来，全新战斗技能势必为沙场战局带来翻天覆地的变化！ 大波周年福利惊喜降临，白金战骑、白金武魂、金色神兽、金将无双选择包等珍稀道具登录签到即\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=47\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618249\",\"updatetime\":\"1711618249\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"1.63G\",\"banben\":\"0.112.0\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_54029891_1_1711527266/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54029891_2_1711527266/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54029891_3_1711527266/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/95989B0D853622735BB305EB8DD66CD3.apk?fsname=com.tencent.tmgp.sg3_968.apk\"},\"1_ruanjian_data_0\":{\"id\":\"47\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 《放开那三国3》三周年庆版本重磅来袭。全新周年庆紫金时装应约而来，全新战斗技能势必为沙场战局带来翻天覆地的变化！ 大波周年福利惊喜降临，白金战骑、白金武魂、金色神兽、金将无双选择包等珍稀道具登录签到即可领取， 超多惊喜福利尽在《放开那三国3》三周年盛典！<br><br><br>周年庆专属服开启，大小月卡免费激活；送自选武将养成包，金将、16资质红将、15资质红将任君选择助力轻松开荒；签到、冲级均有好礼相送，助力成长；魔魂塔、神兽副本、决战沙场、灵骑幻境等十多种玩法提前解锁，让你尽情玩耍嗨翻天！\"},\"1_ruanjian_category_data\":null}','测试数据',1711631446),(34,45,1,4,'{\"1_ruanjian\":{\"id\":\"45\",\"catid\":\"4\",\"title\":\"武圣三国\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_54268514_1695191422/128\",\"keywords\":\"\",\"description\":\"五星神将遍地，零充也能躺赢！三国卡牌小游戏《武圣三国》来袭！阵营混战，魏蜀吴奇异五大阵营武将任你差遣；阵营加成，技能、装备、神通等玩法助你多维度养成阵容；随时挂机，在线护肝，轻松实现睡后升级！\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=45\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618238\",\"updatetime\":\"1711618238\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"148.67M\",\"banben\":\"0.20.6\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_54268514_1_1695191418/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54268514_2_1695191418/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54268514_3_1695191418/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/CAB5C75103C950A71AE43B95BACF3D5C.apk?fsname=com.tencent.tmgp.ydgame.wssg_102006.apk\"},\"1_ruanjian_data_0\":{\"id\":\"45\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 五星神将遍地，零充也能躺赢！三国卡牌小游戏《武圣三国》来袭！阵营混战，魏蜀吴奇异五大阵营武将任你差遣；阵营加成，技能、装备、神通等玩法助你多维度养成阵容；随时挂机，在线护肝，轻松实现睡后升级！\"},\"1_ruanjian_category_data\":null}','测试数据',1711631446),(35,44,1,4,'{\"1_ruanjian\":{\"id\":\"44\",\"catid\":\"4\",\"title\":\"保卫萝卜2\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_10586556_1711527613/128\",\"keywords\":\"\",\"description\":\"可爱激萌的阿波在《保卫萝卜2》中开启新冒险啦！躲在暗处的小怪物们正蠢蠢欲动，但阿波一点都不怕，因为我们有全新秘密炮塔！《保卫萝卜2》是国民级手游《保卫萝卜》的续作，它除了完美继承前作轻松趣味的塔防玩法\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=44\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618214\",\"updatetime\":\"1711618214\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"136.21M\",\"banben\":\"5.2.6\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_10586556_1_1711527610/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_10586556_2_1711527610/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_10586556_3_1711527610/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/27A516B318B1974432E214223ED7571A.apk?fsname=com.tencent.tmgp.carrot2_821.apk\"},\"1_ruanjian_data_0\":{\"id\":\"44\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 可爱激萌的阿波在《保卫萝卜2》中开启新冒险啦！躲在暗处的小怪物们正蠢蠢欲动，但阿波一点都不怕，因为我们有全新秘密炮塔！《保卫萝卜2》是国民级手游《保卫萝卜》的续作，它除了完美继承前作轻松趣味的塔防玩法和清新Q萌的游戏画风外，更是开创了诸多新玩法！\"},\"1_ruanjian_category_data\":null}','测试数据',1711631446),(36,42,1,4,'{\"1_ruanjian\":{\"id\":\"42\",\"catid\":\"4\",\"title\":\"金铲铲之战\",\"thumb\":\"https://pp.myapp.com/ma_icon/0/icon_54152245_1711557222/128\",\"keywords\":\"\",\"description\":\"《金铲铲之战》是英雄联盟云顶之弈正版授权的自动战斗品类手游，每局比赛由八名玩家共同进行一场各自为战的博弈对抗，玩家通过招兵买马，融合英雄，提升战力，排兵布阵，成为最终立于战场上的赢家。除了延续经典的玩\",\"hits\":\"0\",\"uid\":\"1\",\"author\":\"HSQ\",\"status\":\"9\",\"url\":\"/index.php?c=show&id=42\",\"link_id\":\"0\",\"tableid\":\"0\",\"inputip\":\"127.0.0.1\",\"inputtime\":\"1711618201\",\"updatetime\":\"1711618201\",\"displayorder\":\"0\",\"xitong\":\"1\",\"daxiao\":\"1.95G\",\"banben\":\"1.7.18\",\"jietu\":\"{\\\"file\\\":[\\\"https://pp.myapp.com/ma_pic2/0/shot_54152245_1_1711557219/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54152245_2_1711557219/0\\\",\\\"https://pp.myapp.com/ma_pic2/0/shot_54152245_3_1711557219/0\\\"],\\\"title\\\":[\\\"\\\",\\\"\\\",\\\"\\\"],\\\"description\\\":[\\\"\\\",\\\"\\\",\\\"\\\"]}\",\"xiazaidizhi\":\"http://imtt2.dd.qq.com/sjy.00008/sjy.00001/16891/apk/110D532497A2BBF0B4F326B9522D6324.apk?fsname=com.tencent.jkchess_1036.apk\"},\"1_ruanjian_data_0\":{\"id\":\"42\",\"uid\":\"1\",\"catid\":\"4\",\"content\":\" 《金铲铲之战》是英雄联盟云顶之弈正版授权的自动战斗品类手游，每局比赛由八名玩家共同进行一场各自为战的博弈对抗，玩家通过招兵买马，融合英雄，提升战力，排兵布阵，成为最终立于战场上的赢家。<br>除了延续经典的玩法之外，还加入了快速模式、双人模式及阵容挑战赛等更多精彩内容，赶紧体验！\"},\"1_ruanjian_category_data\":null}','测试数据',1711631446);
/*!40000 ALTER TABLE `{dbprefix}1_ruanjian_recycle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_ruanjian_search`
--

DROP TABLE IF EXISTS `{dbprefix}1_ruanjian_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_ruanjian_search` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '参数数组',
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '关键字',
  `contentid` int(10) unsigned NOT NULL COMMENT '字段改成了结果数量值',
  `inputtime` int(10) unsigned NOT NULL COMMENT '搜索时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `catid` (`catid`),
  KEY `keyword` (`keyword`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='搜索表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_ruanjian_search`
--

LOCK TABLES `{dbprefix}1_ruanjian_search` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_ruanjian_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}1_ruanjian_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_ruanjian_time`
--

DROP TABLE IF EXISTS `{dbprefix}1_ruanjian_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_ruanjian_time` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '具体内容',
  `result` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '处理结果',
  `posttime` int(10) unsigned NOT NULL COMMENT '定时发布时间',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `posttime` (`posttime`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容定时发布表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_ruanjian_time`
--

LOCK TABLES `{dbprefix}1_ruanjian_time` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_ruanjian_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}1_ruanjian_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_ruanjian_verify`
--

DROP TABLE IF EXISTS `{dbprefix}1_ruanjian_verify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_ruanjian_verify` (
  `id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `vid` tinyint(2) NOT NULL COMMENT '审核id号',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '是否新增',
  `islock` tinyint(1) unsigned NOT NULL COMMENT '是否锁定',
  `author` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '作者',
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(2) NOT NULL COMMENT '审核状态',
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `vid` (`vid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容审核表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_ruanjian_verify`
--

LOCK TABLES `{dbprefix}1_ruanjian_verify` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_ruanjian_verify` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}1_ruanjian_verify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_share_category`
--

DROP TABLE IF EXISTS `{dbprefix}1_share_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_share_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tid` tinyint(1) NOT NULL COMMENT '栏目类型，0单页，1模块，2外链',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `mid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模块目录',
  `pids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所有上级id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目名称',
  `dirname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目目录',
  `pdirname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '上级目录',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有下级',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用',
  `ismain` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否主栏目',
  `childids` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '下级所有id',
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目图片',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '单页内容',
  `setting` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '属性配置',
  `displayorder` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `tid` (`tid`),
  KEY `show` (`show`),
  KEY `disabled` (`disabled`),
  KEY `ismain` (`ismain`),
  KEY `dirname` (`dirname`),
  KEY `module` (`pid`,`displayorder`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='共享模块栏目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_share_category`
--

LOCK TABLES `{dbprefix}1_share_category` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_share_category` DISABLE KEYS */;
INSERT INTO `{dbprefix}1_share_category` VALUES (1,1,0,'ruanjian','0','手机软件','soft','',0,0,1,'1','',1,'','{\"disabled\":\"0\",\"linkurl\":\"\",\"getchild\":\"0\",\"notedit\":\"0\",\"urlrule\":\"0\",\"seo\":{\"list_title\":\"[第{page}页{join}]{catpname}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"mpagesize\":\"20\",\"page\":\"page.html\",\"list\":\"list_soft.html\",\"category\":\"list_soft.html\",\"search\":\"search.html\",\"show\":\"show_soft.html\"},\"cat_field\":null,\"module_field\":null}',1),(2,1,0,'news','0','游戏活动','huodong','',0,0,1,'2','',1,'','{\"disabled\":\"0\",\"linkurl\":\"\",\"getchild\":\"0\",\"notedit\":\"0\",\"urlrule\":null,\"seo\":{\"list_title\":\"[第{page}页{join}]{catpname}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"mpagesize\":\"20\",\"page\":\"page.html\",\"list\":\"list_news.html\",\"category\":\"list_news.html\",\"search\":\"search.html\",\"show\":\"show_news.html\"},\"cat_field\":null,\"module_field\":null}',3),(3,1,0,'news','0','游戏资讯','zixun','',0,0,1,'3','',1,'','{\"disabled\":\"0\",\"linkurl\":\"\",\"getchild\":\"0\",\"notedit\":\"0\",\"urlrule\":null,\"seo\":{\"list_title\":\"[第{page}页{join}]{catpname}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"mpagesize\":\"20\",\"page\":\"page.html\",\"list\":\"list_news.html\",\"category\":\"list_news.html\",\"search\":\"search.html\",\"show\":\"show_news.html\"},\"cat_field\":null,\"module_field\":null}',4),(4,1,0,'youxi','0','手机游戏','game','',0,0,1,'4','',1,'','{\"disabled\":\"0\",\"linkurl\":\"\",\"getchild\":\"0\",\"notedit\":\"0\",\"urlrule\":\"0\",\"seo\":{\"list_title\":\"[第{page}页{join}]{catpname}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"mpagesize\":\"20\",\"page\":\"page.html\",\"list\":\"list_game.html\",\"category\":\"list_game.html\",\"search\":\"search.html\",\"show\":\"show_game.html\"},\"cat_field\":null,\"module_field\":null}',2);
/*!40000 ALTER TABLE `{dbprefix}1_share_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_share_index`
--

DROP TABLE IF EXISTS `{dbprefix}1_share_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_share_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模块目录',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='共享模块内容索引表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_share_index`
--

LOCK TABLES `{dbprefix}1_share_index` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_share_index` DISABLE KEYS */;
INSERT INTO `{dbprefix}1_share_index` VALUES (1,'news'),(3,'news'),(4,'news'),(5,'news'),(6,'news'),(7,'news'),(8,'news'),(9,'news'),(10,'news'),(11,'news'),(12,'news'),(13,'news'),(126,'news'),(127,'news'),(128,'news'),(129,'news'),(130,'news'),(131,'news'),(132,'news'),(133,'news'),(134,'news'),(135,'news'),(136,'news'),(137,'news'),(138,'news'),(139,'news'),(140,'news'),(141,'news'),(142,'news'),(143,'news'),(144,'news'),(145,'news'),(146,'news'),(147,'news'),(148,'news'),(149,'news'),(150,'news'),(151,'news'),(152,'news'),(153,'news'),(154,'news'),(155,'news'),(156,'news'),(157,'news'),(158,'news'),(159,'news'),(160,'news'),(161,'news'),(162,'news'),(163,'news'),(164,'news'),(165,'news'),(2,'ruanjian'),(14,'ruanjian'),(15,'ruanjian'),(16,'ruanjian'),(17,'ruanjian'),(18,'ruanjian'),(19,'ruanjian'),(20,'ruanjian'),(21,'ruanjian'),(22,'ruanjian'),(23,'ruanjian'),(24,'ruanjian'),(25,'ruanjian'),(26,'ruanjian'),(27,'ruanjian'),(28,'ruanjian'),(29,'ruanjian'),(30,'ruanjian'),(31,'ruanjian'),(32,'ruanjian'),(33,'ruanjian'),(34,'ruanjian'),(35,'ruanjian'),(36,'ruanjian'),(37,'ruanjian'),(38,'ruanjian'),(39,'ruanjian'),(40,'ruanjian'),(41,'ruanjian'),(42,'ruanjian'),(43,'ruanjian'),(44,'ruanjian'),(45,'ruanjian'),(46,'ruanjian'),(47,'ruanjian'),(48,'ruanjian'),(49,'ruanjian'),(50,'ruanjian'),(51,'ruanjian'),(52,'ruanjian'),(53,'ruanjian'),(54,'ruanjian'),(55,'ruanjian'),(56,'ruanjian'),(57,'ruanjian'),(58,'ruanjian'),(59,'ruanjian'),(60,'ruanjian'),(61,'ruanjian'),(62,'ruanjian'),(63,'ruanjian'),(64,'ruanjian'),(65,'ruanjian'),(66,'ruanjian'),(67,'ruanjian'),(68,'ruanjian'),(69,'ruanjian'),(70,'ruanjian'),(71,'ruanjian'),(72,'ruanjian'),(73,'ruanjian'),(74,'ruanjian'),(75,'ruanjian'),(76,'ruanjian'),(77,'ruanjian'),(78,'ruanjian'),(79,'ruanjian'),(80,'ruanjian'),(81,'ruanjian'),(82,'ruanjian'),(83,'ruanjian'),(84,'ruanjian'),(85,'youxi'),(86,'youxi'),(87,'youxi'),(88,'youxi'),(89,'youxi'),(90,'youxi'),(91,'youxi'),(92,'youxi'),(93,'youxi'),(94,'youxi'),(95,'youxi'),(96,'youxi'),(97,'youxi'),(98,'youxi'),(99,'youxi'),(100,'youxi'),(101,'youxi'),(102,'youxi'),(103,'youxi'),(104,'youxi'),(105,'youxi'),(106,'youxi'),(107,'youxi'),(108,'youxi'),(109,'youxi'),(110,'youxi'),(111,'youxi'),(112,'youxi'),(113,'youxi'),(114,'youxi'),(115,'youxi'),(116,'youxi'),(117,'youxi'),(118,'youxi'),(119,'youxi'),(120,'youxi'),(121,'youxi'),(122,'youxi'),(123,'youxi'),(124,'youxi'),(125,'youxi');
/*!40000 ALTER TABLE `{dbprefix}1_share_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_tag`
--

DROP TABLE IF EXISTS `{dbprefix}1_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT '0' COMMENT '父级id',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '关键词名称',
  `code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '关键词代码',
  `pcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关键词代码',
  `hits` int(10) unsigned NOT NULL COMMENT '点击量(废除)',
  `childids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '子类集合',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '关键词描述',
  `displayorder` int(10) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `letter` (`code`,`hits`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='关键词库表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_tag`
--

LOCK TABLES `{dbprefix}1_tag` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}1_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_youxi`
--

DROP TABLE IF EXISTS `{dbprefix}1_youxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_youxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '主题',
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '缩略图',
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关键字',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT '描述',
  `hits` int(10) unsigned DEFAULT NULL COMMENT '浏览数',
  `uid` int(10) unsigned NOT NULL COMMENT '作者id',
  `author` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '笔名',
  `status` tinyint(2) NOT NULL COMMENT '状态(已废弃)',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `link_id` int(10) NOT NULL DEFAULT '0' COMMENT '同步id',
  `tableid` smallint(5) unsigned NOT NULL COMMENT '附表id',
  `inputip` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` int(10) DEFAULT '0' COMMENT '排序值',
  `jietu` text COLLATE utf8mb4_unicode_ci COMMENT '截图',
  `xitong` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '系统',
  `daxiao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '大小',
  `banben` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '版本',
  `xiazaidizhi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '下载地址',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `link_id` (`link_id`),
  KEY `status` (`status`),
  KEY `updatetime` (`updatetime`),
  KEY `hits` (`hits`),
  KEY `category` (`catid`,`status`),
  KEY `displayorder` (`displayorder`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容主表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_youxi`
--

LOCK TABLES `{dbprefix}1_youxi` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_youxi` DISABLE KEYS */;
INSERT INTO `{dbprefix}1_youxi` VALUES (85,4,'金铲铲之战','https://pp.myapp.com/ma_icon/0/icon_54152245_1711557222/128','','《金铲铲之战》是英雄联盟云顶之弈正版授权的自动战斗品类手游，每局比赛由八名玩家共同进行一场各自为战的博弈对抗，玩家通过招兵买马，融合英雄，提升战力，排兵布阵，成为最终立于战场上的赢家。除了延续经典的玩',0,1,'HSQ',9,'/index.php?c=show&id=85',0,0,'127.0.0.1',1711631697,1711631697,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54152245_1_1711557219/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54152245_2_1711557219/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54152245_3_1711557219/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','1.95G','1.7.18','http://imtt2.dd.qq.com/sjy.00008/sjy.00001/16891/apk/110D532497A2BBF0B4F326B9522D6324.apk?fsname=com.tencent.jkchess_1036.apk'),(86,4,'金铲铲之战','https://pp.myapp.com/ma_icon/0/icon_54152245_1711557222/128','','《金铲铲之战》是英雄联盟云顶之弈正版授权的自动战斗品类手游，每局比赛由八名玩家共同进行一场各自为战的博弈对抗，玩家通过招兵买马，融合英雄，提升战力，排兵布阵，成为最终立于战场上的赢家。除了延续经典的玩',0,1,'HSQ',9,'/index.php?c=show&id=86',0,0,'127.0.0.1',1711632283,1711632283,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54152245_1_1711557219/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54152245_2_1711557219/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54152245_3_1711557219/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','1.95G','1.7.18','http://imtt2.dd.qq.com/sjy.00008/sjy.00001/16891/apk/110D532497A2BBF0B4F326B9522D6324.apk?fsname=com.tencent.jkchess_1036.apk'),(87,4,'经典华容道','https://pp.myapp.com/ma_icon/0/icon_54349004_1708920252/128','','数字华容道，一款全新的经典的益智类型数字APP。目的是用最少的步数，最短时间将棋盘上的数字方块，按照从左到右，从上到下的顺序重新排列整齐',0,1,'HSQ',9,'/index.php?c=show&id=87',0,0,'127.0.0.1',1711632294,1711632294,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54349004_1_1708920249/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54349004_2_1708920249/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54349004_3_1708920249/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','51.85M','1.1.3','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/172F0A9A0BB68B60A72C3337490ADD55.apk?fsname=com.tencent.tmgp.yr.numberhrd_6.apk'),(88,4,'明日领主','https://pp.myapp.com/ma_icon/0/icon_54351898_1705543211/128','','爷青回！二十年经典IP重现，通灵王大赛全面开启，麻仓叶、恐山安娜、道莲、叶王......一个个耳熟能详的角色完美还原。组建最强战队，决战帕契村，成为通灵王！经典卡牌放置玩法，人物羁绊，属性加持，炫酷技',0,1,'HSQ',9,'/index.php?c=show&id=88',0,0,'127.0.0.1',1711632305,1711632305,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54351898_1_1705543207/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54351898_2_1705543207/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54351898_3_1705543207/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','633.31M','3.0.0','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/CBB30883BD2068BB3C981AC897B17CA8.apk?fsname=com.tencent.tmgp.lezhi.mrlz_3.apk'),(89,4,'保卫萝卜2','https://pp.myapp.com/ma_icon/0/icon_10586556_1711527613/128','','可爱激萌的阿波在《保卫萝卜2》中开启新冒险啦！躲在暗处的小怪物们正蠢蠢欲动，但阿波一点都不怕，因为我们有全新秘密炮塔！《保卫萝卜2》是国民级手游《保卫萝卜》的续作，它除了完美继承前作轻松趣味的塔防玩法',0,1,'HSQ',9,'/index.php?c=show&id=89',0,0,'127.0.0.1',1711632318,1711632318,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_10586556_1_1711527610/0\",\"https://pp.myapp.com/ma_pic2/0/shot_10586556_2_1711527610/0\",\"https://pp.myapp.com/ma_pic2/0/shot_10586556_3_1711527610/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','136.21M','5.2.6','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/27A516B318B1974432E214223ED7571A.apk?fsname=com.tencent.tmgp.carrot2_821.apk'),(90,4,'武圣三国','https://pp.myapp.com/ma_icon/0/icon_54268514_1695191422/128','','五星神将遍地，零充也能躺赢！三国卡牌小游戏《武圣三国》来袭！阵营混战，魏蜀吴奇异五大阵营武将任你差遣；阵营加成，技能、装备、神通等玩法助你多维度养成阵容；随时挂机，在线护肝，轻松实现睡后升级！',0,1,'HSQ',9,'/index.php?c=show&id=90',0,0,'127.0.0.1',1711632333,1711632333,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54268514_1_1695191418/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54268514_2_1695191418/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54268514_3_1695191418/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','148.67M','0.20.6','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/CAB5C75103C950A71AE43B95BACF3D5C.apk?fsname=com.tencent.tmgp.ydgame.wssg_102006.apk'),(91,4,'放开那三国3','https://pp.myapp.com/ma_icon/0/icon_54029891_1711527269/128','','《放开那三国3》三周年庆版本重磅来袭。全新周年庆紫金时装应约而来，全新战斗技能势必为沙场战局带来翻天覆地的变化！ 大波周年福利惊喜降临，白金战骑、白金武魂、金色神兽、金将无双选择包等珍稀道具登录签到即',0,1,'HSQ',9,'/index.php?c=show&id=91',0,0,'127.0.0.1',1711632344,1711632344,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54029891_1_1711527266/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54029891_2_1711527266/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54029891_3_1711527266/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','1.63G','0.112.0','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/95989B0D853622735BB305EB8DD66CD3.apk?fsname=com.tencent.tmgp.sg3_968.apk'),(92,4,'朕的江山2','https://pp.myapp.com/ma_icon/0/icon_54275646_1711526426/128','','《朕的江山2》是一款再现东方真实战场的国战策略手游。游戏采用连城式大地图设计，容纳万名玩家在地图上进行城池攻伐，谱写国战争霸独得天下的故事。真实还原东方古战场，再现历史经典战役，濮阳之战、泗水之战、赤',0,1,'HSQ',9,'/index.php?c=show&id=92',0,0,'127.0.0.1',1711632359,1711632359,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54275646_1_1711526422/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54275646_2_1711526422/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54275646_3_1711526422/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','753.99M','1.5.40','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/344622FCCA4CA4379B2B99C2AFB8FA3C.apk?fsname=com.tencent.tmgp.p31_1992.apk'),(93,4,'口袋进化','https://pp.myapp.com/ma_icon/0/icon_54229040_1711526420/128','','《口袋进化》是一款宠物对战手游，在这充满神奇宠物的世界，你将化身训练家，收集养成你的宠物，一同冒险成长。野外抓宠，培养进化作为系列的经典玩法，野外抓宠必不可少，在这世界的奇妙野外邂逅未知的宠物，共同努',0,1,'HSQ',9,'/index.php?c=show&id=93',0,0,'127.0.0.1',1711632373,1711632373,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54229040_1_1711526417/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54229040_2_1711526417/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54229040_3_1711526417/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','573.97M','23.38.6470','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/B2551BF0B68D6A526A5C155FE9A22B82.apk?fsname=com.tencent.tmgp.gw_2338.apk'),(94,4,'四川麻将（血战到底）','https://pp.myapp.com/ma_icon/0/icon_54276571_1711526283/128','','四川麻将又称血战麻将，盛行于川、渝、贵，风靡全国。四川麻将（血战到底），秉承核心玩法精粹，全新UI打造流行新风尚。3D牌桌，让科技拉近距离，体验真实立体感觉！地道玩法，公平赛制，让大家玩得舒心爽快！实',0,1,'HSQ',9,'/index.php?c=show&id=94',0,0,'127.0.0.1',1711632385,1711632385,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54276571_1_1711526280/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54276571_2_1711526280/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54276571_3_1711526280/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','1.16G','7.10.318','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/9D37825335AA2E5F5924C5F2768A62A0.apk?fsname=com.tencent.tmgp.scmjxzddnew_710318.apk'),(95,4,'指尖四川麻将','https://pp.myapp.com/ma_icon/0/icon_54148893_1711526005/128','','正宗真人川麻对战，网红大V强力推荐，四季常春爽不停！全新胡牌特效，百变装扮上线！更有全新玩法“十二生肖”震撼来袭，快来跟网红大V一起玩！★★★游戏特色★★★【主播力荐】直播强推，十二生肖，四季常春，血',0,1,'HSQ',9,'/index.php?c=show&id=95',0,0,'127.0.0.1',1711632395,1711632395,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54148893_1_1711526003/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54148893_2_1711526003/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54148893_3_1711526003/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','1.16G','7.20.827','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/FBA691E9A5125A52DB2D308F333333C1.apk?fsname=com.tencent.tmgp.zjscmj_720827.apk'),(96,4,'天天爱消除（悠游春日版）','https://pp.myapp.com/ma_icon/0/icon_10098215_1711525800/128','','《天天爱消除》是一款以“消除烦恼，治愈心灵”为主题的萌系治愈向消除手游，陪伴玩家度过了10个寒暑！轻划手指，将三个相同的小动物旗子连成一行或一列，即可完成一次消除哦！巧妙安排消除时机，灵活运用消除道具',0,1,'HSQ',9,'/index.php?c=show&id=96',0,0,'127.0.0.1',1711632406,1711632406,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_10098215_1_1711525797/0\",\"https://pp.myapp.com/ma_pic2/0/shot_10098215_2_1711525797/0\",\"https://pp.myapp.com/ma_pic2/0/shot_10098215_3_1711525797/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','322.86M','2.27.0.0Build30','http://imtt2.dd.qq.com/sjy.00008/sjy.00001/16891/apk/465E977E21E5B7CA0531EBEFA83B8F53.apk?fsname=com.tencent.peng_2027000.apk'),(97,4,'泡泡龙单机游戏','https://pp.myapp.com/ma_icon/0/icon_54335224_1709000300/128','','泡泡的消除 当玩家主动令游戏区形成 3 个或以上的同色泡泡相连，则这些泡泡将下坠掉。 发射出一个泡泡后，必须等灯泡泡爆掉或黏附与它泡泡或顶端，才能发下一个泡泡（称为就绪），但期间可以使用道具。 泡泡的',0,1,'HSQ',9,'/index.php?c=show&id=97',0,0,'127.0.0.1',1711632420,1711632420,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54335224_1_1709000298/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54335224_2_1709000298/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54335224_3_1709000298/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','35.12M','1.0.5','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/780751BB39C411575B3FAC7D7422BB17.apk?fsname=com.tencent.tmgp.yr.ppl_12.apk'),(98,4,'盛世龙城','https://pp.myapp.com/ma_icon/0/icon_54287530_1711525652/128','','《盛世龙城》是一款微变热血高爆复古传奇手游！经典复刻、免费升V、多重福利拿到手软！挂机打怪爆神装，轻松回收，百万元宝秒到账！上线满攻速，直击灵魂的快感！游戏升级玩法无比轻松！在玩法设计上，以“升级、爆',0,1,'HSQ',9,'/index.php?c=show&id=98',0,0,'127.0.0.1',1711632433,1711632433,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54287530_1_1711525649/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54287530_2_1711525649/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54287530_3_1711525649/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','303.27M','15.0.0','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/5CFC95BB5F9AEF361A52D8BC4C35B6EF.apk?fsname=com.tencent.tmgp.oasis.sslc_15.apk'),(99,4,'少年西游记：4亿玩家','https://pp.myapp.com/ma_icon/0/icon_42282073_1711523478/128','','4亿玩家期待，异族妖气已现，全盛姿态妖王悟空降临！西游卡牌王者《少年西游记》，全新天金神将登场！三界风云变幻，只等少年出手！全新版本震撼上线！少年回归领豪礼，战力登峰一日千里！全新品质天金神将玉龙·太',0,1,'HSQ',9,'/index.php?c=show&id=99',0,0,'127.0.0.1',1711632443,1711632443,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_42282073_1_1711523475/0\",\"https://pp.myapp.com/ma_pic2/0/shot_42282073_2_1711523475/0\",\"https://pp.myapp.com/ma_pic2/0/shot_42282073_3_1711523475/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','1.57G','7.5.16','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/2254CBF9CF0AB81A7A68C7D9D2C9AEB8.apk?fsname=com.tencent.tmgp.yzsnxyj_170506.apk'),(100,4,'寻灵大冒险','https://pp.myapp.com/ma_icon/0/icon_53982553_1711523054/128','','【游戏介绍】《寻灵大冒险》动画官方正版手游！在高度还原动漫细节的基础上，带来全新的MOBA体验。角色与灵兽切换的战斗设计，让战场局势更加瞬息万变；美轮美奂的场景，让你尽享丛林冒险的快感；多种英雄任凭你',0,1,'HSQ',9,'/index.php?c=show&id=100',0,0,'127.0.0.1',1711632454,1711632454,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_53982553_1_1711523052/0\",\"https://pp.myapp.com/ma_pic2/0/shot_53982553_2_1711523052/0\",\"https://pp.myapp.com/ma_pic2/0/shot_53982553_3_1711523052/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','278.85M','1.12.2','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/D5A441027CDED9F47659B3D0A4EF1A3C.apk?fsname=com.tencent.tmgp.xldmx_52.apk'),(101,4,'我的战争','https://pp.myapp.com/ma_icon/0/icon_54301557_1711521020/128','','《我的战争-光荣进军》是一款近现代军事题材的卡通风格模拟战争手机游戏，玩家可以选择五种各具特色的阵营部队，收集和培养传奇指挥官，亲临战场，搭配特殊精锐兵种，施展进攻与布防策略，连横合纵，争霸世界。游戏',0,1,'HSQ',9,'/index.php?c=show&id=101',0,0,'127.0.0.1',1711632467,1711632467,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54301557_1_1711521017/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54301557_2_1711521017/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54301557_3_1711521017/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','555.41M','1.1099','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/DFF4716EF9AC353A9A1B996377D8DB8C.apk?fsname=com.tencent.tmgp.mywar_649.apk'),(102,4,'长安幻想','https://pp.myapp.com/ma_icon/0/icon_54131760_1711520675/128','','回合玩长安，轻松无负担！2024超人气回合捉妖手游《长安幻想》新服开启中，新手三折抽神兽，神兽岛限时捉悟空，欧皇附体一箭双雕，与我们共赴梦幻妖灵世界！神秘代码懂的都懂！【vip666】【vip777】',0,1,'HSQ',9,'/index.php?c=show&id=102',0,0,'127.0.0.1',1711632481,1711632481,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54131760_1_1711520673/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54131760_2_1711520673/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54131760_3_1711520673/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','554.53M','1.9.9','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/28215B7A825B1FF6EC5B9A3A7ECFED14.apk?fsname=com.tencent.tmgp.cahxxc_109090.apk'),(103,4,'云&middot;腾讯欢乐斗地主','https://pp.myapp.com/ma_icon/0/icon_54289662_1711519967/128','','《欢乐斗地主云游戏》是由腾讯先锋云游戏和《欢乐斗地主》联合发布的云游戏体验版本。30M的超小包体即可体验完整游戏内容，免更新、不发热、低耗电，机型要求低，一键下载，立即体验！',0,1,'HSQ',9,'/index.php?c=show&id=103',0,0,'127.0.0.1',1711632492,1711632492,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54289662_1_1711519964/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54289662_2_1711519964/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54289662_3_1711519964/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','35.87M','5.0.1.4019306','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/C5DF0E0CD381093EB5D71592C1585013.apk?fsname=com.tencent.gamematrix.hlddz_5.0.1.4019306.apk'),(104,4,'我叫MT','https://pp.myapp.com/ma_icon/0/icon_10577921_1711519210/128','','《我叫MT Online》根据著名动漫作品《我叫MT》改编，游戏采用卡牌战斗的经典方式，还原了动漫中的人物角色性格和搞笑做派，同时把各大经典副本以独特的方式展现出来。    无论你是否AFK？都可以在',0,1,'HSQ',9,'/index.php?c=show&id=104',0,0,'127.0.0.1',1711632508,1711632508,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_10577921_1_1711519207/0\",\"https://pp.myapp.com/ma_pic2/0/shot_10577921_2_1711519207/0\",\"https://pp.myapp.com/ma_pic2/0/shot_10577921_3_1711519207/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','333.13M','14.0.0.0','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/52ACE437F0B24A484A8A1DA8ED4FE8CD.apk?fsname=com.tencent.tmgp.locojoy_14000.apk'),(105,4,'三国一统天下','https://pp.myapp.com/ma_icon/0/icon_11659102_1711515625/128','','全景即时国战24小时开放，三百余名城关隘等你攻打，三国名臣武将为你鞍前马后，百万热血将士助你圆梦三国！开疆扩土，一将功成万骨枯！运筹帷幄，决胜于千里之外！天下制霸，江山万里皆王土！美人绝色，倾城容姿为',0,1,'HSQ',9,'/index.php?c=show&id=105',0,0,'127.0.0.1',1711632518,1711632518,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_11659102_1_1711515622/0\",\"https://pp.myapp.com/ma_pic2/0/shot_11659102_2_1711515622/0\",\"https://pp.myapp.com/ma_pic2/0/shot_11659102_3_1711515622/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','539.37M','15.5.0','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/FDAF393674AB15176620147FFC8CE00E.apk?fsname=com.tencent.tmgp.yttxky_15005000.apk'),(106,4,'燃烧吧大脑','https://pp.myapp.com/ma_icon/0/icon_54289815_1677566779/128','','《燃烧吧大脑》是一款深受多人好评的脑洞大开的全新烧脑挑战难题游戏。跳出思维陷阱，释放眼力和脑力的双重压力，获得终极答案！超级烧脑风暴，老少皆宜，创意大开！大规模的画线创意脑筋急转弯！富含趣味的关卡设计',0,1,'HSQ',9,'/index.php?c=show&id=106',0,0,'127.0.0.1',1711632531,1711632531,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54289815_1_1677566776/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54289815_2_1677566776/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54289815_3_1677566776/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','38.92M','1.0.0.0','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/246E73EABBEB061E8F5F44A9E99A54BC.apk?fsname=com.qyg.zbnewburnbrianapk_1.0.0.0_1000000.apk'),(107,4,'云&middot;数码宝贝：新世纪','https://pp.myapp.com/ma_icon/0/icon_54281769_1688981902/128','','《数码宝贝：新世纪》由万代南梦宫联合奇侠互娱共同开发，是中国大陆地区首款包含原作动画剧情的手机游戏。游戏历时三年精心打磨，版权方全程紧密参与策划监修，力求将最符合IP设定、原汁原味，同时创新生态玩法的',0,1,'HSQ',9,'/index.php?c=show&id=107',0,0,'127.0.0.1',1711632545,1711632545,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54281769_1_1688981898/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54281769_2_1688981898/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54281769_3_1688981898/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','32.95M','4.9.2.3970405','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/480C79C6A1AC879BEE0680E788259687.apk?fsname=com.tencent.gamematrix.dm_4.9.2.3970405_3970405.apk'),(108,4,'秦时明月：沧海','https://pp.myapp.com/ma_icon/0/icon_54247527_1711512759/128','','《秦时明月：沧海》是一款以秦时明月系列动画为架构的3D放置手游，游戏在延续原作经典剧情的同时，还将重现诸多经典场面，以及战斗场景，并通过人物专属传记的形式，重温那些令人动容的过往。在《秦时明月：沧海》',0,1,'HSQ',9,'/index.php?c=show&id=108',0,0,'127.0.0.1',1711632557,1711632557,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54247527_1_1711512756/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54247527_2_1711512756/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54247527_3_1711512756/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','1.29G','1.4.3','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/2EF7EF1B018520650BD89A5090020710.apk?fsname=com.tencent.tmgp.qsmyzzbj_43.apk'),(109,4,'东方归言录','https://pp.myapp.com/ma_icon/0/icon_54112419_1705284018/128','','《东方归言录》是一款以“东方Project”为原型的二次创作回合制RPG手游。由日本以动漫手办闻名的Good Smile Company（良笑社）与擅长做RPG的NextNinja共同开发。在本作中，',0,1,'HSQ',9,'/index.php?c=show&id=109',0,0,'127.0.0.1',1711632569,1711632569,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54112419_1_1705284015/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54112419_2_1705284015/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54112419_3_1705284015/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','1.86G','4.2.0','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/5D02B16ED2D6031EBB426C0443CB3020.apk?fsname=com.tencent.tmgp.gg.lostword_60.apk'),(110,4,'决战！平安京-「苍月之谣」全新世界观登场','https://pp.myapp.com/ma_icon/0/icon_52575793_1711504821/128','','真意觉醒，焕燃新生，《决战！平安京》六周年版本盛大开启！全服事件开启，全新角色塑造，全新经典文化演绎，全新美术标杆打造……在《决战！平安京》，在MOBA竞技的净土之上，感受新生的磅礴力量。「全新角色悟',0,1,'HSQ',9,'/index.php?c=show&id=110',0,0,'127.0.0.1',1711632582,1711632582,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_52575793_1_1711504818/0\",\"https://pp.myapp.com/ma_pic2/0/shot_52575793_2_1711504818/0\",\"https://pp.myapp.com/ma_pic2/0/shot_52575793_3_1711504818/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','1.75G','1.191.0','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/E20BC351E6661A5DD0BCB0229BC4EBB4.apk?fsname=com.tencent.tmgp.kaopu.jzpaj_236.apk'),(111,4,'阴阳师：妖怪屋','https://pp.myapp.com/ma_icon/0/icon_53682110_1711506610/128','','《阴阳师：妖怪屋》是一款基于阴阳师IP的萌系云养妖手游。家主大人将在奇妙的剪纸庭院中照看妖怪们的生活起居，还将与各式Q弹妖怪并肩作战…优哉游哉的和风妖怪，轻松休闲的个性养成，趣味无穷的庭院互动，带你体',0,1,'HSQ',9,'/index.php?c=show&id=111',0,0,'127.0.0.1',1711632597,1711632597,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_53682110_1_1711506606/0\",\"https://pp.myapp.com/ma_pic2/0/shot_53682110_2_1711506606/0\",\"https://pp.myapp.com/ma_pic2/0/shot_53682110_3_1711506606/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','1.92G','1.998.037','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/C48D175CA78C770604887F3FCC3CB6F2.apk?fsname=com.tencent.tmgp.eyou.ygwu_1034.apk'),(112,4,'天天猜字谜','https://pp.myapp.com/ma_icon/0/icon_54164812_1711510694/128','','天天猜字谜，根据汉字的造字规律，或汉字的音、形、义等某些特点编写的谜语.感受中华文字结构变化，趣味盎然、老少皆宜.锻炼多角度思考问题，帮助你破除固有思维，培养灵活多变的思维方式.谜底答疑，让你知道为什',0,1,'HSQ',9,'/index.php?c=show&id=112',0,0,'127.0.0.1',1711632609,1711632609,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54164812_1_1711510692/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54164812_2_1711510692/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54164812_3_1711510692/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','14.4M','1.036','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/F4EE2249B924A422B4E9B235238FA9EF.apk?fsname=com.czm.byzxy_1.036.apk'),(113,4,'少年三国志','https://pp.myapp.com/ma_icon/0/icon_11778207_1711510559/128','','踏上东征之途，攻占邪马台，《少年三国志》再启程！在全新的天下战场中，挑战强大的敌人，体验战宠的力量与勇气。福星高照，丰厚福利等你来拿，每日任务奖励丰富，幻金道具满载而归。游戏更新多样趣味玩法，参与活动',0,1,'HSQ',9,'/index.php?c=show&id=113',0,0,'127.0.0.1',1711632621,1711632621,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_11778207_1_1711510556/0\",\"https://pp.myapp.com/ma_pic2/0/shot_11778207_2_1711510556/0\",\"https://pp.myapp.com/ma_pic2/0/shot_11778207_3_1711510556/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','1.61G','10.2.0','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/5E8D2A0356D1A8322CB4C45A7BE3C0D4.apk?fsname=com.tencent.tmgp.snsgz_100200.apk'),(114,4,'万国觉醒','https://pp.myapp.com/ma_icon/0/icon_54085281_1711509774/128','','《万国觉醒》创造了一个全新的战场。 世界传奇领袖在此集结，曹操、凯撒、源义经、腓特烈……人类历史上非常亮眼的璀璨明星，在这个庞大而真实的沙盘世界上相遇，集结至你的麾下。 你作为英雄们的执政官，从地图一',0,1,'HSQ',9,'/index.php?c=show&id=114',0,0,'127.0.0.1',1711632635,1711632635,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54085281_1_1711509771/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54085281_2_1711509771/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54085281_3_1711509771/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','1.43G','1.0.80.19','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/D842D09083981BBF3D9FCE96FBE83862.apk?fsname=com.lilithgames.rok.offical.cn_1.0.80.19.apk'),(115,4,'超进化物语2','https://pp.myapp.com/ma_icon/0/icon_54299159_1711508814/128','','你说得对！但是《超进化物语2》是由NTFusion自主研发的一款全新变态进化手游，游戏发生在一个被称作「超进化大陆」的幻想世界，在这里，你意外获得「超2选召计划」的参与资格，你将导引进化之力，扮演一个',0,1,'HSQ',9,'/index.php?c=show&id=115',0,0,'127.0.0.1',1711632646,1711632646,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54299159_1_1711508811/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54299159_2_1711508811/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54299159_3_1711508811/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','1.11G','1.73.2024032101S.G','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/009E6ABC4B14F79D55A352FBA383C37F.apk?fsname=com.tencent.tmgp.leiting.chaojinhua_19.apk'),(116,4,'云&middot;黑色沙漠','https://pp.myapp.com/ma_icon/0/icon_54230840_1711508681/128','','《黑色沙漠云游戏》是由腾讯先锋云游戏和《黑色沙漠》手游联合发布的云游戏体验版本。15M的超小包体即可体验完整游戏内容，免更新、不发热、低耗电，机型要求低，一键下载，立即体验！',0,1,'HSQ',9,'/index.php?c=show&id=116',0,0,'127.0.0.1',1711632658,1711632658,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54230840_1_1711508677/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54230840_2_1711508677/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54230840_3_1711508677/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','35.09M','5.0.1.4019306','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/D1947BF7D96281E4FDFB1F91B51CEE17.apk?fsname=com.tencent.gamematrix.hssm_5.0.1.4019306.apk'),(117,4,'云&middot;全民奇迹2','https://pp.myapp.com/ma_icon/0/icon_54140984_1711508502/128','','《全民奇迹2云游戏》是由腾讯先锋云游戏和《全民奇迹2》手游联合发布的云游戏体验版本。15M的超小包体即可体验完整游戏内容，免更新、不发热、低耗电，机型要求低，一键下载，立即体验！',0,1,'HSQ',9,'/index.php?c=show&id=117',0,0,'127.0.0.1',1711632670,1711632670,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54140984_1_1711508500/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54140984_2_1711508500/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54140984_3_1711508500/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','33.58M','5.0.1.4019306','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/1AEF3B32E81693B9DE451BA1FA9ACCEA.apk?fsname=com.tencent.gamematrix.tmgp.tmsk.qj3_5.0.1.4019306.apk'),(118,4,'攻城天下','https://pp.myapp.com/ma_icon/0/icon_54135682_1711508460/128','','白嫖T0级别红将！挂机还有武将打工拿元宝！！周周2W+元宝资源拿到手软！豹子头零充也能玩的很爽！更多福利尽在日常活动！全尺寸大地图，自由攻城掠地，策略兵种搭配，多样武将特色加成，和兄弟一起攻下江山！《',0,1,'HSQ',9,'/index.php?c=show&id=118',0,0,'127.0.0.1',1711632683,1711632683,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54135682_1_1711508457/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54135682_2_1711508457/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54135682_3_1711508457/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','232.25M','2.99','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/D1A384B42A56A293A5EC0C69B0F3A6F9.apk?fsname=com.tencent.tmgp.mqwgctx_20240326.apk'),(119,4,'龙与家园：时光','https://pp.myapp.com/ma_icon/0/icon_54347258_1711508415/128','','《龙与家园：时光》是一款主城自建与交易自由的多人在线沙盒游戏，既有养老模拟之意，亦有探索战斗之魂。你可以在游戏里自成一派，过上你要的诗和远方。【游戏特色】▷ 充满未知的探险 ◁在探索地图里，分布着多个',0,1,'HSQ',9,'/index.php?c=show&id=119',0,0,'127.0.0.1',1711632695,1711632695,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54347258_1_1711508411/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54347258_2_1711508411/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54347258_3_1711508411/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','1.8G','2.5.0.0','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/96C0618A84C7F2E055473A603BEBA598.apk?fsname=com.tencent.tmgp.dnh_3.apk'),(120,4,'弹弹岛2','https://pp.myapp.com/ma_icon/0/icon_42279093_1711508414/128','','《弹弹岛2》是一款治愈系，新生代休闲策略射击手游感应召唤，邂逅冒险小伙伴，育成可爱萌宠，一起与小姐姐们共结情缘！游戏有丰富的外观，在宠物系统上增加了宠物羁绊、武器系统、坐骑特效、皮肤特效。既增加了操作',0,1,'HSQ',9,'/index.php?c=show&id=120',0,0,'127.0.0.1',1711632707,1711632707,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_42279093_1_1711508411/0\",\"https://pp.myapp.com/ma_pic2/0/shot_42279093_2_1711508411/0\",\"https://pp.myapp.com/ma_pic2/0/shot_42279093_3_1711508411/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','459.87M','3.9.8','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/8744B09CFB929453EEE907022E2DD409.apk?fsname=com.tencent.tmgp.DDD2_186.apk'),(121,4,'全民象棋','https://pp.myapp.com/ma_icon/0/icon_54134793_1711507922/128','','全新无广告版《全民象棋》正式上线，为您还原最纯净的象棋对弈体验！游戏包括棋技评测、限时排位、揭棋对战、体力残局、好友对弈、观战聊天等多种玩法；对弈双方可根据自己对棋局的理解调动车马、组织兵力、协调作战',0,1,'HSQ',9,'/index.php?c=show&id=121',0,0,'127.0.0.1',1711632722,1711632722,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54134793_1_1711507919/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54134793_2_1711507919/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54134793_3_1711507919/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','114.04M','5.7.0','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/180B4BB49B28C3C31E5520AAA3848FDB.apk?fsname=com.tencent.tmgp.hchess_5007000.apk'),(122,4,'2048并并并','https://pp.myapp.com/ma_icon/0/icon_54269208_1711438401/128','','分为经典模式与降落模式，通过横向和纵向滑动移动数字图块，当两个相同数字的图块接触时，它们将合并成一个数字为它们本身2倍的新图块，一直合并道2048或4096或更大，当没有可合并的图块，且没有可移动的位',0,1,'HSQ',9,'/index.php?c=show&id=122',0,0,'127.0.0.1',1711632736,1711632736,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54269208_1_1711438399/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54269208_2_1711438399/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54269208_3_1711438399/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','34.41M','2.6.0','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/D19B2811A973C2272C6124ECF8CE0CEE.apk?fsname=com.lovejiajiao.my2048_2.6.0.apk'),(123,4,'宾果消消消-3亿人都在玩','https://pp.myapp.com/ma_icon/0/icon_11292460_1711507524/128','','《宾果消消消》,累计注册用户超过3亿,以三消+开店的形式，让国民连接在一起！2021年，3亿玩家的共同选择！早上好，下午好，晚上好各位朋友！恭喜你开启了《宾果消消消》的世界！在这里你可以体验到传统三消',0,1,'HSQ',9,'/index.php?c=show&id=123',0,0,'127.0.0.1',1711632747,1711632747,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_11292460_1_1711507522/0\",\"https://pp.myapp.com/ma_pic2/0/shot_11292460_2_1711507522/0\",\"https://pp.myapp.com/ma_pic2/0/shot_11292460_3_1711507522/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','601.35M','8.37.0.2','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/92052C693BB8B4332FB8EFCEC45C658C.apk?fsname=com.mfp.jelly.yingyongbao_837020.apk'),(124,4,'敢达决战','https://pp.myapp.com/ma_icon/0/icon_12257171_1711506621/128','','【游戏介绍】《敢达决战》为中国大陆首款授权敢达题材手游，由株式会社万代南梦宫娱乐与DeNA中国合力打造。《机动战士敢达》《机动战士Z敢达》《机动战士敢达SEED》《机动战士敢达UC》等经典人气作品悉数',0,1,'HSQ',9,'/index.php?c=show&id=124',0,0,'127.0.0.1',1711632760,1711632760,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_12257171_1_1711506618/0\",\"https://pp.myapp.com/ma_pic2/0/shot_12257171_2_1711506618/0\",\"https://pp.myapp.com/ma_pic2/0/shot_12257171_3_1711506618/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','1.62G','6.7.3','http://imtt2.dd.qq.com/sjy.00008/sjy.00002/16891/apk/A4282F56667CE5F1FD6F19A2FC81BA6D.apk?fsname=com.tencent.tmgp.g13001230_93.apk'),(125,4,'天天象棋（无障碍版）','https://pp.myapp.com/ma_icon/0/icon_54312692_1711506553/128','','天天象棋通过读屏和语音指令结合的方式来实现视障者高效流畅的对局体验。读屏是视障者进入象棋对局以及阅读棋局的基础，而语音指令则是提高视障者走子效率的方式。当前版本支持棋力评测/人机对战/好友对战等核心功',0,1,'HSQ',9,'/index.php?c=show&id=125',0,0,'127.0.0.1',1711632771,1711632771,0,'{\"file\":[\"https://pp.myapp.com/ma_pic2/0/shot_54312692_1_1711506550/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54312692_2_1711506550/0\",\"https://pp.myapp.com/ma_pic2/0/shot_54312692_3_1711506550/0\"],\"title\":[\"\",\"\",\"\"],\"description\":[\"\",\"\",\"\"]}','1','86.54M','4.2.4.8','http://imtt2.dd.qq.com/sjy.00008/sjy.00001/16891/apk/B235110C456712189FA5B54E5855D73B.apk?fsname=com.tencent.qqgame.xqwza_42408.apk');
/*!40000 ALTER TABLE `{dbprefix}1_youxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_youxi_category`
--

DROP TABLE IF EXISTS `{dbprefix}1_youxi_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_youxi_category` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所有上级id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目名称',
  `dirname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目目录',
  `pdirname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '上级目录',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有下级',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用',
  `ismain` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否主栏目',
  `childids` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '下级所有id',
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目图片',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `setting` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '属性配置',
  `displayorder` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `show` (`show`),
  KEY `disabled` (`disabled`),
  KEY `ismain` (`ismain`),
  KEY `module` (`pid`,`displayorder`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='栏目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_youxi_category`
--

LOCK TABLES `{dbprefix}1_youxi_category` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_youxi_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}1_youxi_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_youxi_category_data`
--

DROP TABLE IF EXISTS `{dbprefix}1_youxi_category_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_youxi_category_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` int(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='栏目模型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_youxi_category_data`
--

LOCK TABLES `{dbprefix}1_youxi_category_data` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_youxi_category_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}1_youxi_category_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_youxi_data_0`
--

DROP TABLE IF EXISTS `{dbprefix}1_youxi_data_0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_youxi_data_0` (
  `id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COLLATE utf8mb4_unicode_ci COMMENT '内容',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容附表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_youxi_data_0`
--

LOCK TABLES `{dbprefix}1_youxi_data_0` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_youxi_data_0` DISABLE KEYS */;
INSERT INTO `{dbprefix}1_youxi_data_0` VALUES (85,1,4,' 《金铲铲之战》是英雄联盟云顶之弈正版授权的自动战斗品类手游，每局比赛由八名玩家共同进行一场各自为战的博弈对抗，玩家通过招兵买马，融合英雄，提升战力，排兵布阵，成为最终立于战场上的赢家。<br>除了延续经典的玩法之外，还加入了快速模式、双人模式及阵容挑战赛等更多精彩内容，赶紧体验！'),(86,1,4,' 《金铲铲之战》是英雄联盟云顶之弈正版授权的自动战斗品类手游，每局比赛由八名玩家共同进行一场各自为战的博弈对抗，玩家通过招兵买马，融合英雄，提升战力，排兵布阵，成为最终立于战场上的赢家。<br>除了延续经典的玩法之外，还加入了快速模式、双人模式及阵容挑战赛等更多精彩内容，赶紧体验！'),(87,1,4,' 数字华容道，一款全新的经典的益智类型数字APP。目的是用最少的步数，最短时间将棋盘上的数字方块，按照从左到右，从上到下的顺序重新排列整齐'),(88,1,4,' 爷青回！二十年经典IP重现，通灵王大赛全面开启，麻仓叶、恐山安娜、道莲、叶王......一个个耳熟能详的角色完美还原。组建最强战队，决战帕契村，成为通灵王！经典卡牌放置玩法，人物羁绊，属性加持，炫酷技能！登陆即送超值福利，十连抽必得五星通灵师，组建你心中最完美的阵容，准备迎接世界各地通灵者的挑战吧！'),(89,1,4,' 可爱激萌的阿波在《保卫萝卜2》中开启新冒险啦！躲在暗处的小怪物们正蠢蠢欲动，但阿波一点都不怕，因为我们有全新秘密炮塔！《保卫萝卜2》是国民级手游《保卫萝卜》的续作，它除了完美继承前作轻松趣味的塔防玩法和清新Q萌的游戏画风外，更是开创了诸多新玩法！'),(90,1,4,' 五星神将遍地，零充也能躺赢！三国卡牌小游戏《武圣三国》来袭！阵营混战，魏蜀吴奇异五大阵营武将任你差遣；阵营加成，技能、装备、神通等玩法助你多维度养成阵容；随时挂机，在线护肝，轻松实现睡后升级！'),(91,1,4,' 《放开那三国3》三周年庆版本重磅来袭。全新周年庆紫金时装应约而来，全新战斗技能势必为沙场战局带来翻天覆地的变化！ 大波周年福利惊喜降临，白金战骑、白金武魂、金色神兽、金将无双选择包等珍稀道具登录签到即可领取， 超多惊喜福利尽在《放开那三国3》三周年盛典！<br><br><br>周年庆专属服开启，大小月卡免费激活；送自选武将养成包，金将、16资质红将、15资质红将任君选择助力轻松开荒；签到、冲级均有好礼相送，助力成长；魔魂塔、神兽副本、决战沙场、灵骑幻境等十多种玩法提前解锁，让你尽情玩耍嗨翻天！'),(92,1,4,' 《朕的江山2》是一款再现东方真实战场的国战策略手游。游戏采用连城式大地图设计，容纳万名玩家在地图上进行城池攻伐，谱写国战争霸独得天下的故事。<br>真实还原东方古战场，再现历史经典战役，濮阳之战、泗水之战、赤壁以少胜多；发挥你的谋略筹划，合纵连横，制胜千里之外。全服实时作战，百位武将虚位以待，千种技能自由搭配，兵种阵法不可或缺，虎符调遣重兵，亦有振奋军士之奇效；宿命相逢见对决，命数兮兮相合触发特殊合击。<br>一国对一国，一城对一城，国战攻城略地谋略至上，建江山基业扶大厦之将倾。<br>主公，一统江山霸业等你来！'),(93,1,4,' 《口袋进化》是一款宠物对战手游，在这充满神奇宠物的世界，你将化身训练家，收集养成你的宠物，一同冒险成长。<br><br>野外抓宠，培养进化<br>作为系列的经典玩法，野外抓宠必不可少，在这世界的奇妙野外邂逅未知的宠物，共同努力成长进化，前往一段美妙的冒险旅途。<br><br>玩家对战，经典回合<br>熟悉的水火草等18种属性克制，原汁原味的6V6回合战斗，合理的搭配选择你的出战宠物是获胜的关键，强力的宠物组合助你一步步战胜对手取得联盟冠军。<br><br>完美复刻，神兽再现<br>多达数百种的宠物复刻登录，更有传说中的神兽现身于神秘地点等待你去战斗捕捉。童年一同成长的宠物在等待与你再次冒险，童年错过的宠物这次一定要抓住。快来体验游戏，重回童年经典吧。<br><br>'),(94,1,4,' 四川麻将又称血战麻将，盛行于川、渝、贵，风靡全国。四川麻将（血战到底），秉承核心玩法精粹，全新UI打造流行新风尚。3D牌桌，让科技拉近距离，体验真实立体感觉！<br>地道玩法，公平赛制，让大家玩得舒心爽快！实时赛事，看雀圣花落谁家。<br><br>★★★游戏特色★★★<br><br>【一键开局】无需注册，一键直达，登录赠金币，三秒开局玩到爽！<br><br>【本色玩法】地道玩法，开局定缺，一胡到底，原汁原味，火辣刺激！<br><br>【3D特效】 3D牌桌，更真实立体，结合创新玩法，要的就是这个味！<br><br>【节流能手】超省流量，奖励多多，随时随地任性畅玩！'),(95,1,4,' 正宗真人川麻对战，网红大V强力推荐，四季常春爽不停！<br>全新胡牌特效，百变装扮上线！更有全新玩法“十二生肖”震撼来袭，快来跟网红大V一起玩！<br><br>★★★游戏特色★★★<br>【主播力荐】直播强推，十二生肖，四季常春，血流红中，邀你一起争雀圣！<br><br>【十二生肖】全新玩法，爽快体验，收集生肖牌享倍数加成，吉星高照牌运爆好！<br><br>【一键开局】一键注册，登录赠金币，三秒开局玩到爽！<br><br>【本色玩法】地道玩法，开局定缺，一胡到底，原汁原味！<br><br>【真实情境】 3D牌桌，真实立体，让你身临其境，要的就是这个味！<br><br>【节流能手】奖励多多，任你随地任性畅玩！'),(96,1,4,' 《天天爱消除》是一款以“消除烦恼，治愈心灵”为主题的萌系治愈向消除手游，陪伴玩家度过了10个寒暑！轻划手指，将三个相同的小动物旗子连成一行或一列，即可完成一次消除哦！巧妙安排消除时机，灵活运用消除道具和关卡机制，为你的消除旅程插上翅膀吧！<br>开发组目前精心制作了将近5000多个关卡，120多种丰富逗趣的关卡元素，更有冒险模式、经典模式、换装玩法、家装玩法、塔防玩法等多种游戏模式等你体验！新的游戏玩法还在不断地推出中！<br>徜徉在奇妙梦幻的梦境云海里，和暖萌国民IP大使喵星星、黄豆豆、琦琦熊、果果兔一起，运用消除的力量，把人们梦里的烦恼和愁云都清理掉！在消除联萌的暖心守护下，一起做一些甜甜的美梦吧！'),(97,1,4,' <br>泡泡的消除 当玩家主动令游戏区形成 3 个或以上的同色泡泡相连，则这些泡泡将下坠掉。 发射出一个泡泡后，必须等灯泡泡爆掉或黏附与它泡泡或顶端，才能发下一个泡泡（称为就绪），但期间可以使用道具。 泡泡的反弹 可利用两侧垂直的墙壁进行反弹，这是越过障碍击打上层泡泡的重要技巧。 消除所有的泡泡即可过关。'),(98,1,4,' 《盛世龙城》是一款微变热血高爆复古传奇手游！经典复刻、免费升V、多重福利拿到手软！挂机打怪爆神装，轻松回收，百万元宝秒到账！上线满攻速，直击灵魂的快感！游戏升级玩法无比轻松！在玩法设计上，以“升级、爆装、pk、攻沙”四大传奇经典玩法为核心，同时增加BOSS红包、王者殿堂、武道巅峰等多种精彩玩法等你来体验！斩万敌，踏苍穹，威临诸天万界！<br><br>游戏特色<br>【复古传奇】享受端游经典复刻带来的真实操作<br>【散人天堂】自由交易元宝回收助力散人打金<br>【畅快打击】攻速拉满刀刀切割一秒五刀满屏光柱<br>【炫酷神装】拉风外形酷炫装备所有神装靠打<br>【集结攻沙】兄弟集结决战沙城热血重燃激情不退'),(99,1,4,' 4亿玩家期待，异族妖气已现，全盛姿态妖王悟空降临！西游卡牌王者《少年西游记》，全新天金神将登场！三界风云变幻，只等少年出手！全新版本震撼上线！少年回归领豪礼，战力登峰一日千里！全新品质天金神将玉龙·太子、齐天·悟空、小青·小紫即将登场！【同享豪礼】活动开启，新老少年共享奖池，周年大礼，天金品质奖励拿到手软！少年前行不止，西游热血不停！一键方寸山问道，畅游三界无压力！超级神将：斗战胜佛/六耳魔罗/大日如来免费送； 登录签到：100000元宝免费送；老玩家回归奖励再度升级！热血福利带你驰骋三界！<br>超级神将：斗战胜佛/六耳魔罗/大日如来免费送； <br>【年度受期待】4亿玩家期待，96家权威游戏媒体联合推荐，爽快通关激斗，酷炫法宝合击，唯美清新画风，热闹弹幕聊天…年度爆款！'),(100,1,4,' 【游戏介绍】<br><br>《寻灵大冒险》动画官方正版手游！在高度还原动漫细节的基础上，带来全新的MOBA体验。角色与灵兽切换的战斗设计，让战场局势更加瞬息万变；美轮美奂的场景，让你尽享丛林冒险的快感；多种英雄任凭你选，神龙现世等你挑战。一血、超神、天下无双，秀翻全场！快带上喜爱的灵兽加入战场，准备激情一战吧！<br><br>【游戏特色】<br><br>1、随时畅玩<br>指尖上的MOBA游戏，10分钟享受畅爽竞技体验。风骚走位，极限微操，力压群雄！<br><br>2、创新玩法<br>角色与灵兽策略搭配，全新的对战体验。你可以任意操控灵兽或主角进行战斗，其技能相互独立，并且技能效果可相互继承，技能连招更加多变，操作体验更加爽快！<br><br>3、公平竞技<br>游戏不设养成系统，Carry全场全凭实力，呈现原滋原味的游戏乐趣！<br><br>4、神龙现世<br>动漫中神秘的龙宝宝显现真身，霸气加入战场，速来一探究竟吧！'),(101,1,4,' 《我的战争-光荣进军》是一款近现代军事题材的卡通风格模拟战争手机游戏，玩家可以选择五种各具特色的阵营部队，收集和培养传奇指挥官，亲临战场，搭配特殊精锐兵种，施展进攻与布防策略，连横合纵，争霸世界。<br>游戏以经典玩法为基石，加入了五大特色阵营体系、特色部队、各国将领和策略性十足的战场增援部队以及军团大作战等创新玩法，呈现出沉浸式战争感的新型战斗体验。<br><br>【产品特色】:<br>建设基地 策略布局<br>建造强大的基地，有策略性的布防可以让你以独特的建筑布局抵挡敌人的进攻。<br><br>经典战局 完美推演<br>各具特色的精锐部队再次登场，利用精锐部队制定策略是战术进攻的核心力量。<br><br>国家阵营 特色鲜明<br>游戏中的多个文明势力，各自拥有独一无二的特色兵种和传奇将领。沉浸式体验风格各异的战斗表现。<br><br>收集将领 立体作战<br>招募经典传奇将领，作为你的强力指挥官共同出击。不同指挥官和兵种战术的搭配，将直接影响战局的走向。<br><br>世界战场 即时攻防<br>军团决战，围绕一系列基地和资源产地的激烈争夺，在残酷的攻防拉锯战中赢得胜利，并获得丰厚奖励！'),(102,1,4,' 回合玩长安，轻松无负担！2024超人气回合捉妖手游《长安幻想》新服开启中，新手三折抽神兽，神兽岛限时捉悟空，欧皇附体一箭双雕，与我们共赴梦幻妖灵世界！<br><br>神秘代码懂的都懂！【vip666】【vip777】【vip888】<br><br>【星火联赛】第五届星火联赛火热进行中，灵师集聚，问鼎长安！<br><br>【决斗之地】全新PVP玩法来袭，长安也要有自己的江湖！<br><br>【长安有豪宅】<br>家园系统全面上线，0首付落地999㎡奢华庄园，随心配家居景观悠然自得。<br><br>【回归享惊喜】回归探险抽神兽，回归玩家享特权，开重逢礼盒得豪礼！<br><br>【新手登录礼】登录次日送程咬金，连登7日送变异天兵！'),(103,1,4,' 《欢乐斗地主云游戏》是由腾讯先锋云游戏和《欢乐斗地主》联合发布的云游戏体验版本。30M的超小包体即可体验完整游戏内容，免更新、不发热、低耗电，机型要求低，一键下载，立即体验！'),(104,1,4,' 《我叫MT Online》根据著名动漫作品《我叫MT》改编，游戏采用卡牌战斗的经典方式，还原了动漫中的人物角色性格和搞笑做派，同时把各大经典副本以独特的方式展现出来。<br>    无论你是否AFK？都可以在这里和你的朋友在一起战斗，一起下副本，以一种崭新的方式重新体验艾泽拉斯的掌中世界！'),(105,1,4,' 全景即时国战24小时开放，三百余名城关隘等你攻打，三国名臣武将为你鞍前马后，百万热血将士助你圆梦三国！开疆扩土，一将功成万骨枯！运筹帷幄，决胜于千里之外！天下制霸，江山万里皆王土！美人绝色，倾城容姿为君生！现在起，叱咤风云，一统天下！'),(106,1,4,' 《燃烧吧大脑》是一款深受多人好评的脑洞大开的全新烧脑挑战难题游戏。<br>跳出思维陷阱，释放眼力和脑力的双重压力，获得终极答案！<br>超级烧脑风暴，老少皆宜，创意大开！<br>大规模的画线创意脑筋急转弯！<br>富含趣味的关卡设计！'),(107,1,4,' 《数码宝贝：新世纪》由万代南梦宫联合奇侠互娱共同开发，是中国大陆地区首款包含原作动画剧情的手机游戏。游戏历时三年精心打磨，版权方全程紧密参与策划监修，力求将最符合IP设定、原汁原味，同时创新生态玩法的数码宝贝新世界呈现给大家。 在游戏中，你可以与海量数码宝贝搭档冒险、策略激战，开启专属于你的冒险之旅吧！'),(108,1,4,' 《秦时明月：沧海》是一款以秦时明月系列动画为架构的3D放置手游，游戏在延续原作经典剧情的同时，还将重现诸多经典场面，以及战斗场景，并通过人物专属传记的形式，重温那些令人动容的过往。<br>在《秦时明月：沧海》手游中，你既能一眼尽收桑海城的盛景，也能通关幻音叠嶂的层层阻碍，窥探到宝盒的奥秘，更能跟随天明、盖聂等人一起踏上新的征程。<br><br><br><br>== 百家争鸣 重回秦时 ==<br>通过沉浸式的剧情，重回百家争鸣的时代。于乱世之中，体验百家风华。王道、侠道你将如何选择？<br><br>== 战前策略 放置战斗 ==<br>五大阵营、五种阵型、六种职业、七种攻击范围，千变万化的战前策略，体验排兵布阵，指点江湖的乐趣。轻松的放置战斗方式，劳逸结合，享受纯粹的布阵快乐。<br><br>== 豪侠养成 多维体系 ==<br>八维立体式培养，让英雄成长不再受限于门派、职业的限制。高度自由化的多维培养体系，将还你一个自由、纯粹的武侠世界。<br><br>== 丰富玩法 江湖历练 ==<br>千机阁、蜀道迷廊、幻音叠嶂……每一次历练，都能让你获得不同感官体验。江湖之大，奇遇不断，你的秦时之旅将不再枯燥。<br><br>== 独创玩法 机关兽协作 ==<br>三五朋友共同上路，不如机关兽在旁。'),(109,1,4,' 《东方归言录》是一款以“东方Project”为原型的二次创作回合制RPG手游。由日本以动漫手办闻名的Good Smile Company（良笑社）与擅长做RPG的NextNinja共同开发。在本作中，因“LostWord”导致幻想乡发生巨大的异变，为了解决异变，东方Project中的角色们将重聚一起展开冒险。除了大家熟悉的博丽灵梦以及雾雨魔理沙，还有更多各色各样的角色登场，与她们一起携手周游幻想乡解决异变吧！'),(110,1,4,' 真意觉醒，焕燃新生，《决战！平安京》六周年版本盛大开启！全服事件开启，全新角色塑造，全新经典文化演绎，全新美术标杆打造……在《决战！平安京》，在MOBA竞技的净土之上，感受新生的磅礴力量。<br><br>「全新角色悟空降临」<br>孤身鏖战诸天神佛，一腔孤勇，胜败无惧，日月轮回，斗转星移，他终了悟——纵使天道寡情，命数不公，也要踏着万般腐朽蓬勃而活。全新原创式神悟空降临平安京战场，感受悟空踏碎云霄，参悟天道的新生。<br><br>「帝释天全新典藏皮肤登场」<br>化作阆苑仙葩，以不一样的视角泛舟于太虚幻境，体味十二金钗的悲欢人生，方知世境浮沉流水，算来一梦浮生。帝释天全新典藏皮肤「故梦逐流」华丽登场。传承千古奇书《红楼梦》的极致美学，以古典写意之美雕琢梦幻绮丽的特效，感受红楼梦悲喜交织，大梦如空的新生。<br><br>「全新趣味萌宠助战玩法来袭」<br>和憨态可掬的激萌跟宠一同作战？还可体验刺激的多人混战？更有丰富的随机强化效果与别出心裁的特殊战斗机制？没错！尽情享受吧，享受趣味十足的酣畅战斗，凭借战术策略及对战能力勇夺冠军！全新趣味玩法「萌宠大作战」来袭，感受玩法创新、欢乐升级的新生。<br>'),(111,1,4,' 《阴阳师：妖怪屋》是一款基于阴阳师IP的萌系云养妖手游。<br>家主大人将在奇妙的剪纸庭院中照看妖怪们的生活起居，还将与各式Q弹妖怪并肩作战…优哉游哉的和风妖怪，轻松休闲的个性养成，趣味无穷的庭院互动，带你体验妖怪屋的奇趣生活！'),(112,1,4,' 天天猜字谜，根据汉字的造字规律，或汉字的音、形、义等某些特点编写的谜语.<br>感受中华文字结构变化，趣味盎然、老少皆宜.<br>锻炼多角度思考问题，帮助你破除固有思维，培养灵活多变的思维方式.<br>谜底答疑，让你知道为什么会是这个谜底.<br>经常练习，你的智力水平和思维能力都会得到质的飞跃.<br>更有海量趣味脑筋急转弯题目.'),(113,1,4,' 踏上东征之途，攻占邪马台，《少年三国志》再启程！在全新的天下战场中，挑战强大的敌人，体验战宠的力量与勇气。福星高照，丰厚福利等你来拿，每日任务奖励丰富，幻金道具满载而归。游戏更新多样趣味玩法，参与活动赢取超值奖励，与众多玩家一同探索九州风云，共创辉煌！'),(114,1,4,' 《万国觉醒》创造了一个全新的战场。 世界传奇领袖在此集结，曹操、凯撒、源义经、腓特烈……人类历史上非常亮眼的璀璨明星，在这个庞大而真实的沙盘世界上相遇，集结至你的麾下。 你作为英雄们的执政官，从地图一隅起家，探索战争迷雾，集结联盟军团； 随着实力增长，你将和同盟一起征战圣所，据守要塞划分领地，称霸一方； 当迷雾隐去，世界全貌显现，巨大战争棋局呈现于眼前，强敌环绕周遭，或联合或征伐，人人皆渴望争霸世界中心神庙王座。 纵横捭阖之间，剑所指的方向，乃是万国之巅。 欲通往王座，你不仅需要具备宏观战略视野，同样也要善于临场战术指挥——《万国觉醒》模仿真实战争逻辑，自由行军即时战斗，军队可自由控制在地图上任意行进、驻扎，遇敌可临时开战，若局势不对也可撤兵脱战。自由行军操作带来丰富的战术演绎空间，使每一场战斗都充满变数！'),(115,1,4,' 你说得对！但是《超进化物语2》是由NTFusion自主研发的一款全新变态进化手游，游戏发生在一个被称作「超进化大陆」的幻想世界，在这里，你意外获得「超2选召计划」的参与资格，你将导引进化之力，扮演一个名为「探索者」的神秘角色，在不太自由的消红点之旅中见识到千奇百怪、有点变态的进化，养成自己的怪兽小队一起进化击败强敌，阻止世界被重置——同时，逐步发掘「世界进化」的真相。……后面忘了……总而言之，若想要尝试这些离谱进化的探险者们，这款可以进化出超多形态的、超有梗超有趣超变态的进化手游，千万不要错过！'),(116,1,4,' 《黑色沙漠云游戏》是由腾讯先锋云游戏和《黑色沙漠》手游联合发布的云游戏体验版本。15M的超小包体即可体验完整游戏内容，免更新、不发热、低耗电，机型要求低，一键下载，立即体验！'),(117,1,4,' 《全民奇迹2云游戏》是由腾讯先锋云游戏和《全民奇迹2》手游联合发布的云游戏体验版本。15M的超小包体即可体验完整游戏内容，免更新、不发热、低耗电，机型要求低，一键下载，立即体验！'),(118,1,4,' 白嫖T0级别红将！挂机还有武将打工拿元宝！！周周2W+元宝资源拿到手软！豹子头零充也能玩的很爽！更多福利尽在日常活动！<br>全尺寸大地图，自由攻城掠地，策略兵种搭配，多样武将特色加成，和兄弟一起攻下江山！《攻城天下》带你重温三国经典战役，运筹帷幄，成为君主招兵买马，即时控制战局，搭配武将，是真三国！武将和国战都重要！'),(119,1,4,' 《龙与家园：时光》是一款主城自建与交易自由的多人在线沙盒游戏，既有养老模拟之意，亦有探索战斗之魂。你可以在游戏里自成一派，过上你要的诗和远方。<br><br>【游戏特色】<br><br>▷ 充满未知的探险 ◁<br>在探索地图里，分布着多个独立而神秘的世界，你可以在这里自由穿梭，采集与收获一切你所需要的内容。每个世界的角落隐藏着神秘的boss秘境，秘境里设置着各种机关，等着你一一挑战。你所穿戴的装备武器决定了你的职业与技能，通过装备的随意切换，玩转法师、战士、猎户三种职业。战斗装备都可通过附魔、点亮技能天赋等行为进行强化升级，让你在探索过程中游刃有余。<br><br>▷ 体验慢节揍休闲生活 ◁<br>如果你向往美好的田园生活，不如让生活慢下来，享受难得的悠闲时光。<br>你可以悉心呵护你的田地，撒种、浇水、施肥，除虫，静待开花结果。也可以带上鱼竿，和朋友们在湖畔边做一个自在的钓鱼翁。<br><br>▷ 多人共建家园<br>作为支持多人在线的社交沙盒游戏，你可以施展你的建造才能，在游戏里与小伙伴们共建家园，打造一个属于你们自己的乌邦托。你的理想家园可以是一座地中海风格的海边度假村、慵懒惬意的日式温泉镇、精致奢华的中式宫殿。'),(120,1,4,' 《弹弹岛2》是一款治愈系，新生代休闲策略射击手游<br>感应召唤，邂逅冒险小伙伴，育成可爱萌宠，一起与小姐姐们共结情缘！<br>游戏有丰富的外观，在宠物系统上增加了宠物羁绊、武器系统、坐骑特效、皮肤特效。既增加了操作性，又丰富了游戏的策略性，让玩家以轻松的操作，体验爽快的策略玩法'),(121,1,4,' 全新无广告版《全民象棋》正式上线，为您还原最纯净的象棋对弈体验！<br>游戏包括棋技评测、限时排位、揭棋对战、体力残局、好友对弈、观战聊天等多种玩法；对弈双方可根据自己对棋局的理解调动车马、组织兵力、协调作战。<br>海量棋友实时在线，比赛互动欢乐有趣，木制棋盘精美雅致，立体棋子逼真考究，快来探索全新的象棋世界！<br>游戏玩法介绍：<br>【棋技博弈】快速匹配对手，与各地棋友切磋棋艺，评测双方的棋力等级；<br>【限时赛季】大脑风暴限制思考时间，挑战自己，推进局面；<br>【揭棋挑战】运气与智力的对决，体验与传统象棋完全不同的对弈乐趣；<br>【体力残局】体力限制搭配千古残局，脑力风暴就在其中；<br>【好友对弈】邀请好友自定义玩法，感受突破常规的独特象棋；<br>【人机对弈】多种难度AI选择，棋友们可韬光养晦，自行打磨棋艺；<br>【大师观战】觉得自己棋艺不精？顶级棋手正在直播，前往观战，领教高招！'),(122,1,4,' 分为经典模式与降落模式，<br>通过横向和纵向滑动移动数字图块，当两个相同数字的图块接触时，它们将合并成一个数字为它们本身2倍的新图块，一直合并道2048或4096或更大，当没有可合并的图块，且没有可移动的位置时，玩家失败。可以撤销，可以使用道具。'),(123,1,4,' 《宾果消消消》,累计注册用户超过3亿,以三消+开店的形式，让国民连接在一起！<br>2021年，3亿玩家的共同选择！<br>早上好，下午好，晚上好各位朋友！恭喜你开启了《宾果消消消》的世界！<br>在这里你可以体验到传统三消游戏的独特魅力。<br>我们有超60个有趣的棋子玩法，超5500个精致的主线关卡；<br>可以随意搭配组合的超实用道具、组合技，炫酷的连招特效。<br>还有定期推出的特殊副本、周赛和冲榜活动，轻松产出超多道具。<br>总结一句话就是：紧张刺激不费脑，轻松愉快不无聊！<br> <br>三消之外，你可能想不到，在这里还可以体验到：<br>翻新海景别墅，独享整片海滩的那种；<br>修饰豪华轮船，电影里看到过的那种；<br> <br>开一家奶茶店，青梅竹马每天见的那种；<br>开一家蛋糕店，姐妹花联手创业的那种；<br> <br>和胖女巫斗智，只动口不动手的那种；<br>和小怪兽斗勇，光挨打不还手的那种；<br> <br>设计专属小屋，异空间特神奇的那种；<br> <br>快来下载体验吧，上瘾有趣不粘人的那种！'),(124,1,4,' 【游戏介绍】<br>《敢达决战》为中国大陆首款授权敢达题材手游，由株式会社万代南梦宫娱乐与DeNA中国合力打造。《机动战士敢达》《机动战士Z敢达》《机动战士敢达SEED》《机动战士敢达UC》等经典人气作品悉数登场。历代敢达机体机师大集结，武器数据中心、联合作战、机师挑战，多种策略玩法，高度还原一个真实而经典的敢达世界。每一台主战机体都有独特动作和酷炫大招，配合专属队长技合体技，弹指间逆转战场形势。升级进阶，机师培养，打造专属于你的机动战士部队。<br><br>《敢达决战》全新2.0版本开启新纪元！殖民卫星重建完毕，主城焕新，王牌指挥官准备作战！美术升级，界面优化，体验全新游戏世界，机体重塑，必杀技能效果燃炸全场， 联合作战开启，宇宙对抗，全局预览运筹帷幄！《敢达决战》2.0等你来探索。'),(125,1,4,' 天天象棋通过读屏和语音指令结合的方式来实现视障者高效流畅的对局体验。读屏是视障者进入象棋对局以及阅读棋局的基础，而语音指令则是提高视障者走子效率的方式。当前版本支持棋力评测/人机对战/好友对战等核心功能，希望未来有更多视障棋友能体验到中国象棋带来的乐趣。');
/*!40000 ALTER TABLE `{dbprefix}1_youxi_data_0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_youxi_draft`
--

DROP TABLE IF EXISTS `{dbprefix}1_youxi_draft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_youxi_draft` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '具体内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `catid` (`catid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容草稿表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_youxi_draft`
--

LOCK TABLES `{dbprefix}1_youxi_draft` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_youxi_draft` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}1_youxi_draft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_youxi_flag`
--

DROP TABLE IF EXISTS `{dbprefix}1_youxi_flag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_youxi_flag` (
  `flag` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '文档标记id',
  `id` int(10) unsigned NOT NULL COMMENT '文档内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  KEY `flag` (`flag`,`id`,`uid`),
  KEY `catid` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='标记表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_youxi_flag`
--

LOCK TABLES `{dbprefix}1_youxi_flag` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_youxi_flag` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}1_youxi_flag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_youxi_hits`
--

DROP TABLE IF EXISTS `{dbprefix}1_youxi_hits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_youxi_hits` (
  `id` int(10) unsigned NOT NULL COMMENT '文章id',
  `hits` int(10) unsigned NOT NULL COMMENT '总点击数',
  `day_hits` int(10) unsigned NOT NULL COMMENT '本日点击',
  `week_hits` int(10) unsigned NOT NULL COMMENT '本周点击',
  `month_hits` int(10) unsigned NOT NULL COMMENT '本月点击',
  `year_hits` int(10) unsigned NOT NULL COMMENT '年点击量',
  `day_time` int(10) unsigned NOT NULL COMMENT '本日',
  `week_time` int(10) unsigned NOT NULL COMMENT '本周',
  `month_time` int(10) unsigned NOT NULL COMMENT '本月',
  `year_time` int(10) unsigned NOT NULL COMMENT '年',
  UNIQUE KEY `id` (`id`),
  KEY `day_hits` (`day_hits`),
  KEY `week_hits` (`week_hits`),
  KEY `month_hits` (`month_hits`),
  KEY `year_hits` (`year_hits`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='时段点击量统计';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_youxi_hits`
--

LOCK TABLES `{dbprefix}1_youxi_hits` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_youxi_hits` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}1_youxi_hits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_youxi_index`
--

DROP TABLE IF EXISTS `{dbprefix}1_youxi_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_youxi_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(2) NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容索引表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_youxi_index`
--

LOCK TABLES `{dbprefix}1_youxi_index` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_youxi_index` DISABLE KEYS */;
INSERT INTO `{dbprefix}1_youxi_index` VALUES (85,1,4,9,1711631697),(86,1,4,9,1711632283),(87,1,4,9,1711632294),(88,1,4,9,1711632305),(89,1,4,9,1711632318),(90,1,4,9,1711632333),(91,1,4,9,1711632344),(92,1,4,9,1711632359),(93,1,4,9,1711632373),(94,1,4,9,1711632385),(95,1,4,9,1711632395),(96,1,4,9,1711632406),(97,1,4,9,1711632420),(98,1,4,9,1711632433),(99,1,4,9,1711632443),(100,1,4,9,1711632454),(101,1,4,9,1711632467),(102,1,4,9,1711632481),(103,1,4,9,1711632492),(104,1,4,9,1711632508),(105,1,4,9,1711632518),(106,1,4,9,1711632531),(107,1,4,9,1711632545),(108,1,4,9,1711632557),(109,1,4,9,1711632569),(110,1,4,9,1711632582),(111,1,4,9,1711632597),(112,1,4,9,1711632609),(113,1,4,9,1711632621),(114,1,4,9,1711632635),(115,1,4,9,1711632646),(116,1,4,9,1711632658),(117,1,4,9,1711632670),(118,1,4,9,1711632683),(119,1,4,9,1711632695),(120,1,4,9,1711632707),(121,1,4,9,1711632722),(122,1,4,9,1711632736),(123,1,4,9,1711632747),(124,1,4,9,1711632760),(125,1,4,9,1711632771);
/*!40000 ALTER TABLE `{dbprefix}1_youxi_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_youxi_recycle`
--

DROP TABLE IF EXISTS `{dbprefix}1_youxi_recycle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_youxi_recycle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '具体内容',
  `result` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '删除理由',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `catid` (`catid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容回收站表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_youxi_recycle`
--

LOCK TABLES `{dbprefix}1_youxi_recycle` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_youxi_recycle` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}1_youxi_recycle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_youxi_search`
--

DROP TABLE IF EXISTS `{dbprefix}1_youxi_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_youxi_search` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '参数数组',
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '关键字',
  `contentid` int(10) unsigned NOT NULL COMMENT '字段改成了结果数量值',
  `inputtime` int(10) unsigned NOT NULL COMMENT '搜索时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `catid` (`catid`),
  KEY `keyword` (`keyword`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='搜索表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_youxi_search`
--

LOCK TABLES `{dbprefix}1_youxi_search` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_youxi_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}1_youxi_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_youxi_time`
--

DROP TABLE IF EXISTS `{dbprefix}1_youxi_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_youxi_time` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '具体内容',
  `result` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '处理结果',
  `posttime` int(10) unsigned NOT NULL COMMENT '定时发布时间',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `posttime` (`posttime`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容定时发布表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_youxi_time`
--

LOCK TABLES `{dbprefix}1_youxi_time` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_youxi_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}1_youxi_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}1_youxi_verify`
--

DROP TABLE IF EXISTS `{dbprefix}1_youxi_verify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}1_youxi_verify` (
  `id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `vid` tinyint(2) NOT NULL COMMENT '审核id号',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '是否新增',
  `islock` tinyint(1) unsigned NOT NULL COMMENT '是否锁定',
  `author` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '作者',
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(2) NOT NULL COMMENT '审核状态',
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `vid` (`vid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容审核表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}1_youxi_verify`
--

LOCK TABLES `{dbprefix}1_youxi_verify` WRITE;
/*!40000 ALTER TABLE `{dbprefix}1_youxi_verify` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}1_youxi_verify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}admin`
--

DROP TABLE IF EXISTS `{dbprefix}admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}admin` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '管理员uid',
  `setting` mediumtext COLLATE utf8mb4_unicode_ci COMMENT '相关配置',
  `usermenu` text COLLATE utf8mb4_unicode_ci COMMENT '自定义面板菜单，序列化数组格式',
  `history` text COLLATE utf8mb4_unicode_ci COMMENT '历史菜单，序列化数组格式',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}admin`
--

LOCK TABLES `{dbprefix}admin` WRITE;
/*!40000 ALTER TABLE `{dbprefix}admin` DISABLE KEYS */;
INSERT INTO `{dbprefix}admin` VALUES (1,1,'{\"admin_min\":0}','',NULL);
/*!40000 ALTER TABLE `{dbprefix}admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}admin_login`
--

DROP TABLE IF EXISTS `{dbprefix}admin_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}admin_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned DEFAULT NULL COMMENT '会员uid',
  `loginip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '登录Ip',
  `logintime` int(10) unsigned NOT NULL COMMENT '登录时间',
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '客户端信息',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `loginip` (`loginip`),
  KEY `logintime` (`logintime`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='登录日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}admin_login`
--

LOCK TABLES `{dbprefix}admin_login` WRITE;
/*!40000 ALTER TABLE `{dbprefix}admin_login` DISABLE KEYS */;
INSERT INTO `{dbprefix}admin_login` VALUES (1,1,'125.84.163.116',1711597816,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36'),(2,1,'125.84.69.31',1711630956,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36'),(3,1,'125.84.69.31',1711689907,'Mozilla/5.0 (Windows NT 10.0 Win64 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36');
/*!40000 ALTER TABLE `{dbprefix}admin_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}admin_menu`
--

DROP TABLE IF EXISTS `{dbprefix}admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}admin_menu` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL COMMENT '上级菜单id',
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单语言名称',
  `site` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '站点归属',
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'uri字符串',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '外链地址',
  `mark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '菜单标识',
  `hidden` tinyint(1) unsigned DEFAULT NULL COMMENT '是否隐藏',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图标标示',
  `displayorder` int(5) DEFAULT NULL COMMENT '排序值',
  PRIMARY KEY (`id`),
  KEY `list` (`pid`),
  KEY `displayorder` (`displayorder`),
  KEY `mark` (`mark`),
  KEY `hidden` (`hidden`),
  KEY `uri` (`uri`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}admin_menu`
--

LOCK TABLES `{dbprefix}admin_menu` WRITE;
/*!40000 ALTER TABLE `{dbprefix}admin_menu` DISABLE KEYS */;
INSERT INTO `{dbprefix}admin_menu` VALUES (1,0,'首页','','','','home',0,'fa fa-home',-2),(2,1,'我的面板','','','','home-my',0,'fa fa-home',0),(3,2,'后台首页','','home/main','','',0,'fa fa-home',0),(4,2,'资料修改','','api/my','','',0,'fa fa-user',0),(5,2,'系统更新','','cache/index','','',0,'fa fa-refresh',0),(6,2,'应用市场','','api/app','','',0,'fa fa-puzzle-piece',0),(7,0,'系统','','','','system',0,'fa fa-globe',-2),(8,7,'系统维护','','','','system-wh',0,'fa fa-cog',0),(9,8,'系统参数','','system/index','','',0,'fa fa-cog',0),(10,8,'系统缓存','','system_cache/index','','',0,'fa fa-clock-o',0),(11,8,'附件设置','','attachment/index','','',0,'fa fa-folder',0),(12,8,'存储策略','','attachment/remote_index','','',0,'fa fa-cloud',0),(13,8,'短信设置','','sms/index','','',0,'fa fa-envelope',0),(14,8,'邮件设置','','email/index','','',0,'fa fa-envelope-open',0),(15,8,'系统提醒','','notice/index','','',0,'fa fa-bell',0),(16,8,'系统体检','','check/index','','',0,'fa fa-wrench',0),(17,7,'日志管理','','','','system-log',0,'fa fa-calendar',0),(18,17,'系统日志','','error/index','','',0,'fa fa-shield',0),(19,17,'操作记录','','system_log/index','','',0,'fa fa-calendar',0),(20,17,'密码错误','','password_log/index','','',0,'fa fa-unlock-alt',0),(21,17,'短信错误','','sms_log/index','','',0,'fa fa-envelope',0),(22,17,'邮件错误','','email_log/index','','',0,'fa fa-envelope-open',0),(23,17,'慢查询日志','','sql_log/index','','',0,'fa fa-database',0),(24,0,'设置','','','','config',0,'fa fa-cogs',-2),(25,24,'网站设置','','','','config-web',0,'fa fa-cog',0),(27,25,'网站设置','','module/site_config/index','','',0,'fa fa-cog',0),(28,25,'网站信息','','module/site_param/index','','',0,'fa fa-edit',0),(29,25,'手机设置','','module/site_mobile/index','','',0,'fa fa-mobile',0),(30,25,'域名绑定','','module/site_domain/index','','',0,'fa fa-globe',0),(31,25,'图片设置','','module/site_image/index','','',0,'fa fa-photo',0),(32,24,'内容设置','','','','config-content',0,'fa fa-navicon',0),(33,32,'创建模块','','module/module_create/index','','',0,'fa fa-plus',-1),(34,32,'模块管理','','module/module/index','','',0,'fa fa-gears',-1),(35,32,'模块搜索','','module/module_search/index','','',0,'fa fa-search',-1),(36,24,'SEO设置','','','','config-seo',0,'fa fa-internet-explorer',0),(37,36,'站点SEO','','module/seo_site/index','','',0,'fa fa-cog',0),(38,36,'模块SEO','','module/seo_module/index','','',0,'fa fa-th-large',0),(39,36,'栏目SEO','','module/seo_category/index','','',0,'fa fa-reorder',0),(40,36,'URL规则','','module/urlrule/index','','',0,'fa fa-link',0),(41,36,'伪静态解析','','module/urlrule/rewrite_index','','',0,'bi bi-code-square',0),(42,0,'权限','','','','auth',0,'fa fa-user-circle',0),(43,42,'后台权限','','','','auth-admin',0,'fa fa-cog',0),(44,43,'后台菜单','','menu/index','','',0,'fa fa-list-alt',0),(45,43,'简化菜单','','min_menu/index','','',0,'fa fa-list',0),(46,43,'角色权限','','role/index','','',0,'fa fa-users',0),(47,43,'角色账号','','root/index','','',0,'fa fa-user',0),(48,42,'用户权限','','','','app-member',0,'fa fa-user',0),(49,48,'审核流程','','member/admin_verify/index','','',0,'fa fa-sort-numeric-asc',0),(50,48,'用户菜单','','member/menu/index','','',0,'fa fa-list-alt',0),(51,48,'用户权限','','member/auth/index','','',0,'fa fa-user',0),(52,0,'应用','','','','app',0,'fa fa-puzzle-piece',0),(53,52,'应用插件','','','','app-plugin',0,'fa fa-puzzle-piece',0),(54,53,'应用管理','','cloud/local','','',0,'fa fa-folder',0),(55,53,'联动菜单','','linkage/index','','',0,'fa fa-columns',0),(56,53,'任务队列','','cron/index','','',0,'fa fa-indent',0),(57,53,'附件管理','','attachments/index','','',0,'fa fa-folder',0),(58,52,'模板调用工具','','','','app-mbdy',0,'fa fa-tag',0),(59,58,'字段调用标签','','mbdy/home/index','','',0,'fa fa-list',0),(60,58,'页面标签调用','','mbdy/page/index','','',0,'fa fa-list',0),(61,58,'循环标签调用','','mbdy/loop/index','','',0,'fa fa-list',0),(62,58,'内容搜索条件','','mbdy/search/index','','',0,'fa fa-search',0),(63,0,'服务','','','','cloud',0,'fa fa-cloud',99),(64,63,'项目服务','','','','cloud-dayrui',0,'fa fa-cloud',0),(65,64,'我的项目','','cloud/index','','',0,'fa fa-cog',0),(66,64,'服务工单','','cloud/service','','',0,'fa fa-user-md',0),(67,64,'应用商城','','cloud/app','','',0,'fa fa-puzzle-piece',0),(68,64,'模板商城','','cloud/template','','',0,'fa fa-html5',0),(69,64,'版本升级','','cloud/update','','',0,'fa fa-refresh',0),(70,64,'文件对比','','cloud/bf','','',0,'fa fa-code',0),(71,0,'内容','','','','content',0,'fa fa-th-large',-1),(72,71,'内容管理','','','','content-module',0,'fa fa-th-large',0),(73,72,'共享栏目','','category/index','','',0,'fa fa-reorder',0),(74,71,'内容审核','','','','content-verify',0,'fa fa-edit',0),(75,0,'用户','','','','member',0,'fa fa-user',0),(76,75,'用户管理','','','','member-list',0,'fa fa-user',0),(77,76,'用户管理','','member/home/index','','',0,'fa fa-user',-1),(78,76,'用户组管理','','member/group/index','','',0,'fa fa-users',-1),(79,76,'授权账号管理','','member/oauth/index','','',0,'fa fa-qq',0),(80,75,'用户设置','','','','config-member',0,'fa fa-user',0),(81,80,'用户设置','','member/setting/index','','',0,'fa fa-cog',0),(82,80,'字段划分','','member/field/index','','',0,'fa fa-code',0),(83,80,'通知设置','','member/setting_notice/index','','',0,'fa fa-volume-up',0),(84,75,'审核管理','','','','member-verify',0,'fa fa-edit',0),(85,84,'注册审核','','member/verify/index','','',0,'fa fa-user',0),(86,84,'申请审核','','member/apply/index','','',0,'fa fa-users',0),(87,84,'资料审核','','member/edit_verify/index','','',0,'fa fa-edit',0),(88,84,'头像审核','','member/avatar_verify/index','','',0,'fa fa-user-circle',0),(89,0,'界面','','','','code',0,'fa fa-html5',0),(90,89,'模板管理','','','','code-html',0,'fa fa-home',0),(91,90,'电脑模板','','tpl/tpl_pc/index','','',0,'fa fa-desktop',0),(92,90,'手机模板','','tpl/tpl_mobile/index','','',0,'fa fa-mobile',0),(93,90,'终端模板','','tpl/tpl_client/index','','',0,'fa fa-cogs',0),(94,89,'风格管理','','','','code-css',0,'fa fa-css3',99),(95,94,'系统文件','','tpl/system_theme/index','','',0,'fa fa-chrome',0),(96,94,'项目风格','','tpl/theme/index','','',0,'fa fa-photo',0),(97,72,'文章管理','','news/home/index','','module-news',0,'fa fa-code',-1),(98,74,'文章审核','','news/verify/index','','verify-module-news',0,'fa fa-code',-1),(99,72,'软件管理','','ruanjian/home/index','','module-ruanjian',0,'fa fa-code',-1),(100,74,'软件审核','','ruanjian/verify/index','','verify-module-ruanjian',0,'fa fa-code',-1),(101,72,'游戏管理','','youxi/home/index','','module-youxi',0,'fa fa-code',-1),(102,74,'游戏审核','','youxi/verify/index','','verify-module-youxi',0,'fa fa-code',-1),(103,52,'关键词库','','','','app-tag',0,'fa fa-tags',0),(104,103,'词库管理','','tag/home/index','','app-tag-104',0,'fa fa-tags',0),(105,103,'插件设置','','tag/config/index','','app-tag-105',0,'fa fa-cog',0),(107,53,'全站搜索','','so/config/index','','app-so-107',0,'fa fa-search',0);
/*!40000 ALTER TABLE `{dbprefix}admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}admin_min_menu`
--

DROP TABLE IF EXISTS `{dbprefix}admin_min_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}admin_min_menu` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL COMMENT '上级菜单id',
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单语言名称',
  `site` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '站点归属',
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'uri字符串',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '外链地址',
  `mark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '菜单标识',
  `hidden` tinyint(1) unsigned DEFAULT NULL COMMENT '是否隐藏',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图标标示',
  `displayorder` int(5) DEFAULT NULL COMMENT '排序值',
  PRIMARY KEY (`id`),
  KEY `list` (`pid`),
  KEY `displayorder` (`displayorder`),
  KEY `mark` (`mark`),
  KEY `hidden` (`hidden`),
  KEY `uri` (`uri`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台简化菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}admin_min_menu`
--

LOCK TABLES `{dbprefix}admin_min_menu` WRITE;
/*!40000 ALTER TABLE `{dbprefix}admin_min_menu` DISABLE KEYS */;
INSERT INTO `{dbprefix}admin_min_menu` VALUES (1,0,'我的面板','','','','home',0,'fa fa-home',0),(2,1,'后台首页','','home/main','','1-0',0,'fa fa-home',0),(3,1,'资料修改','','api/my','','1-1',0,'fa fa-user',0),(4,1,'网站设置','','module/site_param/index','','1-2',0,'fa fa-cog',0),(5,1,'图片设置','','module/site_image/index','','1-3',0,'fa fa-photo',0),(6,0,'应用插件','','','','app-plugin',0,'fa fa-puzzle-piece',0),(7,6,'联动菜单','','linkage/index','','6-0',0,'fa fa-columns',0),(8,6,'附件管理','','attachments/index','','6-1',0,'fa fa-folder',0),(9,0,'SEO设置','','','','config-seo',0,'fa fa-internet-explorer',0),(10,9,'站点SEO','','module/seo_site/index','','9-0',0,'fa fa-cog',0),(11,9,'模块SEO','','module/seo_module/index','','9-1',0,'fa fa-gears',0),(12,9,'栏目SEO','','module/seo_category/index','','9-2',0,'fa fa-reorder',0),(13,9,'URL规则','','module/urlrule/index','','9-3',0,'fa fa-link',0),(14,0,'内容管理','','','','content-module',0,'fa fa-th-large',0),(15,14,'共享栏目','','category/index','','14-0',0,'fa fa-reorder',0),(16,14,'文章管理','','news/home/index','','module-news',0,'fa fa-code',-1),(17,14,'软件管理','','ruanjian/home/index','','module-ruanjian',0,'fa fa-code',-1),(18,14,'游戏管理','','youxi/home/index','','module-youxi',0,'fa fa-code',-1);
/*!40000 ALTER TABLE `{dbprefix}admin_min_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}admin_notice`
--

DROP TABLE IF EXISTS `{dbprefix}admin_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}admin_notice` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `site` int(5) NOT NULL COMMENT '站点id',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '提醒类型：系统、内容、会员、应用',
  `msg` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '提醒内容说明',
  `uri` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '对应的URI',
  `to_rid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '指定角色组',
  `to_uid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '指定管理员',
  `status` tinyint(1) NOT NULL COMMENT '未处理0，1已查看，2处理中，3处理完成',
  `uid` int(10) NOT NULL COMMENT '申请人',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '申请人',
  `op_uid` int(10) NOT NULL COMMENT '处理人',
  `op_username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '处理人',
  `updatetime` int(10) NOT NULL COMMENT '处理时间',
  `inputtime` int(10) NOT NULL COMMENT '提醒时间',
  PRIMARY KEY (`id`),
  KEY `uri` (`uri`),
  KEY `site` (`site`),
  KEY `status` (`status`),
  KEY `uid` (`uid`),
  KEY `op_uid` (`op_uid`),
  KEY `to_uid` (`to_uid`),
  KEY `to_rid` (`to_rid`),
  KEY `updatetime` (`updatetime`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台提醒表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}admin_notice`
--

LOCK TABLES `{dbprefix}admin_notice` WRITE;
/*!40000 ALTER TABLE `{dbprefix}admin_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}admin_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}admin_role`
--

DROP TABLE IF EXISTS `{dbprefix}admin_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}admin_role` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `site` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '允许管理的站点，序列化数组格式',
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色组语言名称',
  `system` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '系统权限',
  `module` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模块权限',
  `application` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '应用权限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台角色权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}admin_role`
--

LOCK TABLES `{dbprefix}admin_role` WRITE;
/*!40000 ALTER TABLE `{dbprefix}admin_role` DISABLE KEYS */;
INSERT INTO `{dbprefix}admin_role` VALUES (1,'','超级管理员','','',''),(2,'','编辑员','','','');
/*!40000 ALTER TABLE `{dbprefix}admin_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}admin_role_index`
--

DROP TABLE IF EXISTS `{dbprefix}admin_role_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}admin_role_index` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned DEFAULT NULL COMMENT '会员uid',
  `roleid` mediumint(8) unsigned DEFAULT NULL COMMENT '角色组id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `roleid` (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台角色组分配表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}admin_role_index`
--

LOCK TABLES `{dbprefix}admin_role_index` WRITE;
/*!40000 ALTER TABLE `{dbprefix}admin_role_index` DISABLE KEYS */;
INSERT INTO `{dbprefix}admin_role_index` VALUES (1,1,1);
/*!40000 ALTER TABLE `{dbprefix}admin_role_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}admin_setting`
--

DROP TABLE IF EXISTS `{dbprefix}admin_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}admin_setting` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统属性参数表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}admin_setting`
--

LOCK TABLES `{dbprefix}admin_setting` WRITE;
/*!40000 ALTER TABLE `{dbprefix}admin_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}admin_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}admin_verify`
--

DROP TABLE IF EXISTS `{dbprefix}admin_verify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}admin_verify` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `verify` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '审核部署',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='审核管理表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}admin_verify`
--

LOCK TABLES `{dbprefix}admin_verify` WRITE;
/*!40000 ALTER TABLE `{dbprefix}admin_verify` DISABLE KEYS */;
INSERT INTO `{dbprefix}admin_verify` VALUES (1,'默认审核','{\"edit\":\"1\",\"role\":{\"1\":\"2\"}}');
/*!40000 ALTER TABLE `{dbprefix}admin_verify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}attachment`
--

DROP TABLE IF EXISTS `{dbprefix}attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}attachment` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '会员id',
  `author` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '会员',
  `siteid` mediumint(5) unsigned NOT NULL COMMENT '站点id',
  `related` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '相关表标识',
  `tableid` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '附件副表id',
  `download` mediumint(8) NOT NULL DEFAULT '0' COMMENT '无用保留',
  `filesize` int(10) unsigned NOT NULL COMMENT '文件大小',
  `fileext` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件扩展名',
  `filemd5` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件md5值',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `author` (`author`),
  KEY `relatedtid` (`related`),
  KEY `fileext` (`fileext`),
  KEY `filemd5` (`filemd5`),
  KEY `siteid` (`siteid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='附件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}attachment`
--

LOCK TABLES `{dbprefix}attachment` WRITE;
/*!40000 ALTER TABLE `{dbprefix}attachment` DISABLE KEYS */;
INSERT INTO `{dbprefix}attachment` VALUES (1,1,'',1,'rand',1,0,201631,'png','37caa25badd45a9e8f325d0c8fcdfeb1'),(2,1,'',1,'rand',1,0,3206,'webp','833295ba7047b04020a4355732311a62'),(3,1,'',1,'rand',1,0,21522,'webp','28b9a381f4a64b417a7d0ca104decd34'),(4,1,'',1,'rand',1,0,39630,'webp','99423552328ba993a290bd20341e687a'),(5,1,'',1,'rand',1,0,28888,'webp','2e24e83e21600c2f6ff454db1333fc04');
/*!40000 ALTER TABLE `{dbprefix}attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}attachment_data`
--

DROP TABLE IF EXISTS `{dbprefix}attachment_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}attachment_data` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '会员',
  `related` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '远程附件id',
  `attachinfo` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `inputtime` (`inputtime`),
  KEY `fileext` (`fileext`),
  KEY `remote` (`remote`),
  KEY `author` (`author`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='附件已归档表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}attachment_data`
--

LOCK TABLES `{dbprefix}attachment_data` WRITE;
/*!40000 ALTER TABLE `{dbprefix}attachment_data` DISABLE KEYS */;
INSERT INTO `{dbprefix}attachment_data` VALUES (1,1,'','rand','1523500997605565','png',201631,'202403/52cf930c03c9d42.png',0,'{\"width\":666,\"height\":240}',1711602704),(2,1,'','rand','128','webp',3206,'202403/bb9121c6f68fade.webp',0,'{\"width\":128,\"height\":128}',1711612113),(3,1,'','rand','0 (1)','webp',21522,'202403/dc89427a687df6e.webp',0,'{\"width\":480,\"height\":800}',1711612134),(4,1,'','rand','0 (2)','webp',39630,'202403/eaad694c333ba44.webp',0,'{\"width\":480,\"height\":800}',1711612134),(5,1,'','rand','0','webp',28888,'202403/c8e2a41ebac8856.webp',0,'{\"width\":480,\"height\":800}',1711612134);
/*!40000 ALTER TABLE `{dbprefix}attachment_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}attachment_remote`
--

DROP TABLE IF EXISTS `{dbprefix}attachment_remote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}attachment_remote` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(2) NOT NULL COMMENT '类型',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '访问地址',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='远程附件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}attachment_remote`
--

LOCK TABLES `{dbprefix}attachment_remote` WRITE;
/*!40000 ALTER TABLE `{dbprefix}attachment_remote` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}attachment_remote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}attachment_unused`
--

DROP TABLE IF EXISTS `{dbprefix}attachment_unused`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}attachment_unused` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '会员',
  `siteid` mediumint(5) unsigned NOT NULL COMMENT '站点id',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '远程附件id',
  `attachinfo` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `inputtime` (`inputtime`),
  KEY `fileext` (`fileext`),
  KEY `remote` (`remote`),
  KEY `author` (`author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='未使用的附件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}attachment_unused`
--

LOCK TABLES `{dbprefix}attachment_unused` WRITE;
/*!40000 ALTER TABLE `{dbprefix}attachment_unused` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}attachment_unused` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}cron`
--

DROP TABLE IF EXISTS `{dbprefix}cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}cron` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `site` int(10) NOT NULL COMMENT '站点',
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '类型',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '参数值',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `error` text COLLATE utf8mb4_unicode_ci COMMENT '错误信息',
  `updatetime` int(10) unsigned NOT NULL COMMENT '执行时间',
  `inputtime` int(10) unsigned NOT NULL COMMENT '写入时间',
  PRIMARY KEY (`id`),
  KEY `site` (`site`),
  KEY `type` (`type`),
  KEY `status` (`status`),
  KEY `updatetime` (`updatetime`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='任务管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}cron`
--

LOCK TABLES `{dbprefix}cron` WRITE;
/*!40000 ALTER TABLE `{dbprefix}cron` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}cron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}field`
--

DROP TABLE IF EXISTS `{dbprefix}field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}field` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '字段别名语言',
  `fieldname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '字段名称',
  `fieldtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '字段类型',
  `relatedid` smallint(5) unsigned NOT NULL COMMENT '相关id',
  `relatedname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '相关表',
  `isedit` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可修改',
  `ismain` tinyint(1) unsigned NOT NULL COMMENT '是否主表',
  `issystem` tinyint(1) unsigned NOT NULL COMMENT '是否系统表',
  `ismember` tinyint(1) unsigned NOT NULL COMMENT '是否会员可见',
  `issearch` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可搜索',
  `disabled` tinyint(1) unsigned NOT NULL COMMENT '禁用？',
  `setting` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '配置信息',
  `displayorder` int(5) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `list` (`relatedid`,`disabled`,`issystem`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='字段表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}field`
--

LOCK TABLES `{dbprefix}field` WRITE;
/*!40000 ALTER TABLE `{dbprefix}field` DISABLE KEYS */;
INSERT INTO `{dbprefix}field` VALUES (1,'主题','title','Text',1,'module',1,1,1,1,1,0,'{\"option\":{\"width\":400,\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"},\"validate\":{\"xss\":1,\"required\":1,\"formattr\":\"onblur=\\\"check_title();get_keywords(\'keywords\');\\\"\"}}',0),(2,'缩略图','thumb','File',1,'module',1,1,1,1,0,0,'{\"option\":{\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\",\"input\":\"1\",\"ext\":\"jpg,gif,png\",\"size\":\"10\",\"attachment\":\"0\",\"image_reduce\":\"\",\"is_ext_tips\":\"0\",\"css\":\"\"},\"validate\":{\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',0),(3,'关键字','keywords','Text',1,'module',1,1,1,1,1,0,'{\"option\":{\"width\":400,\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"},\"validate\":{\"xss\":1,\"formattr\":\" data-role=\\\"tagsinput\\\"\"}}',0),(4,'描述','description','Textarea',1,'module',1,1,1,1,1,0,'{\"option\":{\"width\":500,\"height\":60,\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"},\"validate\":{\"xss\":1,\"filter\":\"{dbprefix}filter_description\"}}',0),(5,'笔名','author','Text',1,'module',1,1,1,1,1,0,'{\"is_right\":1,\"option\":{\"width\":200,\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\",\"value\":\"{name}\"},\"validate\":{\"xss\":1}}',0),(6,'内容','content','Editor',1,'module',1,0,1,1,1,0,'{\"option\":{\"mode\":1,\"show_bottom_boot\":1,\"div2p\":1,\"width\":\"100%\",\"height\":400},\"validate\":{\"xss\":1,\"required\":1}}',0),(7,'友情链接','yqlj','Ftable',1,'site',1,1,0,1,0,0,'{\"option\":{\"is_add\":\"1\",\"is_first_hang\":\"0\",\"count\":\"\",\"first_cname\":\"\",\"hang\":{\"1\":{\"name\":\"\"},\"2\":{\"name\":\"\"},\"3\":{\"name\":\"\"},\"4\":{\"name\":\"\"},\"5\":{\"name\":\"\"}},\"field\":{\"1\":{\"type\":\"1\",\"name\":\"网站名称\",\"width\":\"200\",\"option\":\"\"},\"2\":{\"type\":\"1\",\"name\":\"网站地址\",\"width\":\"\",\"option\":\"\"},\"3\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"4\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"5\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"6\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"7\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"8\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"9\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"10\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"}},\"width\":\"\",\"height\":\"\",\"css\":\"\"},\"validate\":{\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"xss\":\"1\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',0),(8,'幻灯图片','hdtp','Ftable',1,'site',1,1,0,1,0,0,'{\"option\":{\"is_add\":\"1\",\"is_first_hang\":\"0\",\"count\":\"\",\"first_cname\":\"\",\"hang\":{\"1\":{\"name\":\"\"},\"2\":{\"name\":\"\"},\"3\":{\"name\":\"\"},\"4\":{\"name\":\"\"},\"5\":{\"name\":\"\"}},\"field\":{\"1\":{\"type\":\"3\",\"name\":\"图片\",\"width\":\"200\",\"option\":\"\"},\"2\":{\"type\":\"1\",\"name\":\"名称\",\"width\":\"200\",\"option\":\"\"},\"3\":{\"type\":\"1\",\"name\":\"跳转地址\",\"width\":\"\",\"option\":\"\"},\"4\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"5\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"6\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"7\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"8\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"9\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"},\"10\":{\"type\":\"0\",\"name\":\"\",\"width\":\"\",\"option\":\"\"}},\"width\":\"\",\"height\":\"\",\"css\":\"\"},\"validate\":{\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"xss\":\"1\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',0),(9,'缩略图','thumb','File',0,'category-share',1,1,1,1,1,0,'{\"option\":{\"ext\":\"jpg,gif,png,jpeg\",\"size\":10,\"input\":1,\"attachment\":0}}',0),(10,'栏目内容','content','Ueditor',0,'category-share',1,1,1,1,1,0,'{\"option\":{\"mode\":1,\"show_bottom_boot\":1,\"div2p\":1,\"width\":\"100%\",\"height\":400},\"validate\":{\"xss\":1,\"required\":1}}',0),(11,'软件名称','title','Text',2,'module',1,1,1,1,0,0,'{\"option\":{\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\",\"value\":\"\",\"width\":\"400\",\"css\":\"\"},\"validate\":{\"xss\":\"1\",\"required\":\"1\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"onblur=\\\"check_title();get_keywords(\'keywords\');\\\"\"},\"is_right\":\"0\"}',1),(12,'图标','thumb','File',2,'module',1,1,1,1,0,0,'{\"option\":{\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\",\"input\":\"1\",\"ext\":\"jpg,gif,png,webp\",\"size\":\"10\",\"attachment\":\"0\",\"image_reduce\":\"\",\"is_ext_tips\":\"0\",\"css\":\"\"},\"validate\":{\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',4),(13,'关键字','keywords','Text',2,'module',1,1,1,1,1,0,'{\"option\":{\"width\":400,\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"},\"validate\":{\"xss\":1,\"formattr\":\" data-role=\\\"tagsinput\\\"\"}}',2),(14,'描述','description','Textarea',2,'module',1,1,1,1,1,0,'{\"option\":{\"width\":500,\"height\":60,\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"},\"validate\":{\"xss\":1,\"filter\":\"{dbprefix}filter_description\"}}',3),(15,'笔名','author','Text',2,'module',1,1,1,1,1,0,'{\"is_right\":1,\"option\":{\"width\":200,\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\",\"value\":\"{name}\"},\"validate\":{\"xss\":1}}',6),(16,'内容','content','Editor',2,'module',1,0,1,1,1,0,'{\"option\":{\"mode\":1,\"show_bottom_boot\":1,\"div2p\":1,\"width\":\"100%\",\"height\":400},\"validate\":{\"xss\":1,\"required\":1}}',11),(17,'主题','title','Text',3,'module',1,1,1,1,1,0,'{\"option\":{\"width\":400,\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"},\"validate\":{\"xss\":1,\"required\":1,\"formattr\":\"onblur=\\\"check_title();get_keywords(\'keywords\');\\\"\"}}',1),(18,'缩略图','thumb','File',3,'module',1,1,1,1,0,0,'{\"option\":{\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\",\"input\":\"1\",\"ext\":\"jpg,gif,png,webp\",\"size\":\"10\",\"attachment\":\"0\",\"image_reduce\":\"\",\"is_ext_tips\":\"0\",\"css\":\"\"},\"validate\":{\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',5),(19,'关键字','keywords','Text',3,'module',1,1,1,1,1,0,'{\"option\":{\"width\":400,\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"},\"validate\":{\"xss\":1,\"formattr\":\" data-role=\\\"tagsinput\\\"\"}}',2),(20,'描述','description','Textarea',3,'module',1,1,1,1,1,0,'{\"option\":{\"width\":500,\"height\":60,\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"},\"validate\":{\"xss\":1,\"filter\":\"{dbprefix}filter_description\"}}',3),(21,'笔名','author','Text',3,'module',1,1,1,1,1,0,'{\"is_right\":1,\"option\":{\"width\":200,\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\",\"value\":\"{name}\"},\"validate\":{\"xss\":1}}',4),(22,'内容','content','Editor',3,'module',1,0,1,1,1,0,'{\"option\":{\"mode\":1,\"show_bottom_boot\":1,\"div2p\":1,\"width\":\"100%\",\"height\":400},\"validate\":{\"xss\":1,\"required\":1}}',11),(23,'系统','xitong','Select',2,'module',1,1,0,1,0,0,'{\"option\":{\"options\":\"安卓|1\\r\\n苹果|2\\r\\n华为|3\",\"value\":\"\",\"fieldtype\":\"\",\"fieldlength\":\"\",\"css\":\"\"},\"validate\":{\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',7),(24,'大小','daxiao','Text',2,'module',1,1,0,1,0,0,'{\"option\":{\"fieldtype\":\"\",\"fieldlength\":\"\",\"value\":\"\",\"width\":\"400\",\"css\":\"\"},\"validate\":{\"xss\":\"1\",\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',8),(25,'版本','banben','Text',2,'module',1,1,0,1,0,0,'{\"option\":{\"fieldtype\":\"\",\"fieldlength\":\"\",\"value\":\"\",\"width\":\"400\",\"css\":\"\"},\"validate\":{\"xss\":\"1\",\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',9),(26,'截图','jietu','Files',2,'module',1,1,0,1,0,0,'{\"option\":{\"input\":\"1\",\"size\":\"10\",\"count\":\"10\",\"ext\":\"jpg,gif,png,webp\",\"attachment\":\"0\",\"image_reduce\":\"\",\"is_ext_tips\":\"0\",\"css\":\"\"},\"validate\":{\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',5),(27,'下载地址','xiazaidizhi','File',2,'module',1,1,0,1,0,0,'{\"option\":{\"fieldtype\":\"\",\"fieldlength\":\"\",\"input\":\"1\",\"ext\":\"exe,rar,zip\",\"size\":\"1024\",\"attachment\":\"0\",\"image_reduce\":\"\",\"is_ext_tips\":\"0\",\"css\":\"\"},\"validate\":{\"xss\":\"1\",\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',10),(28,'截图','jietu','Files',3,'module',1,1,0,1,0,0,'{\"option\":{\"input\":\"1\",\"size\":\"10\",\"count\":\"10\",\"ext\":\"jpg,gif,png,webp\",\"attachment\":\"0\",\"image_reduce\":\"\",\"is_ext_tips\":\"0\",\"css\":\"\"},\"validate\":{\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',6),(29,'系统','xitong','Select',3,'module',1,1,0,1,0,0,'{\"option\":{\"options\":\"安卓|1\\r\\n苹果|2\\r\\n华为|3\",\"value\":\"\",\"fieldtype\":\"\",\"fieldlength\":\"\",\"css\":\"\"},\"validate\":{\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',7),(30,'大小','daxiao','Text',3,'module',1,1,0,1,0,0,'{\"option\":{\"fieldtype\":\"\",\"fieldlength\":\"\",\"value\":\"\",\"width\":\"400\",\"css\":\"\"},\"validate\":{\"xss\":\"1\",\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',8),(31,'版本','banben','Text',3,'module',1,1,0,1,0,0,'{\"option\":{\"fieldtype\":\"\",\"fieldlength\":\"\",\"value\":\"\",\"width\":\"400\",\"css\":\"\"},\"validate\":{\"xss\":\"1\",\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',9),(32,'下载地址','xiazaidizhi','File',3,'module',1,1,0,1,0,0,'{\"option\":{\"fieldtype\":\"\",\"fieldlength\":\"\",\"input\":\"1\",\"ext\":\"exe,rar,zip\",\"size\":\"1024\",\"attachment\":\"0\",\"image_reduce\":\"\",\"is_ext_tips\":\"0\",\"css\":\"\"},\"validate\":{\"xss\":\"1\",\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}',10);
/*!40000 ALTER TABLE `{dbprefix}field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}linkage`
--

DROP TABLE IF EXISTS `{dbprefix}linkage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}linkage` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单名称',
  `type` tinyint(1) unsigned NOT NULL,
  `code` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `module` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='联动菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}linkage`
--

LOCK TABLES `{dbprefix}linkage` WRITE;
/*!40000 ALTER TABLE `{dbprefix}linkage` DISABLE KEYS */;
INSERT INTO `{dbprefix}linkage` VALUES (1,'中国地区',0,'address');
/*!40000 ALTER TABLE `{dbprefix}linkage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}linkage_data_1`
--

DROP TABLE IF EXISTS `{dbprefix}linkage_data_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}linkage_data_1` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `site` mediumint(5) unsigned NOT NULL COMMENT '站点id',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有上级id',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '栏目名称',
  `cname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '别名',
  `child` tinyint(1) unsigned DEFAULT '0' COMMENT '是否有下级',
  `hidden` tinyint(1) unsigned DEFAULT '0' COMMENT '前端隐藏',
  `childids` text COLLATE utf8mb4_unicode_ci COMMENT '下级所有id',
  `displayorder` mediumint(8) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cname` (`cname`),
  KEY `hidden` (`hidden`),
  KEY `list` (`site`,`displayorder`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='联动菜单数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}linkage_data_1`
--

LOCK TABLES `{dbprefix}linkage_data_1` WRITE;
/*!40000 ALTER TABLE `{dbprefix}linkage_data_1` DISABLE KEYS */;
INSERT INTO `{dbprefix}linkage_data_1` VALUES (1,1,0,'0','北京','bj',0,0,'1',0),(2,1,0,'0','成都','cd',0,0,'2',0);
/*!40000 ALTER TABLE `{dbprefix}linkage_data_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}mail_smtp`
--

DROP TABLE IF EXISTS `{dbprefix}mail_smtp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}mail_smtp` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `host` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` mediumint(8) unsigned NOT NULL,
  `displayorder` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `displayorder` (`displayorder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='邮件账户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}mail_smtp`
--

LOCK TABLES `{dbprefix}mail_smtp` WRITE;
/*!40000 ALTER TABLE `{dbprefix}mail_smtp` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}mail_smtp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}member`
--

DROP TABLE IF EXISTS `{dbprefix}member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '邮箱地址',
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '手机号码',
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '加密密码',
  `login_attr` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '登录附加验证字符',
  `salt` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '随机加密码',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `money` decimal(10,2) unsigned NOT NULL COMMENT 'RMB',
  `freeze` decimal(10,2) unsigned NOT NULL COMMENT '冻结RMB',
  `spend` decimal(10,2) unsigned NOT NULL COMMENT '消费RMB总额',
  `score` int(10) unsigned NOT NULL COMMENT '积分',
  `experience` int(10) unsigned NOT NULL COMMENT '经验值',
  `regip` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '注册ip',
  `regtime` int(10) unsigned NOT NULL COMMENT '注册时间',
  `randcode` mediumint(6) unsigned NOT NULL COMMENT '随机验证码',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}member`
--

LOCK TABLES `{dbprefix}member` WRITE;
/*!40000 ALTER TABLE `{dbprefix}member` DISABLE KEYS */;
INSERT INTO `{dbprefix}member` VALUES (1,'admin@admin.com','','admin','afb3dc4aa7e5bc7ad7cfb3bca5b4a679','','dd45850574','创始人',1000000.00,0.00,0.00,1000000,1000000,'125.84.163.116',1711597768,0);
/*!40000 ALTER TABLE `{dbprefix}member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}member_data`
--

DROP TABLE IF EXISTS `{dbprefix}member_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}member_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_admin` tinyint(1) unsigned DEFAULT '0' COMMENT '是否是管理员',
  `is_lock` tinyint(1) unsigned DEFAULT '0' COMMENT '账号锁定标识',
  `is_verify` tinyint(1) unsigned DEFAULT '0' COMMENT '审核标识',
  `is_mobile` tinyint(1) unsigned DEFAULT '0' COMMENT '手机认证标识',
  `is_email` tinyint(1) unsigned DEFAULT '0' COMMENT '邮箱认证标识',
  `is_avatar` tinyint(1) unsigned DEFAULT '0' COMMENT '头像上传标识',
  `is_complete` tinyint(1) unsigned DEFAULT '0' COMMENT '完善资料标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}member_data`
--

LOCK TABLES `{dbprefix}member_data` WRITE;
/*!40000 ALTER TABLE `{dbprefix}member_data` DISABLE KEYS */;
INSERT INTO `{dbprefix}member_data` VALUES (1,1,0,1,1,0,0,1);
/*!40000 ALTER TABLE `{dbprefix}member_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}member_group`
--

DROP TABLE IF EXISTS `{dbprefix}member_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}member_group` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户组名称',
  `price` decimal(10,2) NOT NULL COMMENT '售价',
  `unit` tinyint(1) unsigned NOT NULL COMMENT '价格单位:1积分，0金钱',
  `days` int(10) unsigned NOT NULL COMMENT '生效时长',
  `apply` tinyint(1) unsigned NOT NULL COMMENT '是否申请',
  `register` tinyint(1) unsigned NOT NULL COMMENT '是否允许注册',
  `setting` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户组配置',
  `displayorder` smallint(5) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `displayorder` (`displayorder`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户组表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}member_group`
--

LOCK TABLES `{dbprefix}member_group` WRITE;
/*!40000 ALTER TABLE `{dbprefix}member_group` DISABLE KEYS */;
INSERT INTO `{dbprefix}member_group` VALUES (1,'注册用户',0.00,0,0,1,1,'{\"level\":{\"auto\":\"0\",\"unit\":\"0\",\"price\":\"0\"},\"verify\":\"0\"}',0);
/*!40000 ALTER TABLE `{dbprefix}member_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}member_group_index`
--

DROP TABLE IF EXISTS `{dbprefix}member_group_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}member_group_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `gid` smallint(5) unsigned NOT NULL COMMENT '用户组id',
  `lid` smallint(5) unsigned NOT NULL COMMENT '用户组等级id',
  `stime` int(10) unsigned NOT NULL COMMENT '开通时间',
  `etime` int(10) unsigned NOT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `lid` (`lid`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户组归属表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}member_group_index`
--

LOCK TABLES `{dbprefix}member_group_index` WRITE;
/*!40000 ALTER TABLE `{dbprefix}member_group_index` DISABLE KEYS */;
INSERT INTO `{dbprefix}member_group_index` VALUES (1,1,1,0,0,0);
/*!40000 ALTER TABLE `{dbprefix}member_group_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}member_group_verify`
--

DROP TABLE IF EXISTS `{dbprefix}member_group_verify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}member_group_verify` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `gid` smallint(5) unsigned NOT NULL COMMENT '用户组id',
  `lid` smallint(5) unsigned NOT NULL COMMENT '用户组等级id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `price` decimal(10,2) DEFAULT NULL COMMENT '已费用',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '自定义字段信息',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户组申请审核';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}member_group_verify`
--

LOCK TABLES `{dbprefix}member_group_verify` WRITE;
/*!40000 ALTER TABLE `{dbprefix}member_group_verify` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}member_group_verify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}member_level`
--

DROP TABLE IF EXISTS `{dbprefix}member_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}member_level` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `gid` smallint(5) unsigned NOT NULL COMMENT '用户id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `stars` int(10) NOT NULL COMMENT '图标',
  `value` int(10) unsigned NOT NULL COMMENT '升级值要求',
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '备注',
  `apply` tinyint(1) unsigned NOT NULL COMMENT '是否允许升级',
  `setting` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '等级配置',
  `displayorder` smallint(5) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `value` (`value`),
  KEY `apply` (`apply`),
  KEY `gid` (`gid`),
  KEY `displayorder` (`displayorder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户组级别表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}member_level`
--

LOCK TABLES `{dbprefix}member_level` WRITE;
/*!40000 ALTER TABLE `{dbprefix}member_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}member_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}member_login`
--

DROP TABLE IF EXISTS `{dbprefix}member_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}member_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned DEFAULT NULL COMMENT '会员uid',
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '登录方式',
  `loginip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '登录Ip',
  `logintime` int(10) unsigned NOT NULL COMMENT '登录时间',
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '客户端信息',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `loginip` (`loginip`),
  KEY `logintime` (`logintime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='登录日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}member_login`
--

LOCK TABLES `{dbprefix}member_login` WRITE;
/*!40000 ALTER TABLE `{dbprefix}member_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}member_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}member_menu`
--

DROP TABLE IF EXISTS `{dbprefix}member_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}member_menu` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL COMMENT '上级菜单id',
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单语言名称',
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'uri字符串',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '外链地址',
  `mark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '菜单标识',
  `hidden` tinyint(1) unsigned DEFAULT NULL COMMENT '是否隐藏',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图标标示',
  `group` text COLLATE utf8mb4_unicode_ci COMMENT '用户组划分',
  `site` text COLLATE utf8mb4_unicode_ci COMMENT '站点划分',
  `client` text COLLATE utf8mb4_unicode_ci COMMENT '终端划分',
  `displayorder` int(5) DEFAULT NULL COMMENT '排序值',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `mark` (`mark`),
  KEY `hidden` (`hidden`),
  KEY `uri` (`uri`),
  KEY `displayorder` (`displayorder`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户组菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}member_menu`
--

LOCK TABLES `{dbprefix}member_menu` WRITE;
/*!40000 ALTER TABLE `{dbprefix}member_menu` DISABLE KEYS */;
INSERT INTO `{dbprefix}member_menu` VALUES (1,0,'账号管理','','','user',0,'fa fa-user','','','',0),(2,1,'资料修改','account/index','','',0,'fa fa-cog','','','',0),(3,1,'头像设置','account/avatar','','',0,'fa fa-smile-o','','','',0),(4,1,'手机认证','account/mobile','','',0,'fa fa-mobile','','','',0),(5,1,'邮箱认证','account/email','','',0,'fa fa-envelope','','','',0),(6,1,'修改密码','account/password','','',0,'fa fa-expeditedssl','','','',0),(7,1,'账号绑定','account/oauth','','',0,'fa fa-qq','','','',0),(8,1,'登录记录','account/login','','',0,'fa fa-calendar','','','',0),(9,0,'内容管理','','','content-module',0,'fa fa-th-large','','','',0),(10,9,'文章管理','news/home/index','','module-news',0,'fa fa-code','','','',-1),(11,9,'软件管理','ruanjian/home/index','','module-ruanjian',0,'fa fa-code','','','',-1),(12,9,'游戏管理','youxi/home/index','','module-youxi',0,'fa fa-code','','','',-1);
/*!40000 ALTER TABLE `{dbprefix}member_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}member_oauth`
--

DROP TABLE IF EXISTS `{dbprefix}member_oauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}member_oauth` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '会员uid',
  `oid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'OAuth返回id',
  `oauth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '运营商',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '头像',
  `unionid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'unionId',
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '昵称',
  `expire_at` int(10) unsigned NOT NULL COMMENT '绑定时间',
  `access_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '保留',
  `refresh_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '保留',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='快捷登录用户OAuth授权表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}member_oauth`
--

LOCK TABLES `{dbprefix}member_oauth` WRITE;
/*!40000 ALTER TABLE `{dbprefix}member_oauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}member_oauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}member_setting`
--

DROP TABLE IF EXISTS `{dbprefix}member_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}member_setting` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户属性参数表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}member_setting`
--

LOCK TABLES `{dbprefix}member_setting` WRITE;
/*!40000 ALTER TABLE `{dbprefix}member_setting` DISABLE KEYS */;
INSERT INTO `{dbprefix}member_setting` VALUES ('auth2','{\"1\":{\"public\":{\"home\":{\"show\":\"0\",\"is_category\":\"0\"},\"form_public\":[],\"share_category_public\":{\"show\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"code\":\"1\",\"verify\":\"1\",\"exp\":\"\",\"score\":\"\",\"money\":\"\",\"day_post\":\"\",\"total_post\":\"\"},\"category_public\":[],\"mform_public\":\"\",\"form\":null,\"share_category\":null,\"category\":null,\"mform\":null}}}'),('config','{\"edit_name\":\"1\",\"edit_mobile\":\"1\",\"logintime\":\"\",\"verify_msg\":\"\",\"pagesize\":\"\",\"pagesize_mobile\":\"\",\"pagesize_api\":\"\"}'),('login','{\"code\":\"1\"}'),('register','{\"close\":\"0\",\"groupid\":\"1\",\"field\":[\"username\",\"email\"],\"cutname\":\"0\",\"unprefix\":\"\",\"code\":\"1\",\"verify\":\"\",\"preg\":\"\",\"notallow\":\"\"}');
/*!40000 ALTER TABLE `{dbprefix}member_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}member_verify`
--

DROP TABLE IF EXISTS `{dbprefix}member_verify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}member_verify` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '会员uid',
  `tid` tinyint(1) unsigned NOT NULL COMMENT '类别',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '自定义字段信息',
  `result` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '处理结果',
  `updatetime` int(10) unsigned NOT NULL COMMENT '处理时间',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`),
  KEY `uid` (`uid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员审核表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}member_verify`
--

LOCK TABLES `{dbprefix}member_verify` WRITE;
/*!40000 ALTER TABLE `{dbprefix}member_verify` DISABLE KEYS */;
/*!40000 ALTER TABLE `{dbprefix}member_verify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}module`
--

DROP TABLE IF EXISTS `{dbprefix}module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}module` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `site` mediumtext COLLATE utf8mb4_unicode_ci COMMENT '站点划分',
  `dirname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '目录名称',
  `share` tinyint(1) unsigned DEFAULT NULL COMMENT '是否共享模块',
  `setting` text COLLATE utf8mb4_unicode_ci COMMENT '配置信息',
  `comment` text COLLATE utf8mb4_unicode_ci COMMENT '评论信息',
  `disabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT '禁用？',
  `displayorder` smallint(5) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dirname` (`dirname`),
  KEY `disabled` (`disabled`),
  KEY `displayorder` (`displayorder`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='模块表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}module`
--

LOCK TABLES `{dbprefix}module` WRITE;
/*!40000 ALTER TABLE `{dbprefix}module` DISABLE KEYS */;
INSERT INTO `{dbprefix}module` VALUES (1,'{\"1\":{\"html\":0,\"theme\":\"default\",\"domain\":\"\",\"template\":\"default\"}}','news',1,'{\"order\":\"updatetime DESC\",\"verify_msg\":\"\",\"delete_msg\":\"\",\"list_field\":{\"title\":{\"use\":\"1\",\"order\":\"1\",\"name\":\"主题\",\"width\":\"\",\"func\":\"title\"},\"catid\":{\"use\":\"1\",\"order\":\"2\",\"name\":\"栏目\",\"width\":\"130\",\"func\":\"catid\"},\"author\":{\"use\":\"1\",\"order\":\"3\",\"name\":\"笔名\",\"width\":\"120\",\"func\":\"author\"},\"updatetime\":{\"use\":\"1\",\"order\":\"4\",\"name\":\"更新时间\",\"width\":\"160\",\"func\":\"datetime\"}},\"comment_list_field\":{\"content\":{\"use\":\"1\",\"order\":\"1\",\"name\":\"评论\",\"width\":\"\",\"func\":\"comment\"},\"author\":{\"use\":\"1\",\"order\":\"3\",\"name\":\"作者\",\"width\":\"100\",\"func\":\"author\"},\"inputtime\":{\"use\":\"1\",\"order\":\"4\",\"name\":\"评论时间\",\"width\":\"160\",\"func\":\"datetime\"}},\"flag\":null,\"param\":null,\"search\":{\"use\":\"1\",\"field\":\"title,keywords\",\"total\":\"500\",\"length\":\"4\",\"param_join\":\"-\",\"param_rule\":\"0\",\"param_field\":\"\",\"param_join_field\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"param_join_default_value\":\"0\"}}','',0,0),(2,'{\"1\":{\"html\":0,\"theme\":\"default\",\"domain\":\"\",\"template\":\"default\"}}','ruanjian',1,'{\"order\":\"updatetime DESC\",\"verify_msg\":\"\",\"delete_msg\":\"\",\"list_field\":{\"title\":{\"use\":\"1\",\"order\":\"1\",\"name\":\"主题\",\"width\":\"\",\"func\":\"title\"},\"catid\":{\"use\":\"1\",\"order\":\"2\",\"name\":\"栏目\",\"width\":\"130\",\"func\":\"catid\"},\"author\":{\"use\":\"1\",\"order\":\"3\",\"name\":\"笔名\",\"width\":\"120\",\"func\":\"author\"},\"updatetime\":{\"use\":\"1\",\"order\":\"4\",\"name\":\"更新时间\",\"width\":\"160\",\"func\":\"datetime\"}},\"comment_list_field\":{\"content\":{\"use\":\"1\",\"order\":\"1\",\"name\":\"评论\",\"width\":\"\",\"func\":\"comment\"},\"author\":{\"use\":\"1\",\"order\":\"3\",\"name\":\"作者\",\"width\":\"100\",\"func\":\"author\"},\"inputtime\":{\"use\":\"1\",\"order\":\"4\",\"name\":\"评论时间\",\"width\":\"160\",\"func\":\"datetime\"}},\"flag\":{\"1\":{\"name\":\"首页推荐\",\"icon\":\"\",\"role\":[]},\"2\":{\"name\":\"每日一荐\",\"icon\":\"\",\"role\":[]}},\"param\":null,\"search\":{\"use\":\"1\",\"field\":\"title,keywords\",\"total\":\"500\",\"length\":\"4\",\"param_join\":\"-\",\"param_rule\":\"0\",\"param_field\":\"\",\"param_join_field\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"param_join_default_value\":\"0\"}}','',0,0),(3,'{\"1\":{\"html\":0,\"theme\":\"default\",\"domain\":\"\",\"template\":\"default\"}}','youxi',1,'{\"order\":\"updatetime DESC\",\"verify_msg\":\"\",\"delete_msg\":\"\",\"list_field\":{\"title\":{\"use\":\"1\",\"order\":\"1\",\"name\":\"主题\",\"width\":\"\",\"func\":\"title\"},\"catid\":{\"use\":\"1\",\"order\":\"2\",\"name\":\"栏目\",\"width\":\"130\",\"func\":\"catid\"},\"author\":{\"use\":\"1\",\"order\":\"3\",\"name\":\"笔名\",\"width\":\"120\",\"func\":\"author\"},\"updatetime\":{\"use\":\"1\",\"order\":\"4\",\"name\":\"更新时间\",\"width\":\"160\",\"func\":\"datetime\"}},\"comment_list_field\":{\"content\":{\"use\":\"1\",\"order\":\"1\",\"name\":\"评论\",\"width\":\"\",\"func\":\"comment\"},\"author\":{\"use\":\"1\",\"order\":\"3\",\"name\":\"作者\",\"width\":\"100\",\"func\":\"author\"},\"inputtime\":{\"use\":\"1\",\"order\":\"4\",\"name\":\"评论时间\",\"width\":\"160\",\"func\":\"datetime\"}},\"flag\":null,\"param\":null,\"search\":{\"use\":\"1\",\"field\":\"title,keywords\",\"total\":\"500\",\"length\":\"4\",\"param_join\":\"-\",\"param_rule\":\"0\",\"param_field\":\"\",\"param_join_field\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"param_join_default_value\":\"0\"}}','',0,0);
/*!40000 ALTER TABLE `{dbprefix}module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}site`
--

DROP TABLE IF EXISTS `{dbprefix}site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}site` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '站点名称',
  `domain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '站点域名',
  `setting` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '站点配置',
  `disabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT '禁用？',
  `displayorder` smallint(5) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `disabled` (`disabled`),
  KEY `displayorder` (`displayorder`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='站点表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}site`
--

LOCK TABLES `{dbprefix}site` WRITE;
/*!40000 ALTER TABLE `{dbprefix}site` DISABLE KEYS */;
INSERT INTO `{dbprefix}site` VALUES (1,'我的项目','demo.huahoo.net','{\"config\":{\"logo\":\"\",\"SITE_NAME\":\"我的项目\",\"SITE_ICP\":\"\",\"SITE_TONGJI\":\"\",\"hdtp\":{\"1\":{\"1\":\"1\",\"2\":\"我的项目\",\"3\":\"\"},\"2\":{\"1\":\"1\",\"2\":\"我的项目1\",\"3\":\"\"}},\"SITE_CLOSE\":\"0\",\"SITE_INDEX_HTML\":\"0\",\"SITE_CLOSE_MSG\":\"网站升级中....\",\"SITE_LANGUAGE\":\"zh-cn\",\"SITE_TEMPLATE\":\"hsq001\",\"SITE_TIMEZONE\":\"8\",\"SITE_TIME_FORMAT\":\"\",\"SITE_THEME\":\"hsq001\",\"SITE_DOMAIN\":\"demo.huahoo.net\"},\"param\":{\"yqlj\":\"\",\"hdtp\":\"{\\\"1\\\":{\\\"1\\\":\\\"1\\\",\\\"2\\\":\\\"我的项目\\\",\\\"3\\\":\\\"\\\"},\\\"2\\\":{\\\"1\\\":\\\"1\\\",\\\"2\\\":\\\"我的项目1\\\",\\\"3\\\":\\\"\\\"}}\"},\"mobile\":{\"mode\":\"-1\",\"auto2\":\"0\",\"domain\":\"\",\"dirname\":\"\",\"auto\":\"0\",\"tohtml\":0,\"not_pad\":\"0\"}}',0,0);
/*!40000 ALTER TABLE `{dbprefix}site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `{dbprefix}urlrule`
--

DROP TABLE IF EXISTS `{dbprefix}urlrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `{dbprefix}urlrule` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '规则类型',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '规则名称',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '详细规则',
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='URL规则表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `{dbprefix}urlrule`
--

LOCK TABLES `{dbprefix}urlrule` WRITE;
/*!40000 ALTER TABLE `{dbprefix}urlrule` DISABLE KEYS */;
INSERT INTO `{dbprefix}urlrule` VALUES (1,3,'不带栏目路径','{\"list\":\"list-{dirname}.html\",\"list_page\":\"list-{dirname}-{page}.html\",\"show\":\"show-{id}.html\",\"show_page\":\"\",\"catjoin\":\"/\"}'),(2,3,'带栏目路径','{\"list\":\"{dirname}/\",\"list_page\":\"{dirname}/p{page}.html\",\"show\":\"{dirname}/{id}.html\",\"show_page\":\"\",\"catjoin\":\"/\"}'),(3,2,'共享模块搜索','{\"search\":\"search/{modname}.html\",\"search_page\":\"search/{modname}/{param}.html\",\"catjoin\":\"/\"}');
/*!40000 ALTER TABLE `{dbprefix}urlrule` ENABLE KEYS */;
UNLOCK TABLES;


