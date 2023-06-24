CREATE DATABASE furniture;
USE furniture;


-- Sales from an online furniture store
-- DATA Collected by: https://www.khanacademy.org/profile/charlesb2000/

CREATE TABLE sales(ID INTEGER  NOT NULL AUTO_INCREMENT PRIMARY KEY, 
				   transaction_date TEXT, 
                   product TEXT, 
                   price INTEGER, 
                   payment_type TEXT, 
                   name TEXT,
                   city TEXT, 
                   state TEXT, 
                   country TEXT, 
                   account_created TEXT, 
                   last_login TEXT, 
                   latitude REAL,
                   longitude REAL);

DESC sales;

INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/2/09 6:17','Chair',1200,'Mastercard','Carolina','Basildon','England','United Kingdom','1/2/09 6:00','1/2/09 6:08',51.5,-1.1166667);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/2/09 4:53','Chair',1200,'Visa','Betina','Parkville','MO','United states','1/2/09 4:42','1/2/09 7:49',39.195,-94.68194);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/2/09 13:08','Chair',1200,'Mastercard','Federica e Andrea','Astoria','OR','United states','1/1/09 16:21','1/3/09 12:32',46.18806,-123.83);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/3/09 14:44','Chair',1200,'Visa','Gouya','Echuca','Victoria','Australia','9/25/05 21:13','1/3/09 14:22',-36.1333333,144.75);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/4/09 12:56','Couch',3600,'Visa','Gerd W','Cahaba Heights','AL','United states','11/15/08 15:47','1/4/09 12:45',33.52056,-86.8025);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/4/09 13:19','Chair',1200,'Visa','Laurence','Mickleton','NJ','United states','9/24/08 15:19','1/4/09 13:04',39.79,-75.23806);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/4/09 20:11','Chair',1200,'Mastercard','Fleur','Peoria','IL','United states','1/3/09 9:38','1/4/09 19:45',40.69361,-89.58889);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/2/09 20:09','Chair',1200,'Mastercard','adam','Martin','TN','United states','1/2/09 17:43','1/4/09 20:01',36.34333,-88.85028);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/4/09 13:17','Chair',1200,'Mastercard','Renee Elisabeth','Tel Aviv','Tel Aviv','Israel','1/4/09 13:03','1/4/09 22:10',32.0666667,34.7666667);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/4/09 14:11','Chair',1200,'Visa','Aidan','Chatou','Ile-de-France','France','6/3/08 4:22','1/5/09 1:17',48.8833333,2.15);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/5/09 2:42','Chair',1200,'Diners','Stacy','New York','NY','United states','1/5/09 2:23','1/5/09 4:59',40.71417,-74.00639);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/5/09 5:39','Chair',1200,'Amex','Heidi','Eindhoven','Noord-Brabant','Netherlands','1/5/09 4:55','1/5/09 8:15',51.45,5.4666667);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/2/09 9:16','Chair',1200,'Mastercard','Sean','Shavano Park','TX','United states','1/2/09 8:32','1/5/09 9:05',29.42389,-98.49333);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/5/09 10:08','Chair',1200,'Visa','Georgia','Eagle','ID','United states','11/11/08 15:53','1/5/09 10:05',43.69556,-116.35306);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/2/09 14:18','Chair',1200,'Visa','Richard','Riverside','NJ','United states','12/9/08 12:07','1/5/09 11:01',40.03222,-74.95778);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/4/09 1:05','Chair',1200,'Diners','Leanne','Julianstown','Meath','Ireland','1/4/09 0:00','1/5/09 13:36',53.6772222,-6.3191667);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/5/09 11:37','Chair',1200,'Visa','Janet','Ottawa','Ontario','Canada','1/5/09 9:35','1/5/09 19:24',45.4166667,-75.7);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/6/09 5:02','Chair',1200,'Diners','barbara','Hyderabad','Andhra Pradesh','India','1/6/09 2:41','1/6/09 7:52',17.3833333,78.4666667);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/6/09 7:45','Couch',3600,'Visa','Sabine','London','England','United Kingdom','1/6/09 7:00','1/6/09 9:17',51.52721,0.14559);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/2/09 7:35','Chair',1200,'Diners','Hani','Salt Lake city','UT','United states','12/30/08 5:44','1/6/09 10:52',40.76083,-111.89028);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/6/09 12:56','Chair',1200,'Visa','Jeremy','Manchester','England','United Kingdom','1/6/09 10:58','1/6/09 13:31',53.5,-2.2166667);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/1/09 11:05','Chair',1200,'Diners','Janis','Ballynora','Cork','Ireland','12/10/07 12:37','1/7/09 1:52',51.8630556,-8.58);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/5/09 4:10','Chair',1200,'Mastercard','Nicola','Roodepoort','Gauteng','South Africa','1/5/09 2:33','1/7/09 5:13',-26.1666667,27.8666667);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/6/09 7:18','Chair',1200,'Visa','asuman','Chula Vista','CA','United states','1/6/09 7:07','1/7/09 7:08',32.64,-117.08333);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/2/09 1:11','Chair',1200,'Mastercard','Lena','Kuopio','Ita-Suomen Laani','Finland','12/31/08 2:48','1/7/09 10:20',62.9,27.6833333);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/1/09 2:24','Chair',1200,'Visa','Lisa','Sugar Land','TX','United states','1/1/09 1:56','1/7/09 10:52',29.61944,-95.63472);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/7/09 8:08','Chair',1200,'Diners','Bryan Kerrene','New York','NY','United states','1/7/09 7:39','1/7/09 12:38',40.71417,-74.00639);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/2/09 2:57','Chair',1200,'Visa','chris','London','England','United Kingdom','1/3/08 7:23','1/7/09 13:14',51.52721,0.14559);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/1/09 20:21','Chair',1200,'Visa','Maxine','Morton','IL','United states','10/24/08 6:48','1/7/09 20:49',40.61278,-89.45917);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/8/09 0:42','Chair',1200,'Visa','Family','Los Gatos','CA','United states','1/8/09 0:28','1/8/09 3:39',37.22667,-121.97361);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/8/09 3:56','Chair',1200,'Mastercard','Katherine','New York','NY','United states','1/8/09 3:33','1/8/09 6:19',40.71417,-74.00639);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/8/09 3:16','Bed',7500,'Mastercard','Linda','Miami','FL','United states','1/8/09 3:06','1/8/09 6:34',25.77389,-80.19389);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/8/09 1:59','Chair',1200,'Mastercard','SYLVIA','Vesenaz','Geneve','Switzerland','11/28/07 11:56','1/8/09 7:20',46.2333333,6.2);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/3/09 9:03','Chair',1200,'Diners','Sheila','Brooklyn','NY','United states','1/3/09 8:47','1/8/09 10:38',40.65,-73.95);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/5/09 13:17','Chair',1200,'Mastercard','Stephanie','Badhoevedorp','Noord-Holland','Netherlands','1/5/09 12:45','1/8/09 11:45',52.3333333,4.7833333);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/6/09 7:46','Chair',1200,'Amex','Kelly','Reston','VA','United states','1/6/09 7:30','1/8/09 12:40',38.96861,-77.34139);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/5/09 20:00','Couch',3600,'Visa','James','Burpengary','Queensland','Australia','12/10/08 19:53','1/8/09 17:58',-27.1666667,152.95);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/8/09 16:24','Chair',1200,'Visa','jennifer','Phoenix','AZ','United states','1/8/09 15:57','1/8/09 18:30',33.44833,-112.07333);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/9/09 6:39','Chair',1200,'Mastercard','Anneli','Houston','TX','United states','1/9/09 5:09','1/9/09 7:11',29.76306,-95.36306);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/6/09 22:19','Bed',7500,'Amex','Ritz','Pittsfield','VT','United states','1/6/09 12:00','1/9/09 10:05',43.77222,-72.81333);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/6/09 23:00','Couch',3600,'Amex','Sylvia','Pittsfield','VT','United states','1/6/09 12:00','1/9/09 10:05',43.77222,-72.81333);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/7/09 7:44','Chair',1200,'Mastercard','Marie','Ball Ground','GA','United states','1/7/09 5:35','1/9/09 10:52',34.33806,-84.37667);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/3/09 13:24','Chair',1200,'Visa','Mehmet Fatih','Helsingor','Frederiksborg','Denmark','1/3/09 12:47','1/9/09 11:14',56.0333333,12.6166667);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/7/09 15:12','Couch',3600,'Visa','Anabela','Flossmoor','IL','United states','1/5/09 19:55','1/9/09 16:03',41.54278,-87.68472);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/7/09 20:15','Chair',1200,'Amex','Nicole','Houston','TX','United states','1/7/09 17:17','1/9/09 20:02',29.76306,-95.36306);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/3/09 10:11','Couch',3600,'Visa','Christiane','Delray Beach','FL','United states','1/3/09 9:27','1/10/09 9:46',26.46111,-80.07306);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/9/09 15:58','Chair',1200,'Mastercard','Sari','Newbury','England','United Kingdom','1/9/09 14:53','1/10/09 13:16',51.4,-1.3166667);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/3/09 13:11','Chair',1200,'Mastercard','simone','Kobenhavn','Kobenhavn','Denmark','10/31/08 0:31','1/10/09 13:24',55.6666667,12.5833333);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/10/09 12:57','Couch',3600,'Amex','Vanessa','Sandy Springs','GA','United states','2/7/07 20:16','1/10/09 14:09',33.92417,-84.37861);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/10/09 14:43','Chair',1200,'Diners','Anupam','Kinsaley','Dublin','Ireland','1/9/09 11:38','1/10/09 14:37',53.4247222,-6.1758333);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/10/09 12:05','Chair',1200,'Visa','Karina','Fort Lauderdale','FL','United states','7/1/08 12:53','1/10/09 16:33',26.12194,-80.14361);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/6/09 1:20','Chair',1200,'Mastercard','Frank','Melbourne','Victoria','Australia','1/2/09 17:51','1/10/09 18:27',-37.8166667,144.9666667);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/10/09 14:56','Chair',1200,'Visa','Angela','Ankeny','IA','United states','1/8/09 3:06','1/10/09 19:41',41.72972,-93.60556);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/7/09 10:01','Chair',1200,'Visa','Darren','Pittsboro','NC','United states','1/7/09 9:04','1/10/09 20:02',35.72,-79.1775);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/1/09 1:26','Bed',7500,'Mastercard','Nikki','New Rochelle','NY','United states','1/1/09 0:58','1/10/09 21:31',40.91139,-73.78278);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/11/09 2:04','Chair',1200,'Visa','chris','Gold Coast','Queensland','Australia','1/11/09 0:33','1/11/09 2:11',-28,153.4333333);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/11/09 14:17','Chair',1200,'Visa','Stephanie','Brussels','Brussels (Bruxelles)','Belgium','1/11/09 13:39','1/11/09 13:39',50.8333333,4.3333333);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/10/09 21:38','Chair',1200,'Visa','Anushka','Maple Ridge District Municipality','British Columbia','Canada','1/10/09 21:17','1/11/09 19:32',49.25,-122.5);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/7/09 6:18','Chair',1200,'Mastercard','June','Beachwood','OH','United states','2/23/06 11:56','1/11/09 19:35',41.46444,-81.50889);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/4/09 8:39','Couch',3600,'Diners','Baybars','Prince Albert','Saskatchewan','Canada','1/3/09 17:17','1/11/09 21:05',53.2,-105.75);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/5/09 0:31','Chair',1200,'Mastercard','Bonnie','Saltsjobaden','Stockholm','Sweden','1/4/09 23:45','1/12/09 0:37',59.2833333,18.3);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/2/09 6:07','Chair',1200,'Visa','Cindy','Kemble','England','United Kingdom','12/30/08 10:21','1/12/09 2:24',51.6766667,-2.0180556);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/12/09 3:25','Chair',1200,'Mastercard','chrissy','W Lebanon','NH','United states','1/12/09 3:12','1/12/09 3:22',43.64917,-72.31083);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/4/09 13:56','Chair',1200,'Mastercard','Tamar','Headley','England','United Kingdom','11/29/07 9:23','1/12/09 5:38',51.1166667,-0.8166667);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/7/09 0:12','Couch',3600,'Mastercard','Deirdre','Lausanne','Vaud','Switzerland','12/1/08 6:25','1/12/09 6:55',46.5333333,6.6666667);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/12/09 5:18','Chair',1200,'Mastercard','Bernadett','Southampton','England','United Kingdom','1/12/09 4:45','1/12/09 8:08',50.9,-1.4);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/8/09 15:16','Bed',7500,'Visa','Dottie','Woodsboro','MD','United states','1/8/09 14:56','1/12/09 9:29',39.53306,-77.315);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/11/09 11:33','Chair',1200,'Visa','Stefan','Stavanger','Rogaland','Norway','1/11/09 9:02','1/12/09 10:37',58.9666667,5.75);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/7/09 20:22','Chair',1200,'Visa','Gina','Red Deer','Alberta','Canada','11/23/08 19:30','1/12/09 12:24',52.2666667,-113.8);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/2/09 22:00','Chair',1200,'Diners','Lynne','Memphis','TN','United states','1/2/09 21:04','1/12/09 13:18',35.14944,-90.04889);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/5/09 13:52','Couch',3600,'Mastercard','Tammy','Morges','Vaud','Switzerland','1/5/09 5:55','1/12/09 14:04',46.5166667,6.5);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/8/09 20:32','Chair',1200,'Visa','Kim','Calgary','Alberta','Canada','1/8/09 20:21','1/12/09 14:07',51.0833333,-114.0833333);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/8/09 13:34','Chair',1200,'Visa','Bruce','Belleville','Ontario','Canada','1/6/09 14:38','1/12/09 18:31',44.1666667,-77.3833333);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/11/09 13:08','Chair',1200,'Visa','Rosa Maria','Cincinnati','OH','United states','1/11/09 12:38','1/12/09 18:44',39.16194,-84.45694);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/12/09 19:04','Chair',1200,'Visa','Lydia','Comox','British Columbia','Canada','9/20/08 20:53','1/12/09 19:01',49.6833333,-124.9333333);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/12/09 13:41','Chair',1200,'Visa','Eric','Gasperich','Luxembourg','Luxembourg','1/12/09 13:16','1/13/09 1:03',49.5855556,6.1230556);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/11/09 10:38','Chair',1200,'Mastercard','AnaPaula','Helens Bay','Northern Ireland','United Kingdom','9/4/08 9:26','1/13/09 2:36',54.65,-5.7333333);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/13/09 5:57','Chair',1200,'Visa','Robin','Milan','Lombardy','Italy','10/15/08 5:31','1/13/09 5:55',45.4666667,9.2);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/13/09 6:13','Chair',1200,'Visa','Gitte','staten Island','NY','United states','1/13/09 5:17','1/13/09 7:33',40.63667,-74.15917);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/8/09 13:14','Chair',1200,'Visa','Dr. Claudia','Oslo','Oslo','Norway','1/8/09 12:47','1/13/09 10:49',59.9166667,10.75);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/2/09 11:41','Chair',1200,'Visa','Crystal','Farmington','Michigan','United states','1/1/09 12:00','1/13/09 18:34',42.46444,-83.37639);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/7/09 19:50','Chair',1200,'Diners','Delphine','Santa Monica','CA','United states','1/3/09 12:04','1/13/09 20:17',34.01944,-118.49028);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/1/09 20:28','Chair',1200,'Visa','nathalie','Calgary','Alberta','Canada','1/1/09 20:11','1/13/09 21:11',51.0833333,-114.0833333);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/3/09 15:22','Chair',1200,'Mastercard','Lindi','Vancouver','British Columbia','Canada','2/20/08 22:45','1/13/09 23:02',49.25,-123.1333333);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/12/09 3:03','Couch',3600,'Mastercard','Valda','Irvine','CA','United states','1/12/09 2:48','1/14/09 1:07',33.66944,-117.82222);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/5/09 8:58','Couch',3600,'Mastercard','Marcia','Telgte','Nordrhein-Westfalen','Germany','9/1/08 3:39','1/14/09 2:07',52.3333333,7.9);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/10/09 14:03','Chair',1200,'Mastercard','Kevin','Cheltenham','England','United Kingdom','3/13/06 4:56','1/14/09 2:22',51.9,-2.0833333);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/13/09 11:26','Chair',1200,'Visa','Clare','Keller','VA','United states','1/13/09 11:15','1/14/09 2:39',37.61917,-75.76417);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/2/09 12:18','Chair',1200,'Visa','Alice','Nakskov','Storstrom','Denmark','12/5/07 11:37','1/14/09 4:05',54.8333333,11.15);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/14/09 4:54','Chair',1200,'Mastercard','ZENA','Honolulu','HI','United states','1/14/09 4:34','1/14/09 4:43',21.30694,-157.85833);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/6/09 17:15','Chair',1200,'Visa','Andrea','Bubuieci','Chisinau','Moldova','12/24/08 17:31','1/14/09 10:27',46.985,28.9425);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/3/09 13:56','Chair',1200,'Visa','Rennae','Amelia Island','FL','United states','1/3/09 12:30','1/14/09 13:03',30.66944,-81.46278);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/4/09 7:54','Chair',1200,'Visa','Gerhard','Alliston','Ontario','Canada','10/21/05 21:49','1/14/09 13:06',44.15,-79.8666667);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/12/09 7:28','Chair',1200,'Amex','Megan','La Alberca','Murcia','Spain','12/10/08 16:41','1/14/09 13:44',37.9333333,-1.1333333);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/6/09 15:15','Chair',1200,'Mastercard','Danielle','Rathgar','Dublin','Ireland','1/6/09 14:59','1/14/09 14:33',53.3122222,-6.2683333);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/13/09 23:56','Chair',1200,'Mastercard','Tod','Coral Gables','FL','United states','1/13/09 23:13','1/14/09 15:17',25.72111,-80.26861);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/14/09 19:32','Chair',1200,'Visa','Janaina','Miami','FL','United states','12/16/08 22:19','1/14/09 19:28',25.77389,-80.19389);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/6/09 21:13','Chair',1200,'Visa','Kofi','Vancouver','British Columbia','Canada','1/7/08 21:16','1/14/09 20:50',49.25,-123.1333333);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/14/09 11:19','Chair',1200,'Visa','Jennifer','Jumeira','Dubayy','United Arab Emirates','1/14/09 10:44','1/14/09 21:26',25.2097222,55.2477778);
INSERT INTO sales(transaction_date,product,price,payment_type,name,city,state,country,account_created,last_login,latitude,longitude) VALUES ('1/13/09 19:39','Chair',1200,'Visa','Jolene','Englewood','CO','United states','1/6/09 22:00','1/14/09 22:02',39.64778,-104.98722);


-- Everything on the table sales
SELECT * FROM sales;


-- UPDATE and fix Michigan from Michigan to MI
UPDATE sales SET state = 'MI' WHERE ID = 81;

-- % of people using different credit cards in each country
WITH cte1 AS (SELECT country, COUNT(*) AS Total_Count FROM sales GROUP BY country),
	 cte2 AS (SELECT country, payment_type, COUNT(*) AS EA_Count FROM sales
		GROUP BY country, payment_type ORDER BY country)
        
SELECT cte1.country, payment_type, CONCAT(ROUND(EA_Count/Total_Count*100, 0), '%') AS percent FROM cte1
	JOIN cte2 ON cte1.country = cte2.country;


-- LIST MOST USED PAYMENT TYPE IN UNITED STATES
SELECT payment_type AS 'Most Used Payment Method in US' FROM sales 
WHERE country = 'United States' GROUP BY payment_type ORDER BY payment_type DESC LIMIT 1;


-- LAST 10 LOG IN CUSTOMER
SELECT CONCAT (name, ' at ', city, ', ', state, '. ', country) AS Customers, last_login AS 'Login Date' 
FROM sales ORDER BY last_login DESC LIMIT 10;


-- TOP 10 OLDEST CUSTOMERS
SELECT CONCAT (name, ' at ', city, ', ', state, '. ', country) AS Customers, account_created AS 'Customer Since' 
FROM sales ORDER BY account_created LIMIT 10;


-- Number of sales per state in the United States
SELECT state, COUNT(*) AS sales FROM sales 
	GROUP BY country, state
    HAVING country = 'United States'
    ORDER BY sales DESC;


-- TABLEAU Tables
-- Sales Per State
SELECT product, name, payment_type, city, state, SUM(price) AS total_sales FROM sales
	GROUP BY state, country, name, product, city, payment_type, transaction_date
    HAVING country = 'United States';
    
    
-- % of people using different credit cards in each country
WITH cte1 AS (SELECT country, COUNT(*) AS Total_Count FROM sales GROUP BY country),
	 cte2 AS (SELECT country, payment_type, COUNT(*) AS EA_Count FROM sales
		GROUP BY country, payment_type ORDER BY country)
        
SELECT cte1.country, payment_type, EA_Count AS sales,
	   Total_Count AS total, CONCAT(ROUND(EA_Count/Total_Count*100, 0), '%') AS percent FROM cte1
	JOIN cte2 ON cte1.country = cte2.country;


-- Number of sales per state in the United States
SELECT state, SUM(price) AS sales, COUNT(*) AS transactions FROM sales 
	GROUP BY country, state
    HAVING country = 'United States'
    ORDER BY state;





