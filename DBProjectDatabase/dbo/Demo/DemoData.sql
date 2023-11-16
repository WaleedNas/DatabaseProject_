

INSERT INTO [User] (FirstName,LastName,Username,PasswordHash,Email,UserType)
VALUES
  ('Abel','Nathaniel','Keith','TTI22BWG2PF','velit.pellentesque.ultricies@icloud.ca',0),
  ('Stewart','Conan','Armando','RDI16WYN4BT','nibh.dolor.nonummy@icloud.edu',1),
  ('Marah','Ronan','Gretchen','LWP14LGG0OY','ut.nisi@yahoo.org',1),
  ('Willa','Kelly','Caesar','EFJ73DSC0WS','dapibus@protonmail.org',0),
  ('Buckminster','Lucius','Nash','KYR56HXX6VQ','ipsum.primis@icloud.org',0),
  ('Isadora','Cole','Maite','EBT17DER7CF','odio.etiam@yahoo.edu',1),
  ('Tarik','Hiroko','Larissa','GNS06YJF7YR','orci@aol.net',1),
  ('Chadwick','Tad','Caleb','XOS34BJL3UL','ornare.placerat.orci@icloud.org',0),
  ('Simone','Quynn','Dorothy','FKT52NKL4OT','in.tincidunt@aol.couk',0),
  ('Cairo','Jessica','Elliott','HPV75PWW2ST','tempus.lorem.fringilla@yahoo.edu',1),
  ('Maisie','Cooper','Elaine','RPS11XIL7HQ','senectus.et.netus@icloud.edu',0),
  ('Bryar','Lee','Winifred','TOO23WHI2LH','magna@icloud.couk',1),
  ('Ashton','Kadeem','Lysandra','ZKC13LNB6LU','dignissim.tempor@yahoo.com',1),
  ('Clark','Hakeem','Nathan','DIU08MSV3ZY','nulla@yahoo.ca',1),
  ('Todd','Maya','Baker','YFM15GPG0EL','orci@hotmail.org',1);
INSERT INTO [User] (FirstName,LastName,Username,PasswordHash,Email,UserType)
VALUES
  ('James','Blossom','Michelle','ICC22JEU1RB','praesent.eu@outlook.couk',1),
  ('Kylan','Elijah','Sonya','NAJ62UWM1ES','ridiculus.mus.proin@protonmail.net',1),
  ('Jorden','Christian','Merritt','IVW46FVE8GU','vestibulum.lorem@google.org',0),
  ('Emmanuel','Ferdinand','Arthur','NPX58PDF6EX','dolor.tempus.non@protonmail.net',1),
  ('Vladimir','Nina','Ivan','JWN72CML0VV','dictum.placerat@protonmail.ca',0),
  ('Malik','Jada','Lyle','EQP38BJU7CM','semper.nam@outlook.net',0),
  ('Alvin','Chadwick','Sawyer','ZCP68NDL4OK','ornare.placerat.orci@yahoo.edu',0),
  ('Katelyn','Xander','Scott','LSC58MVG1IT','morbi.accumsan.laoreet@yahoo.ca',0),
  ('Sierra','Damon','Xavier','EVQ86GED8KJ','quisque.varius@icloud.ca',0),
  ('Maryam','Victor','Calvin','WRV25XBT5QB','enim.diam@aol.couk',1),
  ('Dexter','Vance','Keane','BKR52JPO6DU','maecenas.malesuada.fringilla@outlook.ca',0),
  ('Samuel','Alisa','Tiger','OHB15ETE0JD','quis@aol.ca',0),
  ('Cyrus','Megan','Hall','XVF78NHI6PQ','ut@hotmail.edu',1),
  ('Hedley','Phelan','Kyra','HLG75YQJ2KM','elementum.sem@hotmail.ca',0),
  ('Seth','Branden','Neil','RMQ44LMG7KM','lobortis.tellus@icloud.com',0);
  
INSERT INTO [Order] (UserId,TotalPrice,Status,OrderDate)
VALUES
  (1,273,0,'2024-03-22'),
  (2,83,1,'2023-08-20'),
  (3,296,0,'2023-04-20'),
  (4,64,1,'2019-12-26'),
  (5,130,0,'2020-10-19'),
  (6,241,0,'2022-11-07'),
  (7,47,1,'2022-09-21'),
  (8,46,0,'2024-07-08'),
  (9,35,1,'2023-07-20'),
  (10,53,0,'2020-11-23'),
  (11,134,0,'2024-05-02'),
  (12,65,1,'2023-09-21'),
  (13,65,0,'2024-02-20'),
  (14,235,1,'2022-08-09'),
  (15,106,1,'2024-05-15');
INSERT INTO [Order] (UserId,TotalPrice,Status,OrderDate)
VALUES
  (16,222,1,'2021-06-12'),
  (17,150,0,'2020-03-17'),
  (18,219,1,'2020-12-20'),
  (19,184,0,'2021-06-22'),
  (20,207,1,'2021-06-13'),
  (21,189,1,'2019-12-09'),
  (22,193,1,'2021-04-01'),
  (23,269,1,'2024-09-11'),
  (24,222,0,'2019-12-22'),
  (25,224,0,'2020-08-07'),
  (26,110,1,'2021-09-10'),
  (27,298,1,'2022-04-22'),
  (28,207,1,'2021-05-01'),
  (29,223,1,'2020-01-13'),
  (30,291,0,'2019-12-03');

  
INSERT INTO [Book] (Title,Description,CoverImage,PublicationDate,Price,QuantityAvailable,Publisher)
VALUES
  ('Pasqueir Coding Book','Curabitur ut odio vel est tempor bibendum. Donec',584,'2006-12-01',49,612,'Vel PC'),
  ('Unbelievable Numerical Analysis','tristique pellentesque, tellus sem mollis',1627,'1996-07-29',14,473,'Mollis Dui Inc.'),
  ('Book Database Systems','pede, ultrices a, auctor non, feugiat nec, diam. Duis mi',1290,'2004-04-04',75,585,'Laoreet Libero Company'),
  ('and Shakespeare Because','risus a ultricies adipiscing, enim mi tempor',1426,'2005-11-17',77,790,'Diam At Foundation'),
  ('He is Smart','Donec luctus aliquet odio. Etiam ligula',1157,'2016-01-24',22,459,'Feugiat Nec Associates'),
  ('He is Smart','rutrum. Fusce dolor',704,'1994-12-05',63,779,'Proin Dolor Nulla Company'),
  ('Languages and Shakespeare','Etiam gravida molestie arcu. Sed',1649,'2004-09-26',15,134,'Erat Semper PC'),
  ('Programming Languages and','adipiscing, enim mi tempor',1496,'2015-01-12',71,941,'Integer Aliquam Corp.'),
  ('Book Database Systems','vel turpis.',217,'2017-01-22',10,67,'Placerat Eget LLC'),
  ('Cool Datatructure Something','inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare.',1734,'2017-08-20',29,584,'Lorem Tristique Corporation'),
  ('Question Never Study','sit amet lorem semper',740,'2011-04-14',100,482,'Metus Urna Limited'),
  ('Shakespeare Because He','Maecenas malesuada fringilla est. Mauris',1924,'1997-07-12',18,934,'Ante LLP'),
  ('Never Study Homework','metus. Aliquam erat volutpat. Nulla',278,'2018-10-04',87,762,'Arcu Inc.'),
  ('Never Study Homework','Maecenas iaculis aliquet diam.',426,'2011-03-05',91,244,'Cras Inc.'),
  ('Pasqueir Coding Book','ante dictum cursus. Nunc mauris elit, dictum eu,',1397,'2003-11-22',49,314,'Nec Ante Ltd');
INSERT INTO [Book] (Title,Description,CoverImage,PublicationDate,Price,QuantityAvailable,Publisher)
VALUES
  ('Be is a','arcu. Aliquam ultrices iaculis odio. Nam interdum enim non',1991,'2000-11-07',72,44,'Sed Consulting'),
  ('Not Be is','amet, consectetuer adipiscing elit. Aliquam auctor, velit eget',275,'2002-03-22',19,935,'Est Corp.'),
  ('Book Database Systems','ridiculus mus. Proin',940,'2008-01-24',91,455,'Eros Proin Ultrices Industries'),
  ('Unbelievable Numerical Analysis','mi fringilla mi lacinia mattis. Integer eu',1906,'2022-02-06',98,667,'Massa Integer Incorporated'),
  ('Homework Michel Pasqueir','Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla',1570,'2009-04-06',81,623,'Etiam Bibendum Associates'),
  ('of Programming Languages','magna a neque. Nullam ut nisi a',1546,'2023-02-11',13,970,'Quis Accumsan Corp.'),
  ('to Be or','risus. Duis a mi fringilla mi lacinia',449,'2021-12-05',48,852,'Aliquam Eros Ltd'),
  ('of Programming Languages','nec, diam. Duis mi enim, condimentum eget,',1709,'2020-01-15',54,406,'Cursus Luctus Ipsum Corporation'),
  ('Smart Truly to','placerat eget,',1627,'2000-02-16',39,530,'Id Enim Curabitur Associates'),
  ('is a Question','adipiscing elit. Etiam laoreet, libero et',1836,'2013-06-10',60,269,'Ultrices A Auctor Company'),
  ('Never Study Homework','Etiam vestibulum massa rutrum magna. Cras convallis',828,'2018-04-23',66,71,'Phasellus Vitae Corporation'),
  ('Systems Adventures of','viverra. Donec tempus, lorem fringilla ornare placerat,',654,'2008-10-26',37,244,'Nec Leo LLC'),
  ('Be is a','Integer urna. Vivamus molestie dapibus ligula. Aliquam erat',1750,'2022-01-03',22,145,'Rutrum Magna Corp.'),
  ('Database Systems Adventures','penatibus et',1745,'2010-09-16',73,511,'Tincidunt Adipiscing Mauris Foundation'),
  ('Analysis of Programming','parturient montes, nascetur ridiculus',183,'2005-12-25',39,380,'Ipsum Incorporated');

  
INSERT INTO [OrderItem] (OrderId,BookId,Quantity)
VALUES
  (7,14,4),
  (13,16,5),
  (1,22,1),
  (24,12,2),
  (13,13,1),
  (14,17,3),
  (2,8,1),
  (2,5,4),
  (11,11,3),
  (9,6,2),
  (25,8,5),
  (1,23,3),
  (22,22,2),
  (6,7,2),
  (5,22,4);
INSERT INTO [OrderItem] (OrderId,BookId,Quantity)
VALUES
  (6,12,3),
  (15,26,2),
  (21,21,3),
  (3,15,4),
  (16,10,4),
  (7,27,4),
  (4,29,4),
  (24,5,2),
  (26,25,3),
  (15,12,3),
  (29,23,2),
  (20,5,4),
  (14,22,3),
  (26,24,3),
  (17,13,2);
