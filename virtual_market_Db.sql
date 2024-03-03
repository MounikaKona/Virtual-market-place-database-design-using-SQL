
DROP TABLE order_details;
DROP TABLE tracking_history;
DROP TABLE orders;
DROP TABLE reviews;
DROP TABLE customers;
DROP TABLE physical_products;
DROP TABLE digital_products;
DROP TABLE products;
CREATE TABLE customers(
username VARCHAR(20),
full_name VARCHAR(20) NOT NULL,
email VARCHAR(30) NOT NULL,
street VARCHAR(20) NOT NULL,
city VARCHAR(20) NOT NULL,
state VARCHAR(20) NOT NULL,
zipcode VARCHAR(10) NOT NULL,
PRIMARY KEY(username));
INSERT INTO customers(username, full_name, email, street, city, state, zipcode) VALUES("johnsmith07", "john smith", "sjohn@gmail.com", "universitydr", "arlington", "virginia", "20110");
INSERT INTO customers(username, full_name, email, street, city, state, zipcode) VALUES("jennysharl99", "jenny sharl", "sjenny@gmail.com", "churchst", "ashburn", "virginia", "20130");
INSERT INTO customers(username, full_name, email, street, city, state, zipcode) VALUES("johnwilson01", "john wilson", "jwilson@gmail.com", "eldenst", "herndon", "virginia", "20180");
INSERT INTO customers(username, full_name, email, street, city, state, zipcode) VALUES("peterson07", "peterson walker", "peter@gmail.com", "locustst", "aldie", "newjersey", "20150");
INSERT INTO customers(username, full_name, email, street, city, state, zipcode) VALUES("alice11", "alice flores", "alice@gmail.com", "jerseyst", "centreville", "newjersey", "20117");
INSERT INTO customers(username, full_name, email, street, city, state, zipcode) VALUES("kabirsingh09", "kabir singh", "kabirs@gmail.com", "birchcovest", "herndon", "virginia", "20140");
INSERT INTO customers(username, full_name, email, street, city, state, zipcode) VALUES("anjukapoor19", "anjula kapoor",  "anjuk2@yahoo.com", "vanst", "manassas", "southdakota", "50160");
INSERT INTO customers(username, full_name, email, street, city, state, zipcode) VALUES("ramcharan", "ram charan", "charanr@yahoo.com", "jubliehills", "woodbridge", "idaho", "53516");
INSERT INTO customers(username, full_name, email, street, city, state, zipcode) VALUES("poojahegde", "pooja hegde", "hegdep@yahoo.com", "Ekansasst", "rapidcity", "southdakota", "57701");
INSERT INTO customers(username, full_name, email, street, city, state, zipcode) VALUES("arjunkhan", "arjun khan", "arjun@gmail.com", "randolphst", "chicago", "illinois", "60602");
INSERT INTO customers(username, full_name, email, street, city, state, zipcode) VALUES("kiara", "kiara advani", "kiara@gmail.com", "riverst", "chicago", "illinois", "60601");
INSERT INTO customers(username, full_name, email, street, city, state, zipcode) VALUES("katrina", "katrina kaif", "katrina@yahoo.com", "blanchardville", "chicago", "illinois", "60607");
SELECT * FROM customers;

CREATE TABLE orders(
orderid CHAR(10),
username VARCHAR(20) NOT NULL,
order_date DATE NOT NULL,
order_status ENUM("processing", "shipping", "delivered", "downloaded", "cancelled", "returned") NOT NULL,
origination_street VARCHAR(20) NULL,
origination_city VARCHAR(20) NULL,
origination_state VARCHAR(20) NULL,
origination_zipcode VARCHAR(10) NULL,
destination_street VARCHAR(20) NULL,
destination_city VARCHAR(20) NULL,
destination_state VARCHAR(20) NULL,
destination_zipcode VARCHAR(10) NULL,
PRIMARY KEY(orderid),
FOREIGN KEY(username) REFERENCES customers(username) ON DELETE RESTRICT ON UPDATE CASCADE);
INSERT INTO orders(orderid, username, order_date, order_status, origination_street, origination_city, origination_state, origination_zipcode, destination_street, destination_city,
destination_state, destination_zipcode) VALUES("1010101112", "johnsmith07", "2023-02-23", "shipping", "1st place st", "newark", "newjersey", "07078", "universitydr", "arlington", "virginia",
"20110");
INSERT INTO orders(orderid, username, order_date, order_status, origination_street, origination_city, origination_state, origination_zipcode, destination_street, destination_city,
destination_state, destination_zipcode) VALUES("1020202223", "katrina", "2022-05-01", "cancelled", "7 pines court", "atlantic city","new jersey", "08203", "blanchardville", "chicago", "illinois", "60607");
INSERT INTO orders(orderid, username, order_date, order_status, origination_street, origination_city, origination_state, origination_zipcode, destination_street, destination_city,
destination_state, destination_zipcode) VALUES("1030303334", "alice11", "2022-01-01", "delivered", "1st place st", "springst", "ohio", "07078", "jerseyst", "centreville", "newjersey", "20117");
INSERT INTO orders(orderid, username, order_date, order_status, origination_street, origination_city, origination_state, origination_zipcode, destination_street, destination_city,
destination_state, destination_zipcode) VALUES("1040404445", "anjukapoor19", "2022-02-02", "cancelled", "adamsstreet", "morristown", "newjersey", "07961", "vanst", "manassas", "southdakota", "50160");
INSERT INTO orders(orderid, username, order_date, order_status) VALUES("1050505556", "ramcharan", "2023-01-12", "downloaded");
INSERT INTO orders(orderid, username, order_date, order_status, origination_street, origination_city, origination_state, origination_zipcode, destination_street, destination_city,
destination_state, destination_zipcode) VALUES("1060606667", "arjunkhan", "2023-02-22", "shipping", "7 pines court", "atlantoc city", "new jersey", "08203", "randolphst", "chicago", "illinois", "60602");
INSERT INTO orders(orderid, username, order_date, order_status) VALUES("1070707778", "poojahegde", "2022-12-09", "downloaded");
INSERT INTO orders(orderid, username, order_date, order_status, origination_street, origination_city, origination_state, origination_zipcode, destination_street, destination_city,
destination_state, destination_zipcode) VALUES("1080808889", "jennysharl99", "2023-02-21", "processing", "acornst","centralave", "ohio", "20220", "churchst", "ashburn", "virginia", "20130");
INSERT INTO orders(orderid, username, order_date, order_status, origination_street, origination_city, origination_state, origination_zipcode, destination_street, destination_city,
destination_state, destination_zipcode) VALUES("1011122233", "johnwilson01", "2022-12-10", "delivered","12 oaksdrive", "kent", "ohio", "20220", "eldenst", "herndon", "virginia", "20180");
INSERT INTO orders(orderid, username, order_date, order_status, origination_street, origination_city, origination_state, origination_zipcode, destination_street, destination_city,
destination_state, destination_zipcode)VALUES("1056678910", "peterson07", "2023-02-24", "processing", "7 pines court", "atlantic city","new jersey", "08203", "locustst", "aldie", "newjersey", "20150");
INSERT INTO orders(orderid, username, order_date, order_status, origination_street, origination_city, origination_state, origination_zipcode, destination_street, destination_city,
destination_state, destination_zipcode) VALUES("1090907779", "jennysharl99", "2022-12-05", "cancelled", "aikenplace", "manassas", "virginia", "20111", "churchst", "ashburn", "virginia", "20130");
INSERT INTO orders(orderid, username, order_date, order_status) VALUES("1026267891", "kiara", "2020-12-09", "downloaded");
INSERT INTO orders(orderid, username, order_date, order_status, origination_street, origination_city, origination_state, origination_zipcode, destination_street, destination_city,
destination_state, destination_zipcode)VALUES("1029705610", "johnwilson01", "2022-10-10", "delivered", "aikenplace", "princeton", "ohio", "30333", "eldenst", "herndon", "virginia", "20180");
INSERT INTO orders(orderid, username, order_date, order_status, origination_street, origination_city, origination_state, origination_zipcode, destination_street, destination_city,
destination_state, destination_zipcode) VALUES("1078911256", "poojahegde", "2022-10-10", "delivered", "locustst", "ohiost", "sterling", "wyoming", "Ekansasst", "rapidcity", "southdakota", "57701");
INSERT INTO orders(orderid, username, order_date, order_status, origination_street, origination_city, origination_state, origination_zipcode, destination_street, destination_city,
destination_state, destination_zipcode) VALUES("1052423260", "katrina", "2022-11-11", "delivered", "columbiast", "chicago", "illinois", "60111", "blanchardville", "chicago", "illinois", "60607");
INSERT INTO orders(orderid, username, order_date, order_status, origination_street, origination_city, origination_state, origination_zipcode, destination_street, destination_city,
destination_state, destination_zipcode)VALUES("1011258132", "ramcharan", "2022-09-10", "delivered", "acornst", "paterson", "delaware", "50501", "jubliehills", "woodbridge", "idaho", "53516");
INSERT INTO orders(orderid, username, order_date, order_status, origination_street, origination_city, origination_state, origination_zipcode, destination_street, destination_city,
destination_state, destination_zipcode) VALUES("1023451011", "alice11", "2022-10-10", "delivered", "7 pines court", "atlantic city","new jersey", "08203", "jerseyst", "centreville", "newjersey", "20117");
INSERT INTO orders(orderid, username, order_date, order_status, origination_street, origination_city, origination_state, origination_zipcode, destination_street, destination_city,
destination_state, destination_zipcode) VALUES("1011134350", "johnsmith07", "2023-01-10", "delivered", "7 pines court", "atlantic city","new jersey", "08203", "universitydr", "arlington", "virginia", "20110");
INSERT INTO orders(orderid, username, order_date, order_status, origination_street, origination_city, origination_state, origination_zipcode, destination_street, destination_city,
destination_state, destination_zipcode) VALUES("1022253710", "alice11", "2022-11-10", "delivered", "free court", "harpersferry","westvirginia", "08203", "jerseyst", "centreville", "newjersey", "20117");
INSERT INTO orders(orderid, username, order_date, order_status, origination_street, origination_city, origination_state, origination_zipcode, destination_street, destination_city,
destination_state, destination_zipcode) VALUES("1097872010", "kiara", "2023-01-05", "cancelled", "7 pines court", "atlantoc city", "new jersey", "08203", "riverst", "chicago", "illinois", "60601");
INSERT INTO orders(orderid, username, order_date, order_status) VALUES("1100221890", "poojahegde", "2022-12-12", "downloaded");
INSERT INTO orders(orderid, username, order_date, order_status) VALUES("1101018230", "kiara", "2022-09-09", "downloaded");
INSERT INTO orders(orderid, username, order_date, order_status, origination_street, origination_city, origination_state, origination_zipcode, destination_street, destination_city,
destination_state, destination_zipcode) VALUES("1082711875", "ramcharan", "2022-02-01", "delivered", "7 pines court", "atlantoc city", "new jersey", "08203", "jubliehills", "woodbridge", "idaho", "53516" );
INSERT INTO orders(orderid, username, order_date, order_status) VALUES("1097616650", "jennysharl99", "2023-02-17", "downloaded");
INSERT INTO orders(orderid, username, order_date, order_status) VALUES("1011011121", "jennysharl99", "2022-12-09", "downloaded");
INSERT INTO orders(orderid, username, order_date, order_status) VALUES("1151201601", "alice11", "2023-02-10", "downloaded");
INSERT INTO orders(orderid, username, order_date, order_status) VALUES("1801902000", "alice11", "2023-02-26", "downloaded");
INSERT INTO orders(orderid, username, order_date, order_status) VALUES("1801902001", "johnsmith07", "2023-02-27", "downloaded");
SELECT * FROM orders;

CREATE TABLE products(
product_id CHAR(5) NOT NULL,
product_name VARCHAR(50) NOT NULL,
price REAL NOT NULL,
PRIMARY KEY(product_id));

CREATE TABLE physical_products(
product_id CHAR(5) NOT NULL,
units_available INT NOT NULL,
PRIMARY KEY(product_id, units_available),
FOREIGN KEY(product_id) REFERENCES products(product_id) ON DELETE RESTRICT ON UPDATE CASCADE);

CREATE TABLE digital_products(
product_id CHAR(5),
licence_keys_sold INT NOT NULL,
PRIMARY KEY(product_id, licence_keys_sold),
FOREIGN KEY(product_id) REFERENCES products(product_id) ON DELETE RESTRICT ON UPDATE CASCADE);

INSERT INTO products(product_id, product_name, price) VALUES("10010", "data visualization book", 100);
INSERT INTO products(product_id, product_name, price) VALUES("10011", "applied statistics book", 100);
INSERT INTO products(product_id, product_name, price) VALUES("10012", "introduction to data mining book", 150);
INSERT INTO products(product_id, product_name, price) VALUES("10014", "data science for business", 200);
INSERT INTO products(product_id, product_name, price)VALUES("10013", "iphone 14 max", 2000);
INSERT INTO products(product_id, product_name, price) VALUES("10020", "iphone 13", 1500);
INSERT INTO products(product_id, product_name, price) VALUES("10021", "microsoft 365 family", 190);
INSERT INTO products(product_id, product_name, price) VALUES("10022", "norton 360 antivirus", 90);
INSERT INTO products(product_id, product_name, price) VALUES("10023", "mcafee total protection", 150);
INSERT INTO products(product_id, product_name, price) VALUES("10024", "mac book air laptop", 1200);
INSERT INTO products(product_id, product_name, price)VALUES("10025", "bitdefender total security", 120);
INSERT INTO products(product_id, product_name, price) VALUES("10030", "kaspersky internet security", 130);
INSERT INTO products(product_id, product_name, price) VALUES("10031", "portable charger powerbank", 80);
INSERT INTO products(product_id, product_name, price) VALUES("10032", "iphone13 phone case", 70);
INSERT INTO products(product_id, product_name, price) VALUES("10035", "asus zen book14", 800);
INSERT INTO products(product_id, product_name, price) VALUES("10036", "corel video editing software", 59);
INSERT INTO products(product_id, product_name, price) VALUES("10037", "cyber link power editing software", 111);
SELECT * FROM products;
INSERT INTO physical_products(product_id, units_available) VALUES("10010", 20);
INSERT INTO physical_products(product_id, units_available) VALUES("10011", 15);
INSERT INTO physical_products(product_id, units_available) VALUES("10012", 35);
INSERT INTO physical_products(product_id, units_available) VALUES("10014", 23);
INSERT INTO physical_products(product_id, units_available) VALUES("10013", 15);
INSERT INTO physical_products(product_id, units_available) VALUES("10020", 40);
INSERT INTO physical_products(product_id, units_available) VALUES("10024", 10);
INSERT INTO physical_products(product_id, units_available) VALUES("10031", 21);
INSERT INTO physical_products(product_id, units_available) VALUES("10032", 19);
INSERT INTO physical_products(product_id, units_available) VALUES("10035", 10);
SELECT * FROM physical_products;
INSERT INTO digital_products(product_id, licence_keys_sold) VALUES("10021", 200);
INSERT INTO digital_products(product_id, licence_keys_sold) VALUES("10022", 58);
INSERT INTO digital_products(product_id, licence_keys_sold) VALUES("10023", 70);
INSERT INTO digital_products(product_id, licence_keys_sold) VALUES("10025", 50);
INSERT INTO digital_products(product_id, licence_keys_sold) VALUES("10030", 60);
INSERT INTO digital_products(product_id, licence_keys_sold) VALUES("10036", 20);
INSERT INTO digital_products(product_id, licence_keys_sold) VALUES("10037", 15);

SELECT * from digital_products;
CREATE TABLE order_details(
orderid CHAR(10) NOT NULL,
product_id CHAR(5) NOT NULL,
quantity INT NOT NULL,
PRIMARY KEY(orderid, product_id),
FOREIGN KEY(orderid) REFERENCES orders(orderid) ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY(product_id) REFERENCES products(product_id) ON DELETE RESTRICT ON UPDATE CASCADE);

INSERT INTO order_details(orderid, product_id, quantity) VALUES("1010101112", "10014", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1020202223", "10010", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1030303334", "10014", 2);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1040404445", "10020", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1050505556", "10021", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1060606667", "10014", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1060606667", "10035", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1070707778", "10023", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1080808889", "10014", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1011122233", "10031", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1056678910", "10014", 2);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1090907779", "10032", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1026267891", "10021", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1029705610", "10035", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1029705610", "10020", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1029705610", "10032", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1078911256", "10020", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1052423260", "10020", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1011258132", "10032", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1023451011", "10010", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1011134350", "10010", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1022253710", "10032", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1097872010", "10020", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1100221890", "10021", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1101018230", "10023", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1082711875", "10024", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1097616650", "10021", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1011011121", "10036", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1151201601", "10037", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1801902000", "10021", 1);
INSERT INTO order_details(orderid, product_id, quantity) VALUES("1801902001", "10021", 1);
SELECT * FROM order_details;
CREATE TABLE reviews(
username VARCHAR(20) NOT NULL,
product_id CHAR(5) NOT NULL,
rating INT NOT NULL CHECK (rating BETWEEN 1 AND 5),
comments VARCHAR(200) NULL,
PRIMARY KEY(username, product_id),
FOREIGN KEY(username) REFERENCES customers(username) ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY(product_id) REFERENCES products(product_id) ON DELETE RESTRICT ON UPDATE CASCADE);

INSERT INTO reviews(username, product_id, rating, comments) VALUES("johnwilson01", "10031", 5, "extraordinary");
INSERT INTO reviews(username, product_id, rating, comments) VALUES("johnwilson01", "10035", 4, "good");
INSERT INTO reviews(username, product_id, rating) VALUES("johnwilson01", "10020", 2);
INSERT INTO reviews(username, product_id, rating) VALUES("johnwilson01", "10032", 3);
INSERT INTO reviews(username, product_id, rating) VALUES("johnsmith07", "10010", 3);
INSERT INTO reviews(username, product_id, rating, comments) VALUES("alice11", "10032", 4, "good");
INSERT INTO reviews(username, product_id, rating) VALUES("kiara", "10020", 1);
INSERT INTO reviews(username, product_id, rating, comments) VALUES("katrina", "10010", 1, "very bad");
INSERT INTO reviews(username, product_id, rating, comments) VALUES("alice11", "10010", 3, "average product");
INSERT INTO reviews(username, product_id, rating ) VALUES("poojahegde", "10020", 2);
INSERT INTO reviews(username, product_id, rating, comments) VALUES("ramcharan", "10032", 3, "the case is bit delicate");
INSERT INTO reviews(username, product_id, rating ) VALUES("alice11", "10014", 5);
INSERT INTO reviews(username, product_id, rating) VALUES("kiara", "10021", 5);
INSERT INTO reviews(username, product_id, rating) VALUES("poojahegde", "10023", 4);
INSERT INTO reviews(username, product_id, rating) VALUES("katrina", "10020", 3);
INSERT INTO reviews(username, product_id, rating, comments) VALUES("jennysharl99", "10032", 2, "case is very delicate");
SELECT * FROM reviews;
CREATE TABLE tracking_history(
orderid CHAR(10) NOT NULL,
date_of_stop DATE NOT NULL,
stop_street VARCHAR(20) NOT NULL,
stop_city VARCHAR(20) NOT NULL,
stop_state VARCHAR(20) NOT NULL,
stop_zipcode VARCHAR(20) NOT NULL,
FOREIGN KEY(orderid) REFERENCES orders(orderid) ON DELETE RESTRICT ON UPDATE CASCADE);

INSERT INTO tracking_history(orderid, date_of_stop, stop_street, stop_city, stop_state, stop_zipcode) VALUES("1030303334", "2022-01-03", "watsonst", "clifton", "virginia", "22030");
INSERT INTO tracking_history(orderid, date_of_stop, stop_street, stop_city, stop_state, stop_zipcode) VALUES("1011258132", "2022-09-12", "watsonst", "clifton", "virginia", "22030");
INSERT INTO tracking_history(orderid, date_of_stop, stop_street, stop_city, stop_state, stop_zipcode) VALUES("1022253710", "2022-11-12", "watsonst", "clifton", "virginia", "22030");
INSERT INTO tracking_history(orderid, date_of_stop, stop_street, stop_city, stop_state, stop_zipcode) VALUES("1010101112", "2023-02-24", "newarkst", "dover", "delaware", "19901");
INSERT INTO tracking_history(orderid, date_of_stop, stop_street, stop_city, stop_state, stop_zipcode) VALUES("1030303334", "2022-01-03", "universitydr", "fairfax", "virginia", "20133");
INSERT INTO tracking_history(orderid, date_of_stop, stop_street, stop_city, stop_state, stop_zipcode) VALUES("1011134350", "2023-01-11", "watsonst", "clifton", "virginia", "22030");
INSERT INTO tracking_history(orderid, date_of_stop, stop_street, stop_city, stop_state, stop_zipcode) VALUES("1060606667", "2023-02-25", "19thplace", "cleveland", "ohio", "44109");
INSERT INTO tracking_history(orderid, date_of_stop, stop_street, stop_city, stop_state, stop_zipcode) VALUES("1060606667", "2023-02-23", "watsonst", "clifton", "virginia", "22030");
INSERT INTO tracking_history(orderid, date_of_stop, stop_street, stop_city, stop_state, stop_zipcode) VALUES("1080808889", "2023-02-22", "watsonst", "clifton", "virginia", "22030");
INSERT INTO tracking_history(orderid, date_of_stop, stop_street, stop_city, stop_state, stop_zipcode) VALUES("1011122233", "2022-12-11", "vanburenst", "columbus", "ohio", "43125");
INSERT INTO tracking_history(orderid, date_of_stop, stop_street, stop_city, stop_state, stop_zipcode) VALUES("1060606667", "2023-02-25", "21stsaintexn", "indiana", "indianapolis", "47906");
INSERT INTO tracking_history(orderid, date_of_stop, stop_street, stop_city, stop_state, stop_zipcode) VALUES("1078911256", "2022-10-12", "newyorkst", "siouxfalls", "southdakota", "57101");
INSERT INTO tracking_history(orderid, date_of_stop, stop_street, stop_city, stop_state, stop_zipcode) VALUES("1011258132", "2022-09-14", "22ndavenue", "iowacity", "iowa", "52240");

SELECT * FROM tracking_history;

SELECT DISTINCT c.full_name
FROM customers c
INNER JOIN reviews r ON c.username = r.username;


SELECT product_name
FROM products
WHERE EXISTS(SELECT username from reviews WHERE reviews.product_id = products.product_id AND rating >= 4);

SELECT DISTINCT c.zipcode
FROM customers c
JOIN orders o ON c.username = o.username
JOIN order_details odt ON o.orderid = odt.orderid
WHERE odt.product_id = 10014;

SELECT COUNT(orderid)
FROM tracking_history
WHERE stop_zipcode = 22030;

SELECT c.username
FROM customers c
JOIN orders o ON c.username = o.username
JOIN order_details od ON o.orderid = od.orderid
JOIN digital_products dp ON dp.product_id = od.product_id
WHERE dp.product_id is not NULL
GROUP BY c.username
HAVING COUNT(DISTINCT dp.product_id) >=2;

SELECT p.product_id, p.product_name, AVG(r.rating) AS avg_rating
FROM products p
JOIN order_details od ON p.product_id = od.product_id
JOIN orders o ON od.orderid = o.orderid
JOIN reviews r ON p.product_id = r.product_id
WHERE o.order_status = 'cancelled'
GROUP BY p.product_id, p.product_name;




