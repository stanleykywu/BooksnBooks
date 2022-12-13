CREATE DATABASE bookstore_db;

GRANT ALL PRIVILEGES ON bookstore_db.* TO 'webapp'@'%';

FLUSH PRIVILEGES;

USE bookstore_db;

CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(20) UNIQUE NOT NULL CHECK (username <> ''),
    password VARCHAR(255) NOT NULL,
    dob DATE,
    -- constraints that there must be an @ in the email address
    email VARCHAR(255) NOT NULL CHECK (email LIKE '%_@_%'),
    -- constraints that the phone number must be all numbers
    phone CHAR(10) CHECK (phone not like '%[^0-9]%'),
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL
);

insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('rpaslow0', '0kjwnVCLeKrB', '2011/11/13', 'rpaslow0@elpais.com', '5341610164', 'Rudolfo', 'Paslow');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('mmccart1', '7psoNi4MPW', null, 'mmccart1@indiatimes.com', '6340430082', 'Mae', 'McCart');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('sclausen2', 'ijIeVU5', null, 'sclausen2@nhs.uk', '5100742488', 'Seth', 'Clausen');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('hblanket3', 'Q4uBHdfBfv', null, 'hblanket3@woothemes.com', '7664899303', 'Hyatt', 'Blanket');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('cnewling4', 'KCbPg7YyPEas', '2014/08/31', 'cnewling4@biblegateway.com', '4584840792', 'Catharine', 'Newling');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('brillstone5', 'wuTOBlfQ', null, 'brillstone5@symantec.com', '3993235363', 'Brittany', 'Rillstone');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('tdulson6', 'C1w4i11uNk', null, 'tdulson6@stanford.edu', '6787979088', 'Timotheus', 'Dulson');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('stooke7', 'uG1m3q9eD4', null, 'stooke7@techcrunch.com', '2959077601', 'Starlin', 'Tooke');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('maslett8', 'By882hZQM', '2015/10/28', 'maslett8@usgs.gov', '6428489333', 'Minda', 'Aslett');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('wparham9', '4Bch2dDz', '2013/07/18', 'wparham9@mtv.com', '8478827919', 'Westleigh', 'Parham');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('acohna', 'JRss3Dj', null, 'acohna@sphinn.com', '1706093829', 'Avis', 'Cohn');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('vplentyb', 'eTBlDjNW', '2018/01/25', 'vplentyb@army.mil', '9250466293', 'Vivienne', 'Plenty');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('mgenneyc', 'bopzHew', '2011/08/26', 'mgenneyc@dailymail.co.uk', '2981184873', 'Manny', 'Genney');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('sredhollsd', 'tW2089JScd', '2006/10/24', 'sredhollsd@xrea.com', '2411445709', 'Suki', 'Redholls');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('mameerbege', 'IPXdLhkNSAcL', '2004/04/04', 'mameerbege@comsenz.com', '8614915047', 'Merlina', 'Ameer-Beg');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('rchatburnf', 'bhYp1aD8Zn', null, 'rchatburnf@java.com', '6092924218', 'Randie', 'Chatburn');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('mconnechieg', 'oZf5m8V', null, 'mconnechieg@cnet.com', '3736755996', 'Maud', 'Connechie');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('bocaineh', 'Lep6X5eaHi', '2001/12/05', 'bocaineh@liveinternet.ru', '9490148652', 'Brunhilde', 'O''Caine');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('aeileri', 'RhtQ7SC', null, 'aeileri@altervista.org', '4860737385', 'Angie', 'Eiler');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('bwealthallj', 'DIfiC9O', null, 'bwealthallj@senate.gov', '2549663152', 'Borg', 'Wealthall');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('dbuttfieldk', '4vrJXuyJ', null, 'dbuttfieldk@npr.org', '5598056062', 'Daron', 'Buttfield');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('hyashaevl', '3bo18coCHGfz', '2007/12/28', 'hyashaevl@census.gov', '6155200556', 'Hedvig', 'Yashaev');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('pbrigmanm', 'PkBzP1jM', '2013/07/24', 'pbrigmanm@digg.com', '1023587696', 'Paquito', 'Brigman');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('awoodyearen', 'lZ1k7C6HW', '2018/05/07', 'awoodyearen@cornell.edu', '0646959727', 'Art', 'Woodyeare');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('gbartlomiejo', 'gi9YtW', '2007/12/14', 'gbartlomiejo@amazon.co.uk', '0841821372', 'Giselle', 'Bartlomiej');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('dheinigp', 'xH2w5Mo', '2015/04/13', 'dheinigp@quantcast.com', '4374304096', 'Debi', 'Heinig');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('wcollisterq', 'LNQ5emW', null, 'wcollisterq@virginia.edu', '0243109156', 'Whitby', 'Collister');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('eandrockr', 'dTekJ3Ww', '2012/07/19', 'eandrockr@pen.io', '1497396182', 'Edmund', 'Androck');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('lbottjers', 'GbdHrr', null, 'lbottjers@wix.com', '1934405264', 'Lucienne', 'Bottjer');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('kmargarett', 'e7NhB5YFs', '2002/03/03', 'kmargarett@myspace.com', '8993115982', 'Kris', 'Margaret');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('cwalwoodu', 'sjbJ6Isr', '2019/05/29', 'cwalwoodu@live.com', '6890859634', 'Cullie', 'Walwood');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('cgreenroydv', 'BoVBG0JD', '2011/11/24', 'cgreenroydv@narod.ru', '6107342222', 'Cindy', 'Greenroyd');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('oatackw', 'pKS60TEwL', '2021/12/06', 'oatackw@i2i.jp', '7865838603', 'Odo', 'Atack');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('areamesx', 'wSUcdDhcte9Z', null, 'areamesx@oakley.com', '0982454252', 'Alvira', 'Reames');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('nsegary', 'ZBBCKCKccoN', '2022/08/22', 'nsegary@vimeo.com', '3718026279', 'Nissie', 'Segar');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('hwaggez', 'mj2ZcR0dDq', '2022/09/09', 'hwaggez@ask.com', '5951563968', 'Harper', 'Wagge');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('ecleugh10', 'IUmpJ6WlMYbK', null, 'ecleugh10@hp.com', '0241052319', 'Estrellita', 'Cleugh');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('ccaso11', 'urhFbuCqP', null, 'ccaso11@imageshack.us', '1395120013', 'Carla', 'Caso');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('ekrammer12', 'qv8nn9h', '2018/04/03', 'ekrammer12@usnews.com', '6672930418', 'Ervin', 'Krammer');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('lsporgeon13', 'aQqZ7f', '2013/05/01', 'lsporgeon13@mail.ru', '6818701299', 'Lloyd', 'Sporgeon');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('jfeore14', 'pxBNl1', '2009/09/09', 'jfeore14@g.co', '2483799779', 'Judie', 'Feore');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('astemp15', 'aJN87Dg8k0B', '2021/04/13', 'astemp15@technorati.com', '3219755275', 'Ax', 'Stemp');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('rrawcliffe16', '14WpcHs', '2011/12/09', 'rrawcliffe16@google.com.hk', '3635778192', 'Ringo', 'Rawcliffe');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('mshirtliff17', 'dk006Z', '2004/05/22', 'mshirtliff17@nhs.uk', '2490364324', 'Marie-jeanne', 'Shirtliff');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('trigts18', '8eG8KVMVL0x', '2006/02/26', 'trigts18@tinypic.com', '7144113259', 'Timmy', 'Rigts');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('gmarages19', 'zGx6QV3d9', null, 'gmarages19@discovery.com', '7360074312', 'Gwyneth', 'Marages');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('dpilling1a', 'aYgUp58ielC', '2012/01/04', 'dpilling1a@stumbleupon.com', '5740666929', 'Dulcine', 'Pilling');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('landreone1b', '36xSBnF', null, 'landreone1b@hp.com', '2680140990', 'Leoine', 'Andreone');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('pgrabeham1c', 'T1WR1Beo4', '2008/09/23', 'pgrabeham1c@facebook.com', '4428252927', 'Pamela', 'Grabeham');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('rseacroft1d', 'W5pGTW', '2020/05/12', 'rseacroft1d@alexa.com', '6399973007', 'Ricoriki', 'Seacroft');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('benrrico1e', 'VuJ7fli0F', '2012/10/26', 'benrrico1e@ifeng.com', '3768094189', 'Briney', 'Enrrico');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('jswannell1f', 'ZWLzqCjn8', null, 'jswannell1f@ucla.edu', '4449869044', 'Joseph', 'Swannell');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('ooxlee1g', 'OdPM2PamlSM', null, 'ooxlee1g@geocities.jp', '7908493130', 'Opal', 'Oxlee');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('mdavidman1h', 'WphOdUH', '2013/04/06', 'mdavidman1h@imageshack.us', '8145501113', 'Michaeline', 'Davidman');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('rbynold1i', 'Uv60eNV', null, 'rbynold1i@google.fr', '1223177890', 'Rossie', 'Bynold');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('chedditch1j', 'PwNnTgLz', '2012/03/02', 'chedditch1j@springer.com', '3313627609', 'Catharine', 'Hedditch');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('gflanner1k', 'Esu9XBIrKbjR', '2013/07/01', 'gflanner1k@google.com.br', '0777378027', 'Germain', 'Flanner');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('sblaxley1l', 'P4boiSOC84', '2019/05/31', 'sblaxley1l@netscape.com', '0060086157', 'Sarine', 'Blaxley');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('hfrantzeni1m', 'euRuxn', null, 'hfrantzeni1m@qq.com', '5188920662', 'Hamilton', 'Frantzeni');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('amackiewicz1n', 'YYukJwgp', '2004/08/12', 'amackiewicz1n@narod.ru', '7366003786', 'Alfons', 'Mackiewicz');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('etows1o', 'UlSK8wx9yNq', '2012/02/10', 'etows1o@g.co', '1570427054', 'Esme', 'Tows');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('hslowey1p', '9chzd4f7ik', '2011/02/25', 'hslowey1p@arizona.edu', '3871971553', 'Hayward', 'Slowey');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('rclimo1q', 'U7KOPoN', null, 'rclimo1q@yahoo.com', '3887816307', 'Ruprecht', 'Climo');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('lcowins1r', 'lTW4IUVjH5', '2017/06/28', 'lcowins1r@marketwatch.com', '3288596636', 'Laughton', 'Cowins');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('afraczkiewicz1s', 'HngUURjuX3', '2021/12/15', 'afraczkiewicz1s@usa.gov', '6555336234', 'Alano', 'Fraczkiewicz');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('acohani1t', 'cHoOZR', null, 'acohani1t@tripod.com', '4227750512', 'Ange', 'Cohani');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('pcrisell1u', 'aH5vNhVIi0fc', null, 'pcrisell1u@adobe.com', '8677644830', 'Pammi', 'Crisell');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('cgunson1v', 'ivqL8VFKGQY', '2014/03/06', 'cgunson1v@ucsd.edu', '9647128932', 'Crissie', 'Gunson');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('nduddan1w', 'HyincfEoDhMq', null, 'nduddan1w@google.de', '9918602503', 'Nollie', 'Duddan');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('tradenhurst1x', 'XYDTalZh9hA4', '2011/09/26', 'tradenhurst1x@etsy.com', '6854821045', 'Tabbitha', 'Radenhurst');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('gizatson1y', '5CiXa8n', '2018/05/21', 'gizatson1y@twitter.com', '1375107674', 'Grace', 'Izatson');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('frobens1z', 'NJQemUYg2FZ3', '2019/04/15', 'frobens1z@topsy.com', '4665966699', 'Frederigo', 'Robens');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('lthomlinson20', 'hweWlMXhba61', null, 'lthomlinson20@about.com', '7925770805', 'Lane', 'Thomlinson');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('rskene21', 'u9AfRvhsr3', null, 'rskene21@over-blog.com', '8551035762', 'Rebekah', 'Skene');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('egutowska22', 'x8jAPluQb', null, 'egutowska22@psu.edu', '3074771135', 'Elmer', 'Gutowska');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('lgewer23', 'yuN7KI0Pzs9', '2016/05/03', 'lgewer23@dedecms.com', '7724841780', 'Lurette', 'Gewer');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('jyerson24', 'dw147zfKX883', '2017/08/06', 'jyerson24@about.me', '3543459422', 'Juditha', 'Yerson');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('nwenman25', 'vtwU8Yc', null, 'nwenman25@sourceforge.net', '6228872117', 'Nance', 'Wenman');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('vcowterd26', 'UW240cM', null, 'vcowterd26@jimdo.com', '4082582851', 'Virgie', 'Cowterd');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('tlandal27', 'u9n0ce', null, 'tlandal27@epa.gov', '4608218719', 'Thornie', 'Landal');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('mlarsen28', 'RpYYqV', '2014/03/13', 'mlarsen28@yahoo.co.jp', '0531088863', 'Miltie', 'Larsen');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('uhassin29', 'kDIaS1c829Tj', '2017/01/30', 'uhassin29@hostgator.com', '0141368322', 'Udall', 'Hassin');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('gvargas2a', 'ZzV2Obp', '2009/06/30', 'gvargas2a@multiply.com', '1584332913', 'Granny', 'Vargas');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('lscarr2b', 'LtEjOzYOr', '2010/05/13', 'lscarr2b@tuttocitta.it', '9721893315', 'Lezlie', 'Scarr');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('pbridgman2c', 'XPv2uIlB', '2015/03/02', 'pbridgman2c@hexun.com', '2289160768', 'Pearce', 'Bridgman');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('lpaulusch2d', 'YYh19HBLxf', null, 'lpaulusch2d@ezinearticles.com', '9569908580', 'Leesa', 'Paulusch');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('jbrian2e', 'Sd9R8fH', null, 'jbrian2e@indiegogo.com', '8316542897', 'Jinny', 'Brian');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('cebbetts2f', 'hVFf5WhG', '2020/03/16', 'cebbetts2f@themeforest.net', '7885124460', 'Carma', 'Ebbetts');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('ecolmer2g', '9pIllABtsc', '2003/07/03', 'ecolmer2g@nydailynews.com', '0552716650', 'Evania', 'Colmer');
insert into Customer (username, password, dob, email, phone, first_name, last_name) values ('modde2h', 'TGmjkyS', null, 'modde2h@nbcnews.com', '3738779558', 'Martyn', 'Odde');


CREATE TABLE Author (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(20) UNIQUE NOT NULL CHECK (username <> ''),
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL
);

insert into Author (username, password, first_name, last_name) values ('agrestye0', 'e35vp89QxP', 'Alisun', 'Grestye');
insert into Author (username, password, first_name, last_name) values ('ctrench1', '4VsWB0dxcY', 'Celestine', 'Trench');
insert into Author (username, password, first_name, last_name) values ('cyankishin2', '7fxi84ZE', 'Christen', 'Yankishin');
insert into Author (username, password, first_name, last_name) values ('bdavydoch3', 'W6VgeX4koI', 'Brit', 'Davydoch');
insert into Author (username, password, first_name, last_name) values ('bkirsche4', 'r51d1NfCsyX', 'Bradly', 'Kirsche');
insert into Author (username, password, first_name, last_name) values ('kbaylis5', 'gjljvRvzq4', 'Karl', 'Baylis');
insert into Author (username, password, first_name, last_name) values ('eolin6', 'FkOsz9S', 'Ema', 'Olin');
insert into Author (username, password, first_name, last_name) values ('wlovatt7', 'M2VZzk1F9bnA', 'Wilhelm', 'Lovatt');
insert into Author (username, password, first_name, last_name) values ('rstonhewer8', 'C9mv7UyTo', 'Reta', 'Stonhewer');
insert into Author (username, password, first_name, last_name) values ('bbawles9', 'WC7w9I0U', 'Blythe', 'Bawles');
insert into Author (username, password, first_name, last_name) values ('ahiersa', '8NPzaOOz4u7', 'Aland', 'Hiers');
insert into Author (username, password, first_name, last_name) values ('ademichettib', 'Qt5laO0Z6jtu', 'Arnie', 'De Michetti');
insert into Author (username, password, first_name, last_name) values ('abaxendalec', 'sIWA1Ph0jOwO', 'Alden', 'Baxendale');
insert into Author (username, password, first_name, last_name) values ('lwattinghamd', 'Jl5oypdz4h', 'Leanna', 'Wattingham');
insert into Author (username, password, first_name, last_name) values ('aputleye', 'FUYUyDxF0Nep', 'Alika', 'Putley');
insert into Author (username, password, first_name, last_name) values ('oriddifordf', 'ugbJRi', 'Ozzie', 'Riddiford');
insert into Author (username, password, first_name, last_name) values ('lwongg', 'yJmQPEvRcqVO', 'Leanna', 'Wong');
insert into Author (username, password, first_name, last_name) values ('lmcgoonh', 'X9Ydj1do', 'Louis', 'McGoon');
insert into Author (username, password, first_name, last_name) values ('mweinsi', 'jA7srSQIh', 'Maurita', 'Weins');
insert into Author (username, password, first_name, last_name) values ('ssavoryj', '7ah25mkhN4b', 'Stefan', 'Savory');
insert into Author (username, password, first_name, last_name) values ('sleupoldtk', 'jc8miMgn', 'Susy', 'Leupoldt');
insert into Author (username, password, first_name, last_name) values ('pgatfieldl', 'gxOPeS2', 'Pebrook', 'Gatfield');
insert into Author (username, password, first_name, last_name) values ('dhindhaughm', 'hDRIVfqg', 'Dana', 'Hindhaugh');
insert into Author (username, password, first_name, last_name) values ('rsterndalen', 'KRR3G7', 'Rahal', 'Sterndale');
insert into Author (username, password, first_name, last_name) values ('egrinstedo', 'Nkqjmo08THtc', 'Elfrieda', 'Grinsted');
insert into Author (username, password, first_name, last_name) values ('cproskep', 'iNzALInFY4d', 'Cary', 'Proske');
insert into Author (username, password, first_name, last_name) values ('dgrigorushkinq', 'ZkhEhgzH7V9', 'Dulciana', 'Grigorushkin');
insert into Author (username, password, first_name, last_name) values ('cjosephsenr', 'xikWehB', 'Culver', 'Josephsen');
insert into Author (username, password, first_name, last_name) values ('fhindges', 'LbrxnQ8oPX', 'Floyd', 'Hindge');
insert into Author (username, password, first_name, last_name) values ('dwaumsleyt', 'Jpg0r9rvKoe', 'Dante', 'Waumsley');
insert into Author (username, password, first_name, last_name) values ('jgastickeu', 'GtQqP2VzO', 'Jacquenette', 'Gasticke');
insert into Author (username, password, first_name, last_name) values ('bhuotv', 'cc2lBWdP', 'Bo', 'Huot');
insert into Author (username, password, first_name, last_name) values ('rwinchcombew', 'yCpPVW5', 'Rubin', 'Winchcombe');
insert into Author (username, password, first_name, last_name) values ('llegallx', 'TRNpoP', 'Luelle', 'Le Gall');
insert into Author (username, password, first_name, last_name) values ('jclowy', 'Bcju9yZ', 'Judah', 'Clow');
insert into Author (username, password, first_name, last_name) values ('rjatczakz', 'dLpmH3f', 'Roda', 'Jatczak');
insert into Author (username, password, first_name, last_name) values ('fmeus10', 'FUiQna8iGAOr', 'Fernande', 'Meus');
insert into Author (username, password, first_name, last_name) values ('cemerton11', 'J76uBHxD2kk', 'Chick', 'Emerton');
insert into Author (username, password, first_name, last_name) values ('clympany12', 'oKGAhz5', 'Cortney', 'Lympany');
insert into Author (username, password, first_name, last_name) values ('foke13', 'wPeCx8sWSht', 'Fayth', 'Oke');
insert into Author (username, password, first_name, last_name) values ('hdicker14', 'pTtuC7tKZ0', 'Halley', 'Dicker');
insert into Author (username, password, first_name, last_name) values ('ybourdon15', 'ksItvwKsow', 'Yalonda', 'Bourdon');
insert into Author (username, password, first_name, last_name) values ('mjohanning16', '12aPCuVs4gy', 'Michel', 'Johanning');
insert into Author (username, password, first_name, last_name) values ('kida17', 'Tte1aM', 'Kristian', 'Ida');
insert into Author (username, password, first_name, last_name) values ('ngradley18', 'tDsUpULISh', 'Noemi', 'Gradley');
insert into Author (username, password, first_name, last_name) values ('mdobson19', 'LGpEdmlizE1', 'Marcello', 'Dobson');
insert into Author (username, password, first_name, last_name) values ('astovine1a', 'Rq0rVCgB', 'Allard', 'Stovine');
insert into Author (username, password, first_name, last_name) values ('ccaldicot1b', 'SGGq4hJlmW', 'Carlos', 'Caldicot');
insert into Author (username, password, first_name, last_name) values ('abutrimovich1c', '5WKivl8bMh8', 'Annabella', 'Butrimovich');
insert into Author (username, password, first_name, last_name) values ('amckew1d', 'zqFSnh9CG9', 'Aubrie', 'McKew');
insert into Author (username, password, first_name, last_name) values ('igronav1e', 'TsGMXFWIuljA', 'Ileane', 'Gronav');
insert into Author (username, password, first_name, last_name) values ('rgieraths1f', 'NpgJfPt0Yo', 'Rodie', 'Gieraths');
insert into Author (username, password, first_name, last_name) values ('klaister1g', 'M1V73eVunDnq', 'Katha', 'Laister');
insert into Author (username, password, first_name, last_name) values ('rfowles1h', 'PHUVSZzDwayJ', 'Reyna', 'Fowles');
insert into Author (username, password, first_name, last_name) values ('ggallardo1i', 'L5rtvyWYnT', 'Goddard', 'Gallardo');
insert into Author (username, password, first_name, last_name) values ('afickling1j', 'ED6nUhmw', 'Allard', 'Fickling');
insert into Author (username, password, first_name, last_name) values ('bsimononsky1k', 'XgeNVFBl', 'Briney', 'Simononsky');
insert into Author (username, password, first_name, last_name) values ('hreddell1l', 'DEyIenl04', 'Herb', 'Reddell');
insert into Author (username, password, first_name, last_name) values ('pcolombier1m', '7TDTlyNi', 'Pavlov', 'Colombier');
insert into Author (username, password, first_name, last_name) values ('cfrancesc1n', 'PSBNhwGC', 'Curran', 'Francesc');
insert into Author (username, password, first_name, last_name) values ('ahayhurst1o', 'gps4Rnd', 'Andrea', 'Hayhurst');
insert into Author (username, password, first_name, last_name) values ('bcecely1p', 'mXSM5LxY8', 'Brita', 'Cecely');
insert into Author (username, password, first_name, last_name) values ('hnoon1q', 'iDoxCe2r1', 'Hewet', 'Noon');
insert into Author (username, password, first_name, last_name) values ('hwoolhouse1r', '7PkMWsS', 'Hewet', 'Woolhouse');
insert into Author (username, password, first_name, last_name) values ('whiley1s', '8hzhLl9', 'Winna', 'Hiley');
insert into Author (username, password, first_name, last_name) values ('gfifoot1t', 'SMPNmSPCG', 'George', 'Fifoot');
insert into Author (username, password, first_name, last_name) values ('kastie1u', 'YRkYdFqm2n', 'Kristy', 'Astie');
insert into Author (username, password, first_name, last_name) values ('mtourmell1v', 'tg5vpD3', 'Marleen', 'Tourmell');
insert into Author (username, password, first_name, last_name) values ('mschaben1w', '1KrHbt', 'Morty', 'Schaben');
insert into Author (username, password, first_name, last_name) values ('cwareing1x', '1sbOyFrrMo', 'Catlin', 'Wareing');


CREATE TABLE Book (
    -- isbn must be 13 characters long and all numbers
    isbn CHAR(13) PRIMARY KEY CHECK (isbn NOT LIKE '%[^0-9]%'),
    author_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    -- price must be non-negative
    price FLOAT NOT NULL CHECK (price >= 0),
    CONSTRAINT book_fk_1
        FOREIGN KEY (author_id) REFERENCES Author(author_id)
);

insert into Book (isbn, author_id, title, price) values ('3175121826966', 37, 'Rocketship X-M', 15.32);
insert into Book (isbn, author_id, title, price) values ('0746688760361', 8, 'Guy and a Gal, A (En kille och en tjej)', 41.3);
insert into Book (isbn, author_id, title, price) values ('4965772698397', 48, 'Tormented', 18.04);
insert into Book (isbn, author_id, title, price) values ('2828281585483', 11, 'Where the Road Meets the Sun', 20.6);
insert into Book (isbn, author_id, title, price) values ('5750382606340', 53, 'Samaritan, The', 29.94);
insert into Book (isbn, author_id, title, price) values ('2406632327575', 61, 'Immigrants (L.A. Dolce Vita)', 36.99);
insert into Book (isbn, author_id, title, price) values ('6040517182471', 24, 'The Woman in Black 2: Angel of Death', 30.55);
insert into Book (isbn, author_id, title, price) values ('6075042863369', 57, 'His Kind of Woman', 21.0);
insert into Book (isbn, author_id, title, price) values ('2331384892543', 30, 'Don Q Son of Zorro', 36.2);
insert into Book (isbn, author_id, title, price) values ('2085920313813', 58, 'Dead Man', 31.18);
insert into Book (isbn, author_id, title, price) values ('4590056661039', 65, 'Seducing Doctor Lewis (Grande séduction, La)', 44.6);
insert into Book (isbn, author_id, title, price) values ('4988488691487', 15, 'God Said ''Ha!''', 46.51);
insert into Book (isbn, author_id, title, price) values ('3064954008208', 42, 'Nixon by Nixon: In His Own Words', 28.61);
insert into Book (isbn, author_id, title, price) values ('6742474931898', 14, 'OT: Our Town', 20.69);
insert into Book (isbn, author_id, title, price) values ('4934892171798', 10, 'Goodbye Girl, The', 37.25);
insert into Book (isbn, author_id, title, price) values ('0702035100675', 54, 'I Smile Back', 47.33);
insert into Book (isbn, author_id, title, price) values ('1805362213480', 48, 'Anne of Green Gables', 24.7);
insert into Book (isbn, author_id, title, price) values ('1824621154650', 56, 'Homem Que Desafiou o Diabo, O', 49.06);
insert into Book (isbn, author_id, title, price) values ('6919172321788', 2, 'Mark of Cain, The', 19.62);
insert into Book (isbn, author_id, title, price) values ('5798821007279', 45, 'Trust', 22.49);
insert into Book (isbn, author_id, title, price) values ('7586257111816', 46, 'Django Unchained', 16.46);
insert into Book (isbn, author_id, title, price) values ('5689431167786', 53, 'R100', 10.66);
insert into Book (isbn, author_id, title, price) values ('3328587008504', 10, 'Desperado', 39.37);
insert into Book (isbn, author_id, title, price) values ('1608712506583', 27, 'Four Nights with Anna (Cztery noce z Anna)', 40.32);
insert into Book (isbn, author_id, title, price) values ('0779915518367', 34, 'Color of Pomegranates, The (Sayat Nova)', 23.13);
insert into Book (isbn, author_id, title, price) values ('6168754108707', 2, 'Benigni', 16.9);
insert into Book (isbn, author_id, title, price) values ('3761301372483', 7, 'Night Patrol', 40.07);
insert into Book (isbn, author_id, title, price) values ('7345182014022', 61, 'Liar''s Dice', 38.49);
insert into Book (isbn, author_id, title, price) values ('6514648542280', 58, 'Don''t Look Now', 27.8);
insert into Book (isbn, author_id, title, price) values ('9010632417394', 45, 'Man in the Iron Mask, The', 17.33);
insert into Book (isbn, author_id, title, price) values ('1007689811112', 23, '52 Pick-Up', 49.17);
insert into Book (isbn, author_id, title, price) values ('4877557941500', 63, 'Armageddon 2012', 46.15);
insert into Book (isbn, author_id, title, price) values ('9506289244795', 7, 'Contract Killers', 34.78);
insert into Book (isbn, author_id, title, price) values ('0420090505310', 32, 'Trip to the Moon, A (Voyage dans la lune, Le)', 48.21);
insert into Book (isbn, author_id, title, price) values ('2940531003779', 70, 'How I Unleashed World War II (Jak rozpetalem II wojne swiatowa)', 39.6);
insert into Book (isbn, author_id, title, price) values ('9641425338177', 38, 'Ah of Life, The', 21.66);
insert into Book (isbn, author_id, title, price) values ('6505950509609', 70, 'Devil at 4 O''Clock, The', 23.24);
insert into Book (isbn, author_id, title, price) values ('0612389630082', 60, 'Polyester', 22.76);
insert into Book (isbn, author_id, title, price) values ('4833846334487', 31, 'Dinner, The (Diner, Het)', 10.57);
insert into Book (isbn, author_id, title, price) values ('7694438567422', 45, 'Racing Dreams', 43.14);
insert into Book (isbn, author_id, title, price) values ('9279900557474', 26, 'Divorcee, The', 29.47);
insert into Book (isbn, author_id, title, price) values ('1274811895410', 69, 'Arizona Raiders', 35.97);
insert into Book (isbn, author_id, title, price) values ('5030833652888', 18, 'Horror of Dracula (Dracula)', 18.03);
insert into Book (isbn, author_id, title, price) values ('2450426258266', 36, 'Wonder Man', 48.45);
insert into Book (isbn, author_id, title, price) values ('8774997001582', 46, 'Bridge, The', 29.52);
insert into Book (isbn, author_id, title, price) values ('9442166494478', 49, 'Long Way Home, The', 42.73);
insert into Book (isbn, author_id, title, price) values ('0968519739119', 10, 'Unhook the Stars', 33.85);
insert into Book (isbn, author_id, title, price) values ('2673111461611', 57, 'Show of Force, A', 46.15);
insert into Book (isbn, author_id, title, price) values ('8654215397111', 65, 'Solstice', 10.17);
insert into Book (isbn, author_id, title, price) values ('0661304046372', 51, 'Tale of Two Cities, A', 37.72);
insert into Book (isbn, author_id, title, price) values ('5108544399888', 57, 'Driver, The', 30.99);
insert into Book (isbn, author_id, title, price) values ('4581929454159', 52, 'A Pistol For Ringo', 43.84);
insert into Book (isbn, author_id, title, price) values ('0209575271034', 48, 'Ghostmaker, The (Box of Shadows)', 34.96);
insert into Book (isbn, author_id, title, price) values ('4942350589482', 27, 'Gossip', 44.89);
insert into Book (isbn, author_id, title, price) values ('0158406074482', 62, 'Kate & Leopold', 23.16);
insert into Book (isbn, author_id, title, price) values ('5051393663475', 27, 'Attack of the Mushroom People (Matango)', 48.99);
insert into Book (isbn, author_id, title, price) values ('2650606851630', 5, 'A Year Along the Abandoned Road', 35.55);
insert into Book (isbn, author_id, title, price) values ('3163807094444', 17, 'Dedication', 45.14);
insert into Book (isbn, author_id, title, price) values ('7064852417882', 27, 'In Order Not to Be Here', 23.09);
insert into Book (isbn, author_id, title, price) values ('0337524799382', 22, 'Brightness (Yeelen)', 48.27);
insert into Book (isbn, author_id, title, price) values ('8411342521620', 43, 'Rosewood Lane', 48.28);
insert into Book (isbn, author_id, title, price) values ('1917946512927', 55, 'Barefoot Gen (Hadashi no Gen)', 22.04);
insert into Book (isbn, author_id, title, price) values ('5021228146116', 55, 'Winterhawk', 23.21);
insert into Book (isbn, author_id, title, price) values ('8279535721954', 58, 'Futureworld', 46.11);
insert into Book (isbn, author_id, title, price) values ('6373334145407', 9, 'From Above', 43.7);
insert into Book (isbn, author_id, title, price) values ('5213154951103', 44, 'Green Lantern: First Flight', 48.92);
insert into Book (isbn, author_id, title, price) values ('1874077570431', 11, 'Blackball', 47.8);
insert into Book (isbn, author_id, title, price) values ('3952708240719', 39, 'Yumurta (Egg)', 42.69);
insert into Book (isbn, author_id, title, price) values ('5697565871000', 35, 'Newsfront', 20.18);
insert into Book (isbn, author_id, title, price) values ('4481927784786', 46, 'Brightness (Yeelen)', 47.17);
insert into Book (isbn, author_id, title, price) values ('1951124939768', 65, 'Pixar Story, The', 26.28);
insert into Book (isbn, author_id, title, price) values ('5301366705863', 61, 'Dreaming of Joseph Lees', 48.12);
insert into Book (isbn, author_id, title, price) values ('4453360571450', 69, 'Some Folks Call It a Sling Blade', 16.24);
insert into Book (isbn, author_id, title, price) values ('7037825257737', 66, 'Elephant', 30.02);
insert into Book (isbn, author_id, title, price) values ('5469413919041', 42, 'Open Water 2: Adrift', 45.84);
insert into Book (isbn, author_id, title, price) values ('0476677671251', 28, 'Desperate Search', 10.53);
insert into Book (isbn, author_id, title, price) values ('7853127389855', 10, 'Parisienne, La (Une parisienne)', 10.33);
insert into Book (isbn, author_id, title, price) values ('4738321357322', 43, 'Alex in Wonderland', 41.88);
insert into Book (isbn, author_id, title, price) values ('9792754273147', 68, 'Jazz Singer, The', 34.12);
insert into Book (isbn, author_id, title, price) values ('8885312807337', 52, 'House II: The Second Story', 45.0);
insert into Book (isbn, author_id, title, price) values ('4060641496357', 44, 'Comfort of Strangers, The', 31.62);
insert into Book (isbn, author_id, title, price) values ('8538104246454', 12, 'Stepmom', 37.77);
insert into Book (isbn, author_id, title, price) values ('6588794264412', 26, 'Sabata', 46.76);
insert into Book (isbn, author_id, title, price) values ('4723971262927', 67, 'Undertaker and His Pals, The', 22.78);
insert into Book (isbn, author_id, title, price) values ('7567919044279', 22, 'Child''s Christmas in Wales, A', 28.51);
insert into Book (isbn, author_id, title, price) values ('7773060306216', 18, 'Whole Nine Yards, The', 20.7);
insert into Book (isbn, author_id, title, price) values ('6748305901885', 27, 'Brokedown Palace', 24.51);
insert into Book (isbn, author_id, title, price) values ('8717606555137', 65, 'Nothing But the Night', 32.79);
insert into Book (isbn, author_id, title, price) values ('2996779664206', 52, 'Three Lives and Only One Death (Trois vies & une seule mort)', 39.46);
insert into Book (isbn, author_id, title, price) values ('9654060780110', 20, 'Miss and the Doctors (Tirez la langue, mademoiselle)', 28.24);
insert into Book (isbn, author_id, title, price) values ('8036949797772', 36, 'SpongeBob SquarePants Movie, The', 21.38);
insert into Book (isbn, author_id, title, price) values ('1639013170551', 59, 'The Indian Fighter', 18.78);
insert into Book (isbn, author_id, title, price) values ('4253402665402', 52, 'Tale of Tales (Skazka skazok)', 49.37);
insert into Book (isbn, author_id, title, price) values ('2534883800799', 51, 'Dirty Money (Un flic)', 22.38);
insert into Book (isbn, author_id, title, price) values ('4764733989055', 32, 'Faces of Death 5', 28.92);
insert into Book (isbn, author_id, title, price) values ('0414592028423', 27, 'Istanbul', 32.7);
insert into Book (isbn, author_id, title, price) values ('5269448963754', 12, 'Shaolin Temple 2: Kids from Shaolin (Shao Lin xiao zi) (Kids from Shaolin)', 40.08);
insert into Book (isbn, author_id, title, price) values ('3890723810291', 40, 'Dead Men Tell', 10.48);
insert into Book (isbn, author_id, title, price) values ('4351553574973', 15, 'Puppet Master III: Toulon''s Revenge', 28.89);
insert into Book (isbn, author_id, title, price) values ('1937693311075', 31, 'Buckskin Frontier', 22.86);


CREATE TABLE Library (
    library_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    username VARCHAR(20) UNIQUE NOT NULL CHECK (username <> ''),
    password VARCHAR(255) NOT NULL,
    town VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL
);

insert into Library (name, username, password, town, country) values ('Hackett, Carter and Paucek', 'wjeskin0', '80dW1EbJQtSA', 'Baton Rouge', 'United States');
insert into Library (name, username, password, town, country) values ('Nienow-Dickinson', 'gpetruskevich1', '3GqtVLDz4', 'Baranoa', 'Colombia');
insert into Library (name, username, password, town, country) values ('Mueller and Sons', 'maronov2', 'ZSOaOd6CR', 'Dalongzhan', 'China');
insert into Library (name, username, password, town, country) values ('Kirlin, Ryan and Wiza', 'pberr3', '671tGLn', 'Changling', 'China');
insert into Library (name, username, password, town, country) values ('Kohler, Rolfson and Dietrich', 'akirkpatrick4', 'kMWQ7EBozY5w', 'Cikadu', 'Indonesia');
insert into Library (name, username, password, town, country) values ('Schroeder Inc', 'mbiasini5', 'Fu0y0J89gHOk', 'Turpay', 'Peru');
insert into Library (name, username, password, town, country) values ('Harris, Tillman and Stracke', 'sgoggins6', 'b2RMzM9', 'Tugusirna', 'Indonesia');
insert into Library (name, username, password, town, country) values ('Deckow-Denesik', 'htopper7', 'zFLg2SCA', 'Sanjia', 'China');
insert into Library (name, username, password, town, country) values ('Harber Group', 'mtorvey8', 'yZDcNeVS', 'Xianbao', 'China');
insert into Library (name, username, password, town, country) values ('Berge and Sons', 'acowup9', '305DW8Rk', 'Xincheng Chengguanzhen', 'China');
insert into Library (name, username, password, town, country) values ('McLaughlin, Bosco and Waelchi', 'lkinglakea', 'XKa2vHhjIJbY', 'Makamba', 'Burundi');
insert into Library (name, username, password, town, country) values ('Windler, Jones and Ryan', 'gwellbankb', 'N4MJNv6', 'Oropéndolas', 'Honduras');
insert into Library (name, username, password, town, country) values ('Bashirian Group', 'abrotherhoodc', '7AsPFrX', 'Xingzhen', 'China');
insert into Library (name, username, password, town, country) values ('Ernser-Kertzmann', 'jfurzed', 'cadC8nnUQu', 'Karlstad', 'Sweden');
insert into Library (name, username, password, town, country) values ('Cummerata-Deckow', 'gchimentie', '78MCaA', 'Xihu', 'China');
insert into Library (name, username, password, town, country) values ('Mraz, Reinger and Blick', 'nmarderf', 'bN1PYp1K5', 'Shuitianzhuang', 'China');
insert into Library (name, username, password, town, country) values ('Hagenes, Smith and Cummings', 'wchellg', '6xTfS0P1KHB', 'Slovenj Gradec', 'Slovenia');
insert into Library (name, username, password, town, country) values ('Stiedemann, Kozey and Swaniawski', 'blitherboroughh', 'mIUYLthyjVYQ', 'Alfta', 'Sweden');
insert into Library (name, username, password, town, country) values ('Abbott and Sons', 'iscreechi', 'fwpiGs6z', 'Passo Fundo', 'Brazil');
insert into Library (name, username, password, town, country) values ('O''Keefe, Koss and Moore', 'scosfordj', 'Ugqgi9j2', 'Nossa Senhora do Socorro', 'Brazil');
insert into Library (name, username, password, town, country) values ('Bauch, Buckridge and Kozey', 'kpassionk', '2LYwZSFXX', 'Jeding', 'Indonesia');
insert into Library (name, username, password, town, country) values ('Marks Inc', 'rmenichillol', 'q4lgNzI', 'Bokor', 'Indonesia');
insert into Library (name, username, password, town, country) values ('Hilll, Kuhic and Olson', 'afishbym', 'EfMBmhMf', 'Sukacai Tengah', 'Indonesia');
insert into Library (name, username, password, town, country) values ('Prohaska-Ratke', 'epearnen', '4bozIhV2A6xx', 'Linköping', 'Sweden');
insert into Library (name, username, password, town, country) values ('Larson Inc', 'cblacktino', 'Dhnz4Pv6', 'Plaeng Yao', 'Thailand');
insert into Library (name, username, password, town, country) values ('Hegmann-Paucek', 'whowelsp', 'LQPMOiS4o', 'La Caleta Culebras', 'Peru');
insert into Library (name, username, password, town, country) values ('Rohan-Harvey', 'rlevetq', 'ctsTgBZ7p', 'Potoru', 'Sierra Leone');
insert into Library (name, username, password, town, country) values ('Roob, Lueilwitz and Mueller', 'ahallinr', 'XwSlnRmyn', 'Tudela', 'Philippines');
insert into Library (name, username, password, town, country) values ('Keebler-Hammes', 'xbloomans', 'gyQfDUDPFu0W', 'Vila Chã', 'Portugal');
insert into Library (name, username, password, town, country) values ('Dare LLC', 'amattamt', 'Rwgs5Y4K', 'Zárkos', 'Greece');
insert into Library (name, username, password, town, country) values ('O''Hara, Dickinson and Roob', 'elarrettu', 'snQ8Twg', 'Buarcos', 'Portugal');
insert into Library (name, username, password, town, country) values ('Erdman and Sons', 'tloudianv', '5ekJKXHFX', 'Kyra', 'Russia');
insert into Library (name, username, password, town, country) values ('Sawayn-Gerhold', 'ascudamorew', 'emxo6ye', 'Lusacan', 'Philippines');
insert into Library (name, username, password, town, country) values ('McDermott LLC', 'rseebertx', 'pOtpCz', 'Gongrong', 'China');
insert into Library (name, username, password, town, country) values ('Kunde and Sons', 'swestbyy', 'zyre9jIC1uAA', 'Kula', 'Bulgaria');
insert into Library (name, username, password, town, country) values ('Gaylord LLC', 'jhallfordz', 'iCYzS3EdZ', 'Capela', 'Portugal');
insert into Library (name, username, password, town, country) values ('Mueller and Sons', 'saxleby10', 'rxexGVmjPS', 'El Hatillo', 'Venezuela');
insert into Library (name, username, password, town, country) values ('Lindgren-Schuppe', 'hinsull11', '5k03gA', 'Árgos', 'Greece');
insert into Library (name, username, password, town, country) values ('Nolan, Rippin and Kshlerin', 'nidill12', 'rrw8FpIOS', 'Boa Vista', 'Brazil');
insert into Library (name, username, password, town, country) values ('Stoltenberg, Waelchi and Haag', 'nposselt13', 'mdijyE1OyIvT', 'Nikki', 'Benin');
insert into Library (name, username, password, town, country) values ('Keebler, Torp and Wintheiser', 'ejessard14', 'aM6VYU2B8', 'Jiuguan', 'China');
insert into Library (name, username, password, town, country) values ('Jakubowski, Kiehn and Heathcote', 'wgrabiec15', 'S8lzlN0I8K', 'Kabba', 'Nigeria');
insert into Library (name, username, password, town, country) values ('Bruen Group', 'nhalesworth16', 'ZEwXo0JaP', 'Lapa', 'Brazil');
insert into Library (name, username, password, town, country) values ('Sipes, Smitham and Terry', 'nkrysiak17', 'Qq061xu', 'Iława', 'Poland');
insert into Library (name, username, password, town, country) values ('Williamson Inc', 'mcongreve18', 'HIpjnh2', 'Kutao', 'China');
insert into Library (name, username, password, town, country) values ('Wilderman and Sons', 'jheakins19', 'qC4IYxS', 'Boychinovtsi', 'Bulgaria');
insert into Library (name, username, password, town, country) values ('Stiedemann-McCullough', 'meyton1a', 'ra890lc', 'São Bento', 'Portugal');
insert into Library (name, username, password, town, country) values ('Rau-Kassulke', 'cvowell1b', 'VM7yb5luSBpa', 'Pung-Pang', 'Philippines');
insert into Library (name, username, password, town, country) values ('Balistreri, Mann and Hegmann', 'lcongrave1c', 'LQtvB3y', 'Trat', 'Thailand');
insert into Library (name, username, password, town, country) values ('Brakus-Shields', 'ntuddenham1d', 'CQaoBID1', 'Ban Khlong Bang Sao Thong', 'Thailand');
insert into Library (name, username, password, town, country) values ('Hilpert-Metz', 'spurcer1e', 'QcoVs5S111', 'Neftçala', 'Azerbaijan');
insert into Library (name, username, password, town, country) values ('Hintz, Reichert and Heathcote', 'foutlaw1f', '2j5s2emCv6', 'Jingyu', 'China');
insert into Library (name, username, password, town, country) values ('Simonis Group', 'rharsnipe1g', '1fc4um7u', 'Jiukeng', 'China');
insert into Library (name, username, password, town, country) values ('Kerluke-Cremin', 'wveall1h', 'KvBvWMr', 'Mulan', 'China');
insert into Library (name, username, password, town, country) values ('Huel, Steuber and Rice', 'ffelderer1i', 'GsY5M1', 'Meaux', 'France');
insert into Library (name, username, password, town, country) values ('Pfeffer, Morar and Schulist', 'alabrone1j', 'JXg20GXMC9t', 'Hoktember', 'Armenia');
insert into Library (name, username, password, town, country) values ('Leannon-Schamberger', 'mmcknockiter1k', 'KJ8Z4oq1', 'São Domingos de Rana', 'Portugal');
insert into Library (name, username, password, town, country) values ('Krajcik and Sons', 'malwen1l', 'd42EKt0b', 'Tohautu', 'French Polynesia');
insert into Library (name, username, password, town, country) values ('Kassulke, Conn and Purdy', 'apassler1m', 'PnxKdtE', 'Krzykosy', 'Poland');
insert into Library (name, username, password, town, country) values ('Brekke, Swaniawski and Hand', 'jhartup1n', 'tY2FQwEh', 'São Pedro Gafanhoeira', 'Portugal');


CREATE TABLE Invoice (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    -- invoice total cannot be negative
    total FLOAT NOT NULL CHECK (total >= 0),
    customer_id INT NOT NULL,
    CONSTRAINT invoice_fk_1
        FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

insert into Invoice (date, total, customer_id) values ('2014-01-02', 54.81, 62);
insert into Invoice (date, total, customer_id) values ('2012-07-01', 110.77, 46);
insert into Invoice (date, total, customer_id) values ('2022-06-29', 129.94, 19);
insert into Invoice (date, total, customer_id) values ('2011-02-18', 64.33, 7);
insert into Invoice (date, total, customer_id) values ('2015-08-30', 88.85, 26);
insert into Invoice (date, total, customer_id) values ('2018-10-28', 77.78, 24);
insert into Invoice (date, total, customer_id) values ('2018-03-17', 122.81, 13);
insert into Invoice (date, total, customer_id) values ('2020-10-08', 100.56, 32);
insert into Invoice (date, total, customer_id) values ('2016-10-03', 40.21, 49);
insert into Invoice (date, total, customer_id) values ('2021-02-08', 79.88, 80);
insert into Invoice (date, total, customer_id) values ('2012-04-12', 100.68, 69);
insert into Invoice (date, total, customer_id) values ('2013-02-08', 61.24, 23);
insert into Invoice (date, total, customer_id) values ('2018-02-14', 42.45, 41);
insert into Invoice (date, total, customer_id) values ('2011-06-17', 66.81, 44);
insert into Invoice (date, total, customer_id) values ('2016-01-03', 129.73, 37);
insert into Invoice (date, total, customer_id) values ('2020-10-25', 83.01, 8);
insert into Invoice (date, total, customer_id) values ('2015-03-16', 67.08, 31);
insert into Invoice (date, total, customer_id) values ('2020-12-20', 104.62, 3);
insert into Invoice (date, total, customer_id) values ('2012-03-05', 101.52, 72);
insert into Invoice (date, total, customer_id) values ('2021-07-23', 56.98, 28);
insert into Invoice (date, total, customer_id) values ('2013-07-17', 85.46, 28);
insert into Invoice (date, total, customer_id) values ('2015-02-21', 87.47, 72);
insert into Invoice (date, total, customer_id) values ('2014-11-10', 148.88, 19);
insert into Invoice (date, total, customer_id) values ('2013-11-25', 72.41, 41);
insert into Invoice (date, total, customer_id) values ('2012-12-13', 44.14, 50);
insert into Invoice (date, total, customer_id) values ('2020-12-24', 121.23, 50);
insert into Invoice (date, total, customer_id) values ('2012-08-12', 83.05, 15);
insert into Invoice (date, total, customer_id) values ('2016-11-17', 87.83, 73);
insert into Invoice (date, total, customer_id) values ('2021-10-01', 65.79, 60);
insert into Invoice (date, total, customer_id) values ('2020-09-04', 72.17, 56);
insert into Invoice (date, total, customer_id) values ('2011-09-18', 123.27, 58);
insert into Invoice (date, total, customer_id) values ('2019-06-23', 77.78, 19);
insert into Invoice (date, total, customer_id) values ('2012-12-20', 126.35, 39);
insert into Invoice (date, total, customer_id) values ('2021-04-14', 132.9, 60);
insert into Invoice (date, total, customer_id) values ('2013-01-25', 48.94, 33);
insert into Invoice (date, total, customer_id) values ('2019-10-22', 118.32, 11);
insert into Invoice (date, total, customer_id) values ('2011-10-19', 52.94, 11);
insert into Invoice (date, total, customer_id) values ('2015-03-13', 77.37, 32);
insert into Invoice (date, total, customer_id) values ('2012-01-08', 62.7, 51);
insert into Invoice (date, total, customer_id) values ('2016-09-25', 62.41, 57);
insert into Invoice (date, total, customer_id) values ('2013-04-14', 84.24, 27);
insert into Invoice (date, total, customer_id) values ('2013-09-25', 75.15, 24);
insert into Invoice (date, total, customer_id) values ('2016-07-30', 134.37, 45);
insert into Invoice (date, total, customer_id) values ('2016-11-03', 135.7, 1);
insert into Invoice (date, total, customer_id) values ('2013-01-25', 84.98, 43);
insert into Invoice (date, total, customer_id) values ('2021-02-17', 40.34, 11);
insert into Invoice (date, total, customer_id) values ('2011-09-06', 88.6, 38);
insert into Invoice (date, total, customer_id) values ('2011-10-08', 64.62, 34);
insert into Invoice (date, total, customer_id) values ('2022-08-05', 78.9, 52);
insert into Invoice (date, total, customer_id) values ('2020-06-22', 118.36, 36);
insert into Invoice (date, total, customer_id) values ('2014-12-23', 133.12, 77);
insert into Invoice (date, total, customer_id) values ('2017-07-09', 45.12, 38);
insert into Invoice (date, total, customer_id) values ('2015-01-30', 47.24, 19);
insert into Invoice (date, total, customer_id) values ('2020-05-15', 40.07, 53);
insert into Invoice (date, total, customer_id) values ('2013-11-06', 30.24, 11);
insert into Invoice (date, total, customer_id) values ('2019-03-14', 56.57, 13);
insert into Invoice (date, total, customer_id) values ('2011-04-05', 75.86, 19);
insert into Invoice (date, total, customer_id) values ('2021-05-22', 92.56, 75);
insert into Invoice (date, total, customer_id) values ('2019-02-12', 102.79, 39);
insert into Invoice (date, total, customer_id) values ('2014-07-12', 149.07, 32);
insert into Invoice (date, total, customer_id) values ('2015-08-28', 69.04, 8);
insert into Invoice (date, total, customer_id) values ('2014-09-22', 125.84, 22);
insert into Invoice (date, total, customer_id) values ('2013-06-13', 67.83, 31);
insert into Invoice (date, total, customer_id) values ('2014-01-06', 62.31, 18);
insert into Invoice (date, total, customer_id) values ('2021-09-18', 132.2, 25);
insert into Invoice (date, total, customer_id) values ('2014-05-15', 37.07, 53);
insert into Invoice (date, total, customer_id) values ('2020-10-14', 145.16, 64);
insert into Invoice (date, total, customer_id) values ('2013-11-13', 35.36, 3);
insert into Invoice (date, total, customer_id) values ('2011-08-01', 74.61, 19);
insert into Invoice (date, total, customer_id) values ('2017-12-10', 118.87, 52);
insert into Invoice (date, total, customer_id) values ('2016-10-21', 71.25, 18);
insert into Invoice (date, total, customer_id) values ('2016-05-24', 45.91, 8);
insert into Invoice (date, total, customer_id) values ('2017-11-24', 35.3, 59);
insert into Invoice (date, total, customer_id) values ('2011-12-18', 42.51, 66);
insert into Invoice (date, total, customer_id) values ('2011-03-29', 125.68, 69);
insert into Invoice (date, total, customer_id) values ('2017-12-30', 120.15, 78);
insert into Invoice (date, total, customer_id) values ('2015-07-18', 115.92, 3);
insert into Invoice (date, total, customer_id) values ('2021-07-01', 52.87, 52);
insert into Invoice (date, total, customer_id) values ('2018-02-14', 36.83, 4);
insert into Invoice (date, total, customer_id) values ('2018-10-05', 61.49, 58);
insert into Invoice (date, total, customer_id) values ('2018-12-20', 104.12, 68);
insert into Invoice (date, total, customer_id) values ('2014-12-02', 69.1, 34);
insert into Invoice (date, total, customer_id) values ('2014-05-27', 82.67, 13);
insert into Invoice (date, total, customer_id) values ('2018-06-02', 45.52, 56);
insert into Invoice (date, total, customer_id) values ('2015-10-29', 106.28, 75);
insert into Invoice (date, total, customer_id) values ('2014-10-04', 82.43, 74);
insert into Invoice (date, total, customer_id) values ('2017-10-14', 39.79, 40);
insert into Invoice (date, total, customer_id) values ('2022-02-14', 93.55, 45);
insert into Invoice (date, total, customer_id) values ('2020-01-04', 127.93, 26);
insert into Invoice (date, total, customer_id) values ('2013-07-13', 128.99, 24);
insert into Invoice (date, total, customer_id) values ('2022-06-01', 86.33, 58);
insert into Invoice (date, total, customer_id) values ('2013-09-13', 65.84, 35);
insert into Invoice (date, total, customer_id) values ('2016-11-14', 45.94, 64);
insert into Invoice (date, total, customer_id) values ('2021-04-04', 99.88, 61);
insert into Invoice (date, total, customer_id) values ('2019-01-26', 44.42, 53);
insert into Invoice (date, total, customer_id) values ('2012-12-28', 118.86, 72);
insert into Invoice (date, total, customer_id) values ('2015-10-09', 71.91, 6);
insert into Invoice (date, total, customer_id) values ('2017-01-24', 33.43, 58);
insert into Invoice (date, total, customer_id) values ('2017-11-09', 110.35, 31);
insert into Invoice (date, total, customer_id) values ('2021-09-09', 110.88, 28);
insert into Invoice (date, total, customer_id) values ('2020-02-26', 101.35, 49);
insert into Invoice (date, total, customer_id) values ('2017-09-28', 109.86, 74);
insert into Invoice (date, total, customer_id) values ('2018-11-16', 37.78, 50);
insert into Invoice (date, total, customer_id) values ('2018-05-08', 84.96, 65);
insert into Invoice (date, total, customer_id) values ('2012-11-14', 98.33, 50);
insert into Invoice (date, total, customer_id) values ('2012-06-19', 94.92, 65);
insert into Invoice (date, total, customer_id) values ('2019-11-30', 99.86, 30);
insert into Invoice (date, total, customer_id) values ('2011-10-11', 104.97, 77);
insert into Invoice (date, total, customer_id) values ('2011-01-28', 125.45, 19);
insert into Invoice (date, total, customer_id) values ('2020-05-19', 69.15, 13);
insert into Invoice (date, total, customer_id) values ('2012-05-08', 136.4, 50);
insert into Invoice (date, total, customer_id) values ('2018-01-02', 108.38, 8);
insert into Invoice (date, total, customer_id) values ('2016-11-26', 72.72, 6);
insert into Invoice (date, total, customer_id) values ('2019-06-12', 33.79, 55);
insert into Invoice (date, total, customer_id) values ('2012-01-08', 149.72, 1);
insert into Invoice (date, total, customer_id) values ('2012-05-04', 137.3, 72);
insert into Invoice (date, total, customer_id) values ('2012-11-24', 35.33, 37);
insert into Invoice (date, total, customer_id) values ('2017-05-27', 69.32, 17);
insert into Invoice (date, total, customer_id) values ('2012-08-14', 107.21, 28);
insert into Invoice (date, total, customer_id) values ('2016-08-19', 52.57, 29);
insert into Invoice (date, total, customer_id) values ('2020-10-12', 41.51, 2);
insert into Invoice (date, total, customer_id) values ('2012-07-06', 85.24, 40);
insert into Invoice (date, total, customer_id) values ('2020-07-19', 76.81, 5);
insert into Invoice (date, total, customer_id) values ('2019-06-24', 128.3, 70);
insert into Invoice (date, total, customer_id) values ('2020-11-29', 131.52, 36);
insert into Invoice (date, total, customer_id) values ('2019-12-19', 82.45, 23);
insert into Invoice (date, total, customer_id) values ('2022-12-01', 97.09, 41);
insert into Invoice (date, total, customer_id) values ('2019-09-03', 96.63, 17);
insert into Invoice (date, total, customer_id) values ('2015-04-25', 86.9, 37);
insert into Invoice (date, total, customer_id) values ('2020-05-18', 136.06, 37);
insert into Invoice (date, total, customer_id) values ('2017-10-07', 110.38, 2);
insert into Invoice (date, total, customer_id) values ('2012-09-04', 96.03, 8);
insert into Invoice (date, total, customer_id) values ('2015-04-17', 61.34, 80);
insert into Invoice (date, total, customer_id) values ('2011-04-25', 118.53, 56);
insert into Invoice (date, total, customer_id) values ('2015-12-26', 88.35, 65);
insert into Invoice (date, total, customer_id) values ('2018-02-17', 100.77, 75);
insert into Invoice (date, total, customer_id) values ('2014-11-25', 104.85, 36);
insert into Invoice (date, total, customer_id) values ('2014-09-04', 132.46, 21);
insert into Invoice (date, total, customer_id) values ('2020-09-23', 99.39, 72);
insert into Invoice (date, total, customer_id) values ('2011-04-27', 138.7, 41);
insert into Invoice (date, total, customer_id) values ('2016-12-14', 45.64, 26);
insert into Invoice (date, total, customer_id) values ('2016-01-12', 140.29, 54);
insert into Invoice (date, total, customer_id) values ('2012-05-14', 117.73, 69);
insert into Invoice (date, total, customer_id) values ('2019-02-05', 57.83, 71);
insert into Invoice (date, total, customer_id) values ('2017-02-17', 32.5, 61);
insert into Invoice (date, total, customer_id) values ('2020-11-25', 118.36, 73);
insert into Invoice (date, total, customer_id) values ('2017-07-04', 117.24, 26);
insert into Invoice (date, total, customer_id) values ('2014-09-12', 131.12, 27);
insert into Invoice (date, total, customer_id) values ('2017-11-10', 113.71, 1);
insert into Invoice (date, total, customer_id) values ('2020-12-12', 139.88, 26);
insert into Invoice (date, total, customer_id) values ('2022-06-12', 35.48, 25);
insert into Invoice (date, total, customer_id) values ('2020-05-28', 48.12, 34);
insert into Invoice (date, total, customer_id) values ('2013-06-28', 131.5, 35);
insert into Invoice (date, total, customer_id) values ('2011-11-13', 45.15, 30);
insert into Invoice (date, total, customer_id) values ('2022-05-01', 75.21, 24);
insert into Invoice (date, total, customer_id) values ('2011-04-25', 33.01, 42);
insert into Invoice (date, total, customer_id) values ('2022-05-19', 80.4, 53);
insert into Invoice (date, total, customer_id) values ('2011-10-20', 84.75, 34);
insert into Invoice (date, total, customer_id) values ('2016-10-12', 137.01, 26);
insert into Invoice (date, total, customer_id) values ('2011-09-13', 50.3, 8);
insert into Invoice (date, total, customer_id) values ('2015-02-07', 59.78, 44);
insert into Invoice (date, total, customer_id) values ('2017-07-26', 35.69, 41);
insert into Invoice (date, total, customer_id) values ('2013-01-28', 117.88, 47);
insert into Invoice (date, total, customer_id) values ('2022-12-06', 94.8, 49);
insert into Invoice (date, total, customer_id) values ('2011-12-18', 98.17, 14);
insert into Invoice (date, total, customer_id) values ('2012-07-11', 77.21, 18);
insert into Invoice (date, total, customer_id) values ('2020-04-12', 100.16, 37);
insert into Invoice (date, total, customer_id) values ('2022-10-08', 85.0, 35);
insert into Invoice (date, total, customer_id) values ('2020-12-17', 120.31, 35);
insert into Invoice (date, total, customer_id) values ('2017-11-22', 35.51, 65);
insert into Invoice (date, total, customer_id) values ('2016-01-01', 112.53, 9);
insert into Invoice (date, total, customer_id) values ('2022-06-07', 46.57, 57);
insert into Invoice (date, total, customer_id) values ('2011-11-05', 124.18, 45);
insert into Invoice (date, total, customer_id) values ('2020-10-29', 120.24, 21);
insert into Invoice (date, total, customer_id) values ('2011-02-04', 130.43, 36);
insert into Invoice (date, total, customer_id) values ('2013-06-08', 35.18, 59);
insert into Invoice (date, total, customer_id) values ('2021-06-20', 131.26, 28);
insert into Invoice (date, total, customer_id) values ('2011-06-22', 75.09, 75);
insert into Invoice (date, total, customer_id) values ('2018-08-03', 106.54, 40);
insert into Invoice (date, total, customer_id) values ('2012-04-27', 86.38, 24);
insert into Invoice (date, total, customer_id) values ('2013-10-27', 92.8, 10);
insert into Invoice (date, total, customer_id) values ('2013-12-30', 71.59, 7);
insert into Invoice (date, total, customer_id) values ('2017-12-02', 76.09, 16);
insert into Invoice (date, total, customer_id) values ('2013-04-29', 36.79, 50);
insert into Invoice (date, total, customer_id) values ('2020-06-30', 142.67, 31);
insert into Invoice (date, total, customer_id) values ('2012-06-08', 62.49, 6);
insert into Invoice (date, total, customer_id) values ('2015-04-12', 35.73, 50);
insert into Invoice (date, total, customer_id) values ('2013-01-11', 111.95, 73);
insert into Invoice (date, total, customer_id) values ('2011-07-18', 41.5, 25);
insert into Invoice (date, total, customer_id) values ('2014-08-25', 78.91, 49);
insert into Invoice (date, total, customer_id) values ('2022-03-27', 51.41, 15);
insert into Invoice (date, total, customer_id) values ('2019-10-07', 91.16, 21);
insert into Invoice (date, total, customer_id) values ('2015-10-05', 43.01, 72);
insert into Invoice (date, total, customer_id) values ('2021-03-19', 49.98, 53);
insert into Invoice (date, total, customer_id) values ('2015-02-17', 127.25, 18);
insert into Invoice (date, total, customer_id) values ('2021-09-03', 138.24, 24);
insert into Invoice (date, total, customer_id) values ('2016-09-09', 144.48, 72);
insert into Invoice (date, total, customer_id) values ('2020-08-21', 73.32, 42);
insert into Invoice (date, total, customer_id) values ('2016-03-07', 60.51, 15);
insert into Invoice (date, total, customer_id) values ('2018-11-30', 65.9, 43);


CREATE TABLE InvoiceLine (
    invoice_line_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_id INT NOT NULL,
    -- price per unit cannot be negative
    price_per_unit FLOAT NOT NULL CHECK (price_per_unit >= 0),
    quantity INT CHECK (quantity > 0),
    isbn CHAR(13) NOT NULL,
    CONSTRAINT invoice_line_fk_1
        FOREIGN KEY (invoice_id) REFERENCES Invoice(invoice_id),
    CONSTRAINT invoice_line_fk_2
        FOREIGN KEY (isbn) REFERENCES Book(isbn)
);

insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (159, 42.58, 14, '7106697355279');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (192, 42.96, 3, '9878883956790');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (8, 44.51, 19, '8068697680574');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (181, 49.22, 18, '9403596267291');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (114, 35.91, 1, '9969708296934');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (3, 46.71, 10, '8641418199310');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (145, 30.63, 14, '2825648018940');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (3, 33.4, 13, '4360128508440');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (68, 39.29, 11, '7060830598985');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (125, 47.68, 19, '9741173313508');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (126, 40.3, 3, '7986533273761');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (178, 41.06, 11, '5026544968870');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (61, 34.83, 14, '7088045851018');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (121, 37.88, 17, '6724604372477');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (17, 42.96, 17, '7541377607755');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (119, 30.23, 11, '8213650798144');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (44, 37.51, 3, '9134973916802');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (111, 47.31, 19, '5339472118540');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (199, 49.02, 16, '6046910882137');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (183, 44.08, 6, '4305471377013');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (25, 47.55, 19, '0356887293731');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (13, 41.46, 12, '8572032430974');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (44, 46.41, 6, '2928977974660');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (199, 34.1, 10, '3704712994032');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (13, 41.99, 7, '9690993773719');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (81, 34.73, 1, '9674312565905');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (31, 41.2, 3, '3734298225657');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (22, 48.15, 20, '0288640597582');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (76, 49.81, 15, '1403046592865');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (162, 43.07, 20, '3433273958609');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (166, 36.31, 16, '7139513509982');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (176, 44.01, 10, '8682169721883');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (43, 42.93, 5, '2908884818152');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (86, 46.71, 4, '4566640208085');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (91, 43.81, 7, '7851561001286');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (122, 37.36, 2, '2982447829910');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (130, 39.24, 11, '7916843977408');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (84, 30.11, 3, '5531887714417');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (157, 40.72, 7, '3410553280122');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (94, 35.25, 3, '8952878472813');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (44, 32.44, 4, '1790363412723');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (20, 32.96, 6, '6057465653723');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (23, 41.72, 14, '6709432347879');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (140, 45.61, 3, '1210859530008');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (177, 39.38, 11, '1342253745766');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (192, 33.69, 15, '0033114777867');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (60, 46.37, 5, '0535376829067');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (156, 49.88, 1, '3555439618903');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (59, 44.9, 16, '4097468971785');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (7, 49.22, 9, '9062780297513');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (153, 40.47, 17, '1429496638094');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (192, 33.71, 10, '5756915532074');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (176, 47.5, 11, '4068171368467');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (36, 38.3, 14, '6599478492337');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (121, 36.42, 17, '4796037463791');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (146, 49.41, 14, '6774471007327');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (159, 40.74, 15, '0658143713703');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (151, 34.93, 13, '5025372765269');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (7, 44.27, 16, '6261552737439');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (148, 33.61, 3, '4029993136909');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (110, 30.83, 11, '7650326370069');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (30, 34.61, 11, '6404514159375');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (13, 49.66, 10, '5554282070498');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (2, 40.05, 10, '9867619423098');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (90, 36.94, 4, '4812098784041');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (85, 34.79, 19, '7436263831018');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (155, 49.9, 9, '5996731679488');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (160, 44.9, 1, '4979506801391');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (66, 31.03, 5, '5779662398005');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (39, 37.77, 4, '1129326181148');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (172, 33.42, 14, '9460450893694');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (176, 31.34, 3, '9288912628970');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (66, 31.82, 2, '7279088938270');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (80, 47.92, 7, '4712572341540');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (33, 45.91, 16, '4003921306450');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (151, 44.46, 20, '7494612661906');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (177, 44.51, 15, '6172090695133');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (59, 49.71, 19, '6060045566850');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (77, 38.19, 15, '2781686471852');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (90, 42.58, 13, '2022865129055');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (12, 37.35, 4, '8129413151073');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (122, 32.48, 17, '7554645861098');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (88, 44.59, 11, '1766169304910');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (83, 35.34, 14, '2429634439190');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (27, 49.8, 20, '8844732137095');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (191, 30.94, 11, '6352562943326');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (88, 36.85, 3, '6482045533317');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (64, 44.53, 16, '8433389784437');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (168, 43.62, 11, '1848870901757');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (13, 36.93, 10, '7249698750129');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (195, 34.74, 3, '6842538988955');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (82, 30.69, 15, '9374003681236');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (18, 41.19, 20, '6792036603145');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (49, 36.68, 10, '4642693227042');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (85, 42.4, 7, '1920400541978');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (30, 48.0, 3, '2467519484858');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (75, 33.37, 13, '2447201874355');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (129, 41.93, 16, '5911437883388');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (179, 30.12, 7, '6179865852937');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (116, 41.48, 19, '3769985067583');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (10, 31.29, 16, '0205309973885');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (23, 38.37, 18, '8246792900231');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (137, 30.22, 10, '9697301427964');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (110, 45.86, 10, '9602846309755');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (194, 37.07, 7, '3762007472478');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (147, 34.66, 14, '3349192762127');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (51, 40.04, 15, '4871182182263');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (199, 39.89, 4, '8791256546472');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (62, 41.44, 3, '7654716823394');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (3, 36.78, 3, '4490818812706');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (89, 41.92, 20, '1940987608682');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (33, 39.68, 2, '3818144931934');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (198, 36.24, 16, '8603929090147');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (171, 43.75, 18, '7600404118633');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (66, 41.25, 1, '2286308891827');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (175, 37.41, 10, '6994122877866');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (133, 46.24, 8, '5704919197334');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (63, 49.04, 11, '7046900192330');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (64, 49.38, 12, '2496199663375');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (57, 48.05, 19, '3740244170174');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (56, 31.84, 8, '6163058386305');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (181, 46.75, 10, '3065841267592');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (102, 47.4, 17, '6791240836418');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (65, 35.51, 16, '1664302143494');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (56, 30.8, 16, '9600289984619');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (183, 41.49, 5, '9396626463506');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (59, 46.9, 20, '7966983465422');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (60, 47.26, 5, '8213537838189');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (10, 38.66, 9, '6125337935004');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (124, 38.16, 13, '7111914840233');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (64, 35.42, 4, '7070986931043');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (95, 44.9, 19, '2174146487915');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (68, 47.18, 2, '3303641595212');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (157, 32.51, 15, '1373532459931');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (165, 46.38, 16, '7563005601581');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (28, 30.53, 2, '7227710605656');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (38, 43.73, 16, '2207012395012');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (118, 45.79, 8, '9087003243166');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (95, 31.41, 19, '1154560487876');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (166, 49.94, 14, '1519357872904');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (135, 43.16, 2, '4375160869342');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (18, 39.14, 9, '4178264816969');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (143, 33.67, 15, '0086595647264');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (118, 44.37, 16, '0637859222087');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (37, 43.49, 15, '6497424285865');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (113, 47.23, 8, '0001928302199');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (84, 35.05, 2, '9555095527058');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (36, 38.42, 6, '6789039382939');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (54, 34.86, 12, '1385577316019');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (36, 30.18, 19, '2406974398881');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (200, 30.25, 3, '0457047785379');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (24, 47.23, 13, '0404801425297');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (68, 42.27, 17, '7226113810912');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (72, 40.16, 4, '1828888485903');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (193, 37.44, 2, '2372715404603');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (14, 45.37, 4, '7541933336415');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (16, 32.18, 8, '9050851688860');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (181, 46.91, 5, '7599818606647');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (33, 30.93, 19, '3570185239152');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (30, 49.08, 15, '3774479671648');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (139, 44.31, 13, '1156591405706');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (124, 43.29, 9, '3251714035965');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (89, 45.49, 1, '7616728719656');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (26, 43.08, 15, '4797996914499');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (95, 35.42, 17, '5995989134252');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (39, 43.22, 20, '7704748948129');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (199, 44.21, 18, '4722650649473');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (74, 35.97, 4, '0954285897939');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (163, 42.69, 18, '5307104756479');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (81, 34.05, 14, '9289438725966');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (166, 34.72, 5, '3322928296495');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (97, 36.87, 5, '9782535804582');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (151, 39.06, 8, '7298424392785');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (4, 38.13, 19, '1204586458739');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (33, 39.38, 19, '4379634204170');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (179, 43.9, 2, '9506024868280');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (181, 38.72, 7, '5360015469324');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (6, 32.28, 5, '4636095255899');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (26, 44.08, 8, '8405190070606');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (55, 49.38, 5, '2041411951515');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (179, 34.19, 18, '0723163263030');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (10, 32.57, 7, '6111959633976');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (179, 47.35, 10, '3954866343243');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (40, 37.06, 3, '2608593299347');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (189, 42.76, 17, '7857341965636');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (157, 49.77, 19, '2727226546481');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (74, 39.94, 4, '0300765367035');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (6, 42.63, 6, '8852966589565');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (90, 42.5, 11, '5850131229695');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (40, 43.9, 2, '4901914698297');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (166, 38.02, 19, '7571745954356');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (109, 30.35, 6, '2325107974007');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (30, 41.98, 2, '1723752392482');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (26, 38.05, 17, '2664246060457');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (141, 31.14, 1, '7568969248128');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (30, 34.53, 14, '3146358152869');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (105, 34.42, 11, '0217786041701');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (21, 40.11, 18, '6779833440872');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (132, 37.31, 19, '1651968672788');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (166, 44.57, 16, '6017358113541');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (102, 46.55, 6, '0890242606677');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (14, 38.09, 17, '7754448813767');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (30, 37.75, 18, '1662206378308');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (150, 33.41, 15, '3231800237852');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (141, 30.51, 3, '7648977760651');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (3, 37.71, 3, '4900106111139');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (24, 43.92, 9, '6011318521496');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (160, 48.62, 18, '5270270389986');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (181, 36.85, 11, '5649000175201');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (35, 36.44, 11, '0866511007520');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (155, 36.61, 8, '8371074933500');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (196, 30.23, 12, '1815187683181');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (112, 41.82, 9, '8726774173557');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (47, 37.36, 1, '9469039266499');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (140, 31.99, 15, '3102415518117');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (189, 30.12, 4, '1759625762245');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (74, 37.03, 19, '5908259132596');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (86, 34.96, 18, '5853170897329');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (26, 30.81, 18, '0522295701568');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (121, 44.61, 10, '1215123654978');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (176, 43.67, 1, '2927600892055');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (150, 33.49, 17, '7173551418890');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (143, 41.67, 5, '1783738872373');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (31, 30.36, 4, '4299350446276');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (42, 37.06, 13, '7430080506600');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (89, 40.99, 8, '2091232226212');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (8, 44.89, 7, '9212759341994');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (196, 45.34, 17, '2997547179949');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (111, 35.51, 2, '0757424379741');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (107, 34.23, 9, '0338551979230');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (30, 46.83, 5, '2770880660309');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (148, 38.37, 19, '4904000736274');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (192, 37.34, 16, '7058640046300');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (100, 42.17, 13, '1374035806947');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (80, 45.3, 3, '9230803214663');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (158, 37.68, 12, '0649567578311');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (131, 31.8, 20, '7449223081655');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (108, 45.2, 15, '6969526164875');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (95, 46.5, 14, '9237065914370');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (77, 40.35, 6, '1446588670592');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (30, 43.5, 13, '0877213204093');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (145, 48.91, 19, '1693453640619');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (123, 40.69, 16, '2584153364229');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (146, 45.25, 17, '7205609888216');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (156, 47.74, 1, '7416750300539');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (49, 40.56, 11, '8412165265570');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (151, 47.68, 3, '3598298561197');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (82, 37.69, 12, '3252523060377');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (107, 41.04, 2, '5946765240361');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (22, 49.07, 12, '7906297073885');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (33, 41.72, 14, '9599777845707');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (80, 34.83, 19, '8188382104630');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (90, 34.57, 9, '1979096403099');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (176, 38.2, 8, '0999983311209');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (30, 43.43, 19, '3453609278728');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (9, 37.04, 5, '7431784400819');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (27, 44.47, 1, '2889187202102');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (24, 45.24, 16, '5531543179068');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (187, 42.71, 17, '8102576294689');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (166, 30.65, 17, '6733133694077');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (11, 36.73, 3, '5747280667532');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (84, 31.97, 2, '9328486549871');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (33, 48.72, 3, '1003878003727');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (54, 37.62, 1, '4730161517284');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (120, 30.74, 12, '3311994738571');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (33, 46.37, 8, '2315222816935');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (2, 39.33, 17, '4823990699035');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (114, 35.66, 4, '2388247710412');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (9, 42.87, 10, '1584351844271');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (50, 44.67, 1, '5704062128299');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (112, 32.64, 15, '2337429530230');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (161, 47.07, 10, '1045235214395');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (91, 42.72, 12, '4504442436756');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (193, 33.78, 1, '3974761594249');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (1, 43.08, 7, '1748199109930');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (51, 35.66, 19, '9381985656187');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (171, 48.45, 17, '7658321552238');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (37, 46.61, 6, '8433365238387');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (178, 48.97, 16, '6662543784215');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (128, 41.77, 1, '1624317804018');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (93, 37.82, 10, '0363669244947');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (46, 40.44, 5, '7897274890413');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (157, 31.81, 8, '0036528823698');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (71, 48.64, 10, '3689209583717');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (178, 47.85, 12, '0212475008797');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (15, 41.62, 4, '0921585105669');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (33, 33.54, 3, '9693782755467');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (173, 48.07, 11, '8616193677709');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (148, 41.42, 9, '4431005348618');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (186, 45.3, 8, '1090561865883');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (91, 39.13, 11, '3040795273614');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (158, 38.28, 20, '5094849957054');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (151, 34.61, 4, '0588341574621');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (8, 32.17, 20, '9392420871716');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (35, 36.82, 16, '7092331437061');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (50, 42.6, 6, '7472590466564');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (172, 37.58, 9, '4807527650683');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (160, 31.05, 4, '3806415546715');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (72, 38.79, 20, '4229573520736');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (118, 35.11, 14, '0312668880761');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (111, 43.17, 4, '4305521906502');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (61, 44.14, 5, '2664618728208');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (98, 39.86, 2, '7162068779409');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (24, 33.44, 18, '6667780260700');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (131, 38.41, 11, '1836183153264');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (95, 46.76, 1, '9473031807042');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (162, 35.07, 12, '2115395172677');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (150, 44.36, 4, '1810724394948');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (122, 32.77, 16, '4716752693058');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (136, 35.78, 8, '8738911668550');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (110, 40.1, 8, '7143715085110');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (96, 38.13, 13, '5858879438895');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (106, 48.17, 20, '4005623108727');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (176, 31.52, 8, '5212001834291');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (177, 40.78, 12, '3848250401109');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (112, 34.12, 4, '9849416359658');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (164, 39.72, 5, '3057386502204');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (17, 49.31, 7, '2402217166619');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (174, 39.11, 8, '2131542181969');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (17, 40.89, 8, '1185670874816');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (183, 45.1, 10, '7747081031068');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (86, 32.79, 19, '0769343184063');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (165, 34.72, 8, '9062453549405');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (105, 46.02, 1, '6713829199250');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (40, 49.64, 18, '2709102716794');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (144, 46.69, 14, '9271477541520');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (56, 40.83, 12, '5523187873206');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (136, 39.45, 13, '4301990746929');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (144, 32.11, 17, '2823913312945');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (124, 46.76, 12, '3787617473468');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (32, 40.95, 19, '8485388263588');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (1, 45.19, 4, '2264038091348');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (4, 37.22, 9, '5736041153375');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (190, 40.42, 11, '1182391101973');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (107, 43.61, 2, '3488853894560');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (23, 46.6, 19, '8322145847091');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (19, 32.34, 13, '8026332102036');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (167, 48.94, 4, '6741227917165');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (111, 35.99, 15, '4681980843065');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (52, 35.95, 17, '1556946669524');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (55, 31.51, 20, '3772636030723');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (174, 46.08, 15, '4983067508067');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (88, 33.21, 20, '4307615658453');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (74, 36.22, 11, '8779383318360');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (128, 30.21, 6, '0180786581023');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (196, 41.38, 5, '4232731030549');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (111, 48.06, 17, '4821332827771');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (100, 30.18, 16, '3855807320422');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (55, 44.79, 12, '2627637108313');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (57, 38.68, 18, '7414230291236');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (36, 44.98, 16, '0659614568155');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (115, 33.67, 13, '0768302944088');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (41, 46.26, 11, '9858355395356');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (39, 36.67, 8, '4113305602643');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (154, 40.65, 1, '2829902792350');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (168, 48.85, 2, '1069536070546');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (29, 36.35, 8, '6663720073133');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (44, 43.08, 4, '2369219960196');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (102, 39.47, 1, '3444710639534');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (103, 39.19, 16, '0544378777507');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (181, 46.3, 15, '1009164096228');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (159, 49.06, 16, '1609021400515');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (79, 39.51, 4, '3878173152944');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (132, 49.42, 15, '0805318885291');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (52, 40.29, 9, '1932488792431');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (30, 43.87, 6, '8266058440023');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (97, 34.86, 4, '5413972526736');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (198, 39.58, 13, '3711614133039');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (200, 49.58, 15, '3115455384215');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (105, 32.35, 11, '1824074594324');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (192, 35.5, 14, '0140208813032');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (38, 49.85, 4, '0647474419120');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (169, 36.14, 18, '4342180680311');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (176, 31.02, 10, '4995218117533');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (12, 41.09, 14, '1597576163505');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (198, 37.09, 18, '7255232246277');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (28, 47.97, 4, '2434497874577');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (27, 42.04, 19, '9513435488817');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (71, 45.54, 9, '5429676558850');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (113, 45.77, 8, '4590548904426');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (164, 36.16, 12, '1520418405957');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (68, 35.08, 8, '9592673291231');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (182, 40.58, 14, '9213372902755');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (137, 36.17, 9, '1282147874425');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (130, 49.05, 14, '6866549066750');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (176, 35.77, 17, '8228652437976');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (44, 34.93, 7, '5160333366616');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (155, 46.75, 4, '7728878684991');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (82, 42.99, 7, '8032549156378');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (179, 39.32, 15, '4965369848634');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (80, 34.33, 9, '7071605862676');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (185, 38.48, 11, '6653421742716');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (46, 44.18, 13, '9819370919597');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (88, 49.4, 8, '8584017774628');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (80, 43.41, 1, '1569836059863');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (49, 49.82, 11, '9632861561440');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (173, 48.31, 9, '2225308247413');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (54, 37.22, 2, '9322462830237');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (53, 36.64, 20, '5646743938480');
insert into InvoiceLine (invoice_id, price_per_unit, quantity, isbn) values (31, 39.3, 13, '3687814510605');


CREATE TABLE BookReview (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    isbn CHAR(13) NOT NULL,
    review_content VARCHAR(255),
    -- enforce 0 to 5 star ratings (inclusive)
    review_stars decimal(2, 1) NOT NULL CHECK (
        review_stars >= 0
        AND review_stars <= 5
    ),
    CONSTRAINT bookreview_fk1
        FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    CONSTRAINT bookreview_fk2
        FOREIGN KEY (isbn) REFERENCES Book(isbn)
);

insert into BookReview (customer_id, isbn, review_content, review_stars) values (40, '4987977462128', null, 2.4);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (27, '1452340830727', 'Some book review', 2.6);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (64, '5010285948421', null, 0.6);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (28, '8380589484242', null, 1.2);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (74, '4172556421626', null, 4.6);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (35, '9477015739214', null, 0.6);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (23, '8654364314194', null, 3.2);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (17, '1018291615748', null, 4.3);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (60, '6845309370087', null, 3.0);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (40, '4224820844828', null, 0.2);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (74, '0583567127877', null, 0.4);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (57, '7010067937493', null, 2.7);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (2, '2901257010952', 'Some book review', 1.9);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (7, '4036066773820', null, 1.1);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (20, '3184274259075', null, 1.4);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (1, '2967777068613', null, 3.2);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (41, '1700861588354', null, 2.3);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (12, '9659084185770', 'Some book review', 3.0);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (42, '9259080344570', null, 3.3);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (7, '0741192859516', null, 2.1);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (66, '9545340519375', null, 3.8);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (40, '0123825232280', null, 3.2);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (31, '8653796885687', null, 2.8);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (39, '8940265859062', null, 3.6);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (38, '8880055074706', 'Some book review', 1.0);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (24, '0112591815051', null, 1.6);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (50, '5153069729223', null, 3.3);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (56, '7897576492396', null, 4.5);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (7, '5809795328192', null, 2.7);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (76, '8082515392926', 'Some book review', 0.7);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (66, '2813873427348', null, 3.5);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (54, '3361616022485', null, 1.9);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (15, '8490299011252', 'Some book review', 1.5);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (32, '5640158608139', null, 4.1);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (57, '4834272149576', null, 0.1);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (33, '8120469702388', 'Some book review', 1.0);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (73, '5623651319399', 'Some book review', 3.8);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (78, '4648672241600', null, 1.5);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (47, '2899711211660', null, 2.5);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (65, '9349034385402', null, 0.5);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (2, '9186085843924', 'Some book review', 2.1);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (61, '6163307572435', 'Some book review', 3.3);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (52, '7868842964365', 'Some book review', 4.6);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (77, '3728832685107', 'Some book review', 3.8);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (61, '1312020275223', 'Some book review', 2.8);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (28, '6546628705720', null, 1.6);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (24, '1076789877824', null, 3.0);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (79, '6427332229325', 'Some book review', 5.0);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (66, '7997725261101', null, 1.9);
insert into BookReview (customer_id, isbn, review_content, review_stars) values (10, '7220550935496', null, 2.5);


CREATE TABLE BookInventory (
    library_id INT NOT NULL,
    isbn CHAR(13) NOT NULL,
    -- can't have negative books in inventory
    quantity INT CHECK (quantity > 0),
    CONSTRAINT bookinventory_fk1
        FOREIGN KEY (library_id) REFERENCES Library(library_id),
    CONSTRAINT bookinventory_fk2
        FOREIGN KEY (isbn) REFERENCES Book(isbn),
    PRIMARY KEY (library_id, isbn)
);

INSERT INTO
    BookInventory (library_id, isbn, quantity)
VALUES
    (1, '0007100900018', 100), 
    (2, '0006936200338', 5);

CREATE TABLE AuthorPartner (
    library_id INT NOT NULL,
    author_id INT NOT NULL,
    discount float CHECK (discount > 0 and discount < 1),
    CONSTRAINT authorpartner_fk1
        FOREIGN KEY (library_id) REFERENCES Library(library_id),
    CONSTRAINT authorpartner_fk2
        FOREIGN KEY (author_id) REFERENCES Author(author_id),
    PRIMARY KEY (library_id, author_id)
);
INSERT INTO
    AuthorPartner (library_id, author_id, discount)
VALUES
    (1, 2, 0.05), 
    (2, 1, 0.7);