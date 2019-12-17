drop database if exists curse;
create database curse;
use curse;

drop table if exists card;
create table card(
	id int unsigned not null auto_increment primary key,
	card_number int(12) not null,
	card_holder varchar(100) not null,
	expiration_Date date not null,
	cvv_code int(3) not null
);

INSERT INTO `card` VALUES ('1','437160557','5172375293770071','2005-08-23','0'),
('2','91404','5426813495171668','2008-11-27','0'),
('3','0','5428976816031805','1994-08-04','0'),
('4','26','5377664783777344','1988-05-09','0'),
('5','0','4575941858321','1999-12-13','0'),
('6','57481','4485241962807','2017-03-23','0'),
('7','59','5120898483404224','2004-04-09','0'),
('8','141','4539181537742950','1997-03-01','0'),
('9','2940','379142163350124','2019-10-10','0'),
('10','7','5321370017225771','1984-07-27','0'),
('11','922375210','5279134620839212','1981-12-05','0'),
('12','61467694','4266499121044','2001-07-11','0'),
('13','1','5219591738399205','1997-10-28','0'),
('14','2844','5186977476112660','2016-12-17','0'),
('15','2573','4716417956647','1996-08-29','0'),
('16','47037','4716396641680030','1978-03-12','0'),
('17','0','5415353265532881','1999-03-29','0'),
('18','780122050','4716504173750','1999-08-28','0'),
('19','9425','4716416154539','1972-08-06','0'),
('20','79721881','5599591255501502','2005-06-07','0'),
('21','921080124','5559924613711601','2004-10-31','0'),
('22','376074','4532490151097704','1995-03-01','0'),
('23','0','5182846348632415','1977-12-18','0'),
('24','953421','5480250720920841','1972-04-05','0'),
('25','179926','4716907713612075','2008-06-23','0'),
('26','968','5546546865634588','1994-03-10','0'),
('27','30868','4916678102385','1972-06-13','0'),
('28','9974','4530248883950','2000-08-12','0'),
('29','964044','4716042688133500','1999-10-29','0'),
('30','28619106','4485200783401103','1972-09-25','0'),
('31','60','5386724968223205','1984-11-14','0'),
('32','5','5159470463433540','1996-12-09','0'),
('33','13046','5293331215758964','1974-11-10','0'),
('34','9325','5384953049555094','1991-08-12','0'),
('35','912894562','6011759084462213','2011-09-23','0'),
('36','7','4929140945424','1992-03-27','0'),
('37','8154646','5506499942716346','1996-07-10','0'),
('38','79970741','5593881473059508','2011-05-19','0'),
('39','95972129','4556491672974','2019-04-30','0'),
('40','3','6011791703489745','1983-08-14','0'),
('41','385260','5294597655947315','1982-02-10','0'),
('42','753','341681256245611','1981-03-07','0'),
('43','0','4024007128521412','2006-11-27','0'),
('44','418304','5539490231655302','1992-11-08','0'),
('45','37821148','5299571962527282','1989-11-20','0'),
('46','0','5442138802291056','1987-04-25','0'),
('47','3624383','4719261707118','1982-12-21','0'),
('48','7487521','4539248876569','1990-06-06','0'),
('49','7178375','5269264095562584','1970-09-11','0'),
('50','5590','4716500575416325','1985-12-06','0'); 

drop table if exists users;
create table users(
	id int(10) unsigned not null auto_increment primary key,
	firstname varchar(100),
	lastname varchar(100),
	email varchar(100) unique,
	user_password varchar(100),
	birthday date,
	hometown varchar(50),
	phone varchar(12),
	card_id int unsigned not null,
	
	foreign key(card_id) references card(id)
);

INSERT INTO `users` VALUES ('1','Maximus','Kautzer','tabitha90@example.org','24807ae602414187668a1a4078bd83b3855f0a0c','1986-05-10', 'Moscow','836-147-5054','1'),
('2','Tommie','Bogisich','kurtis.kovacek@example.org','b23cff658da2a9bc92be4721a3c49ad02dc20752','1978-07-04','Moscow','120-760-3592','2'),
('3','Yvette','Volkman','sharon.dibbert@example.com','bb98757322d4a7b94ed6ab94e6abfa6a10777abd','1987-04-09','Moscow','(387)931-694','3'),
('4','Humberto','Kulas','easter.bernier@example.net','ee8a6e9de403c64f03b0b06afa8818c812f31028','1975-02-03','Moscow','152.062.3436','4'),
('5','Lera','Pfeffer','daija.tillman@example.com','ebcda46f1da7d3e94cd537dfb9fd53947e88d9c6','1993-05-16','Moscow','+91(8)666675','5'),
('6','Orpha','Miller','brendan.fadel@example.net','b8a363df0c0266160e620dd4a16f9b969afbc760','1993-04-20','Moscow','1-522-785-89','6'),
('7','Mable','Carroll','connie86@example.org','b122d5fd1e56efe6c4c39927e7883faa1a1c3e73','2010-12-28','Moscow','246-564-7684','7'),
('8','Keara','Hilll','arvel.fisher@example.org','f20f400b578fa2e87381d246b23be60dd5e89c3d','1975-10-11','Moscow','(047)818-568','8'),
('9','Anne','Dare','jakubowski.thea@example.org','b10762afc67a42dcba4a4f3cc4390578d53b3ab1','1993-07-01','Krasnodar','742.486.9039','9'),
('10','Wilton','Labadie','luz.sawayn@example.org','f9e3d0ba49efc8dece465cbc1b27e0da2b3379cb','1983-11-08','Krasnodar','243.252.0966','10'),
('11','Maria','Kuhn','dane.marquardt@example.org','ba45d78aa8e3b3d009a0d0f506fe4740ffc285e5','1997-06-26','Krasnodar','607-330-0051','11'),
('12','Christop','Kautzer','elda97@example.com','5475903515e19735c4e540f7b72ce3d3163b7711','2009-04-05','Krasnodar','593-180-1211','12'),
('13','Aryanna','Beatty','ncrist@example.org','339f43f3c8d421379cfd9aafbfe4cfea4d324afb','1996-05-07','Krasnodar','(098)581-068','13'),
('14','Sam','Hayes','marvin.nico@example.net','a9ad0758fbb0ccea088b4bbd3156329660601cc5','2003-10-30','Krasnodar','340.353.5955','14'),
('15','Doug','Wehner','clement.gerhold@example.org','d95329a4f25145f744f7f95d0c5593dbfacf5580','1977-01-18','Krasnodar','902.924.0809','15'),
('16','Geoffrey','Berge','maudie53@example.org','8a35bf6056c19e3425548fd5c8a68f9659722614','2010-06-20','Krasnodar','02033989242','16'),
('17','Laron','Hegmann','grady.dach@example.com','5b2b22d740130c7edb64dbae6ab2f3c3680a1b74','1984-02-24','Krasnodar','943.763.6275','17'),
('18','Jaren','Grady','german10@example.org','7969fead60884c5bf255562ac827e5bcb870dd92','2002-09-19', 'Krasnodar','09494763399','18'),
('19','Jermey','Gerlach','orin88@example.org','648cb34d30d3628ef37914f99b672a6199d60edf','2005-04-20', 'Saint Petersburgh','1-710-901-61','19'),
('20','Francesca','Stiedemann','albina66@example.org','2d2301d94d70bd1d88e9e8ad18d6d56f80d8cdb0','1984-09-05', 'Saint Petersburgh','045-196-1105','20'),
('21','Aletha','Pfeffer','joy56@example.org','c59b82870978c8b4030ec8e99822f1ee300422aa','1983-10-26', 'Saint Petersburgh','456-541-6979','21'),
('22','Mike','Runolfsson','holden.shanahan@example.org','0b123c2d828df77c3eb4b015b3c61835677dbeeb','2003-07-07', 'Saint Petersburgh','1-765-251-38','22'),
('23','Barney','Hagenes','usmith@example.com','b604ec7fbc53520351ffa6e7fc9cec9c3c23096b','2005-10-27', 'Saint Petersburgh','1-670-808-19','23'),
('24','Hunter','Torp','greenholt.jaiden@example.com','6b06e15fafc601d2a57961499ac2001912cdea97','1975-07-08', 'Saint Petersburgh','686.936.7034','24'),
('25','Dalton','Crona','dhudson@example.net','40539fbc31311ca2834a85347dcd4c78f28998cb','1992-11-06', 'Saint Petersburgh','(401)810-936','25'),
('26','Deja','Rau','zlittel@example.net','194418ed660a4b7c1ac6eb952f1fc7a661836ca9','2008-03-15', 'Saint Petersburgh','461-305-9133','26'),
('27','Rene','Huel','iliana.thiel@example.net','cd1d25a787b8491580a14faf3ce121d1daa17223','2014-09-01', 'Saint Petersburgh','(702)563-500','27'),
('28','Abe','Cole','ehowell@example.com','f0b7cc18de6079211b770cad50208c04beab762f','1971-01-02', 'Saint Petersburgh','421.506.9600','28'),
('29','Westley','Walter','ocie.crist@example.net','769eeb49ded9be26dcb87b0c0d256854746f6028','2005-12-29', 'Kazan','(291)092-917','29'),
('30','Hayden','Rodriguez','piper19@example.org','1597f706f9d0c513d77a5d6683262c2b9526719f','1980-06-27', 'Kazan','416.271.2125','30'),
('31','Aurelia','Huels','heath.shanahan@example.com','957f63492122a70b4f10ce6d058ca860710687a7','2002-01-02', 'Kazan','(294)026-697','31'),
('32','Rosemary','Boyer','bosco.toni@example.org','72120b1cbd010bad270394cc4ea429df34ed63c0','2001-03-25', 'Kazan','1-607-787-21','32'),
('33','Stephen','Mueller','justine.stark@example.net','f0f1073677ada1de9debf523db8a593ed7727742','1986-10-05', 'Kazan','08849232343','33'),
('34','Charles','Daugherty','elmo42@example.org','120e5b3c4ab1256574c4e3815a3777d755e36cb4','1974-03-14', 'Kazan','727-431-1577','34'),
('35','Jeanne','Conroy','beier.jermain@example.com','d89dc986c8bb25ab4742926fd9e402b5c6c8c80b','2006-12-12', 'Kazan','246-813-3302','35'),
('36','Darlene','Conn','matt.hayes@example.net','b1201a87def2866b9c7339c20c443ff7a4bae735','2005-07-28', 'Kazan','(799)754-665','36'),
('37','Florine','Shields','christop93@example.com','63a11644a2ff0c6a263fe840f1cd31972a33e31f','2006-04-12', 'Kazan','356-688-8797','37'),
('38','Bartholome','Glover','hegmann.tina@example.org','3d3e2a3d193add18ce9a061344cc2381f557088d','1981-04-16', 'Kazan','1-039-216-10','38'),
('39','German','Quigley','edeckow@example.com','8f3a062e129089deed344bd3709da1f7fe98c535','2000-02-28', 'Sochi','877.354.5265','39'),
('40','Laury','Howell','benton15@example.net','f530506c98b598737739173a6f33fcec6ce58281','1984-12-18', 'Sochi','(645)601-556','40'),
('41','Adele','Hirthe','ullrich.magdalena@example.org','5b399e0781967423cac2a3c5bd24f12014d5d1a2','1981-03-15', 'Sochi','(259)349-841','41'),
('42','Mallory','Botsford','hschulist@example.com','4f95e5a8e080328f0bf0bceeb55caaf7c77c3fdf','2008-07-09', 'Sochi','1-783-161-02','42'),
('43','Ronaldo','Schaden','bstehr@example.net','74bd576c3bf77d7c0c5e0bcd5135ed5d2bfced44','2002-03-21', 'Sochi','277.176.5136','43'),
('44','Dylan','Cormier','ytreutel@example.com','b1e07eb93d81f102a9471c9122fa51680ec6b8ec','1992-10-25', 'Sochi','226-023-4676','44'),
('45','Loyce','O\'Connell','wdooley@example.net','cc1b79520d11513c71d121ebde43ef6cfe3a384d','1988-02-22', 'Sochi','739-237-4394','45'),
('46','Jarvis','Sawayn','dominique.schaden@example.com','b2924f8fc806d0ddb5cff98629fd3f7f05ff89cc','2003-11-13', 'Sochi','460-966-0671','46'),
('47','Freida','Langosh','lola32@example.org','728591278c2a5f0a12d7c25c4d4f995a86cc7b6a','2004-12-18', 'Sochi','1-440-066-72','47'),
('48','Josiane','Conroy','stracke.florine@example.org','f512330bd91b1bcde1f85bf29030094d49c89853','1978-03-11', 'Sochi','611.344.4983','48'),
('49','Wilton','Schmeler','theo.bartell@example.com','a85d342bb7559bf958c03402ccf7486b4ce21a4b','1996-09-01','Sochi','+30(5)434146','49'),
('50','Emmet','Nader','rozella60@example.net','28536fd21e31ce535afd6915ce600da0f19779e5','2000-08-26', 'Sochi','493-325-1969','50'); 

drop table if exists categories;
create table categories(
	id int unsigned not null auto_increment primary key,
	category_name varchar(100)
);

INSERT INTO categories VALUES ('1', 'Xbox'), ('2','Playstation'), ('3','Nintendo'), ('4','PC');

drop table if exists publishers;
create table publishers(
	id int unsigned not null auto_increment primary key,
	publisher_name varchar(100)
);

INSERT INTO publishers VALUES ('1', 'Electroni Arts'), ('2','Ubisoft'), ('3','Activision'), ('4','Sony Computer Entertainment'),
('5', 'Bethesda Softworks'), ('6', 'Square Enix'), ('7', 'Nintendo'), ('8', 'Xbox Game Studios'), ('9', 'Other');

drop table if exists games;
create table games(
	id int(10) unsigned not null auto_increment primary key,
	game_name varchar(100),
	description varchar(100) not null,
	price int unsigned not null,
	publisher_id int unsigned not null,
	category_id int unsigned not null,
	
	foreign key(category_id) references categories(id),
	foreign key(publisher_id) references publishers(id)
);

INSERT INTO `games` VALUES ('1','Fifa 20','Football Game','4000','1','1'),
('2','Fifa 20','Football game','4000','1','2'),
('3','Sims 4','Simulator of life','1000','1','4'),
('4','Need for Speed:Heat','Racing arcade','4500','1','1'),
('5','Need for Speed:Heat','Racing arcade','4500','1','2'),
('6','Assassins creed: Origins','Live life of old Egypt','2000','2','1'),
('7','Assassins creed: Origins','Live life of old Egypt','2000','2','2'),
('8','Assassins creed: Odyssey','Live life of old Greece','3000','2','1'),
('9','Assassins creed: Odyssey','Live life of old Greece','3000','2','2'),
('10','Tom Clancy: The Division 2','Co-operative action game','2500','2','1'),
('11','Tom Clancy: The Division 2','Co-operative action game','2500','2','2'),
('12','Call of duty: Black Ops','Co-operative action game','2000','3','2'),
('13','Call of duty: Black Ops','Co-operative action game','1000','3','4'),
('14','Call of duty: Black Ops','Co-operative action game','2000','3','1'),
('15','God of War','Slasher','1000','4','2'),
('16','Concrete Genie','Unique Platformer','1500','4','2'),
('17','Sekiro: Shadow die twice','FromSoftware game for cool gamers','4000','4','2'),
('18','Bloodborne','FromSoftware game for cool gamers','1000','4','2'),
('19','Spider Man','Fantastic action game from Insomniac','1000','4','2'),
('20','InFamous: The secon son','Fantastic action game','1000','4','2'),
('21','InFamous: First light','Fantastic action game','1000','4','2'),
('22','Uncharted 4','Adventure action game','1000','4','2'),
('23','Uncharted Trilogy (Remastered)','Adventure action game','15','4','2'),
('24','Detroit: Become human','Movie interactive game from Quantic dreams','1000','4','2'),
('25','Mario','Nintendo games for old scool gamers','3000','7','3'),
('26','Mario cart','Nintendo games for old scool gamers','3000','7','3'),
('27','Zelda','Nintendo games for old scool gamers','4000','7','3'),
('28','Football Manager 2020','Cool football strategy','2000','9','3'),
('29','Dishonored (1+2)','Cool stealth game','2000','5','1'),
('30','Dishonored (1+2)','Cool stealth game','2000','5','2'),
('31','Elder Scrolls: Scyrim','MMO game that you can play on each platform','600','5','4'),
('32','Scyrim VR','Famous Scyrim now in Virtual reality!','3000','5','2'),
('33','Fallout 4','Space action game','2000','5','1'),
('34','Fallout 4','Space action game','2000','5','2'),
('35','Fallout 4','Space action game','1000','5','4'),
('36','Football Manager 2020','Cool football strategy','1500','9','4'),
('37','Final Fantasy XV','Japan RPG','2000','6','1'),
('38','Final Fantasy XV','Japan RPG','2000','6','2'),
('39','Final Fantasy XI','Japan RPG','1500','6','1'),
('40','Final Fantasy XI','Japan RPG','1500','6','2'),
('41','Kingdom Hearts III','Disney cartoons rpg	','3000','6','1'),
('42','Kingdom Hearts III','Disney cartoons rpg	','3000','6','1'),
('43','Control','Very cool animated action game from Remedy','3000','9','1'),
('44','Control','Very cool animated action game Remedy','3000','9','2'),
('45','Forza Horizon','Racing exclusive game','1500','8','1'),
('46','Halo','Space action game for Xbox users','1500','8','1'),
('47','Spyro Trilogy (remastered)','Remaster of a nice fairy tale','2000','3','2'),
('48','Tomb Rider','Adventure action game with Lara Croft','2000','9','2'),
('49','Horizon Zero Dawn','Fantastic rpg game from Guarilla games','1000','4','2'),
('50','Ratchet and Clank','Remaster of a cool game','1000','4','2'); 

drop table if exists scores;
create table scores(
	id int unsigned not null auto_increment primary key,
	Metacritic_score int(3),
	game_id int unsigned not null,
	
	foreign key(game_id) references games(id)
);

INSERT INTO `scores` VALUES ('1', '85','1'),
('2','85','2'),
('3','90','3'),
('4','90','4'),
('5','90','5'),
('6','91','6'),
('7','91','7'),
('8','91','8'),
('9','91','9'),
('10','80','10'),
('11','80','11'),
('12','85','12'),
('13','85','13'),
('14','85','14'),
('15','97','15'),
('16','85','16'),
('17','96','17'),
('18','96','18'),
('19','93','19'),
('20','90','20'),
('21','88','21'),
('22','90','22'),
('23','86','23'),
('24','90','24'),
('25','95','25'),
('26','93','26'),
('27','96','27'),
('28','99','28'),
('29','86','29'),
('30','86','30'),
('31','90','31'),
('32','85','32'),
('33','80','33'),
('34','80','34'),
('35','80','35'),
('36','99','36'),
('37','85','37'),
('38','85','38'),
('39','88','39'),
('40','88','40'),
('41','92','41'),
('42','92','42'),
('43','94','43'),
('44','94','44'),
('45','90','45'),
('46','90','46'),
('47','85','47'),
('48','90','48'),
('49','95','49'),
('50','90','50'); 

drop table if exists delivery;
create table delivery(
	id int(10) unsigned not null auto_increment primary key,
	delivery_type ENUM('Courier', 'PickPoint', 'SDEK', 'Russian post office', 'From shop'),
	delivery_cost int
);

alter table delivery add column town varchar(50);

INSERT INTO delivery values ('1', 'Courier', '300', 'Moscow'), 
('2', 'PickPoint', '0', 'Moscow'),
('3', 'SDEK', '50', 'Moscow'),
('4', 'Russian post office', '50', 'Moscow'), 
('5', 'From shop', '0', 'Moscow'),
('6', 'Courier', '450', 'Saint Petersburgh'), 
('7', 'PickPoint', '150', 'Saint Petersburg'),
('8', 'SDEK', '100', 'Saint Petersburg'),
('9', 'Russian post office', '250', 'Saint Petersburg'), 
('10', 'From shop', '0', 'Saint Petersburg'),
('11', 'Courier', '600', 'Krasnodar'), 
('12', 'PickPoint', '250', 'Krasnodar'),
('13', 'SDEK', '200', 'Krasnodar'),
('14', 'Russian post office', '450', 'Krasnodar'), 
('15', 'From shop', '0', 'Krasnodar'),
('16', 'Courier', '350', 'Kazan'), 
('17', 'PickPoint', '190', 'Kazan'),
('18', 'SDEK', '180', 'Kazan'),
('19', 'Russian post office', '350', 'Kazan'), 
('20', 'From shop', '0', 'Kazan'),
('21', 'Courier', '500', 'Sochi'), 
('22', 'PickPoint', '350', 'Sochig'),
('23', 'SDEK', '400', 'Sochi'),
('24', 'Russian post office', '450', 'Sochi'), 
('25', 'From shop', '0', 'Sochi');

drop table if exists discounts;
create table discounts(
	discount_name varchar(100) not null,
	amount int unsigned not null 
);

INSERT INTO discounts VALUES ('Black Friday', '40'), ('New Year Sale', '35'), ('Summer Weekend', '30'), ('Usual Discounts', '20');

drop table if exists competition_winners;
create table competition_winners(
	competition_name varchar(70),
	description varchar(200),
	user_id int unsigned not null,
	
	foreign key(user_id) references users(id)
);

INSERT INTO `competition_winners` VALUES ('accusantium','Voluptatem quos sit qui. Aliquid tempora officiis quo minus ea aut. Et temporibus aut quia qui quasi enim sint. Eos est optio et velit hic magnam blanditiis. Deleniti rerum corporis qui velit dolorum.','10'),
('deleniti','Consectetur est consequatur ea amet delectus praesentium inventore. Qui omnis quo veritatis dicta. Molestias aut minus reiciendis impedit.','12'),
('maxime','Ipsa quis inventore eius quis quos incidunt. Deleniti incidunt vero odio accusantium et et sint ad. Quam sint et doloribus fuga vel est quia id. Quo assumenda neque sunt sint error ut quaerat.','31'),
('aut','Et quo omnis ut aperiam debitis eum doloribus. Enim fuga consequatur asperiores dignissimos voluptatibus quia. Voluptatem quis voluptas explicabo voluptas aut. Voluptas voluptatibus velit iure ipsum p','24'),
('numquam','Maiores et accusantium id repellat voluptatem dolore nobis. Et in ipsam quia architecto a debitis natus. Quis dolor autem eveniet ipsum sit. Similique aut et error nam sunt reprehenderit consequatur. ','15'),
('ea','Ipsum atque quia culpa eveniet qui libero. Accusamus maxime unde voluptatum id qui et eos voluptatem. Nihil repellat itaque iusto aspernatur. Voluptas tempore deserunt nostrum.','46'),
('nihil','Molestiae qui sit hic. Repellat quas alias id aut est. Cupiditate doloribus dolore explicabo quia sint.','37'),
('ut','Repellat dicta delectus eum atque et minus. Explicabo est enim cupiditate illum. Sunt iste dolor itaque quo consectetur laudantium libero.','28'),
('rem','Laborum incidunt sunt ea quam. Omnis ut eaque est molestias voluptatem. Dolorem mollitia ipsum illum nostrum.','19'),
('sequi','Qui voluptatum eos veniam et officia quia. Et ut totam et omnis voluptates autem impedit cumque. Ut reiciendis eum velit impedit id quod ratione.','40'); 

drop table if exists orders;
create table orders(
	id int(10) unsigned not null auto_increment primary key,
	user_id int unsigned not null,
	game_id int unsigned not null,
	amount int unsigned not null,
	delivery_id int unsigned not null,
	order_price int unsigned not null,
	
	foreign key(user_id) references users(id),
	foreign key(game_id) references games(id),
	foreign key(delivery_id) references delivery(id)
);