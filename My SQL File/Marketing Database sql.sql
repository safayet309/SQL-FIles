 ----------------------------------
SELECT Customer_ID, Name, Phone 
FROM customer_table
WHERE City = 'Dhaka';
----------------------------------

----------------------------------
SELECT * 
FROM customer_table
WHERE City = 'Dhaka' AND Credits > 5000;
---------------------------------------

----------------------------------------
SELECT * 
FROM customer_table
WHERE Credits > 5000 AND Credits < 10000;
----------------------------------------
 
SELECT * FROM Customer_Table;
SELECT * FROM product_table ;
SELECT * FROM order_table;



CREATE DATABASE marketing_database;

USE marketing_database;

CREATE TABLE Customer_Table (
    Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Address VARCHAR(255),
    City VARCHAR(100),
    Credits DECIMAL(10, 2),
    Phone VARCHAR(20)
);

CREATE TABLE Product_Table (
    Product_ID INT AUTO_INCREMENT PRIMARY KEY,
    Product_Code VARCHAR(50) NOT NULL,
    Company VARCHAR(100),
    Rate DECIMAL(10, 2)
);

CREATE TABLE Order_Table (
    Order_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_ID INT,
    Product_ID INT,
    Quantity INT,
    Paid DECIMAL(10, 2),
    FOREIGN KEY (Customer_ID) REFERENCES Customer_Table(Customer_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product_Table(Product_ID)
);
 

INSERT INTO Customer_table (Customer_Id, Name, Address, City, Credits, Phone) VALUES
(1, 'Rakib Hossain', '12/3 Gulshan-2', 'Dhaka', 50000.00, '1711234567'),
(2, 'Nusrat Jahan', 'House #45, Halishahar', 'Chattogram', 8800.00, '1819876543'),
(3, 'Mehedi Hasan', '7/A Rajshahi College Rd', 'Rajshahi', 40000.00, '1918712233'),
(4, 'Sumaiya Akter', '21 Shibgonj Bazar', 'Sylhet', 700.00, '1612332211'),
(5, 'Rifat Rahman', '5 North Churamonkathi', 'Jashore', 54000.00, '1717998877'),
(6, 'Jannatul Ferdous', '3/4 Kushtia Stadium Park', 'Kushtia', 40000.00, '1818445566'),
(7, 'Jannatul Ferdous', '3/4 Kushtia Stadium Park', 'Kushtia', 40000.00, '1818445566'),
(8, 'Tamim Iqbal', '8 Probartak Mor', 'Chattogram', 40000.00, '1918343455'),
(9, 'Mahiya Mahi', '3/12 Rajarbagh', 'Dhaka', 4122.00, '1611445566'),
(10, 'Nasir Uddin', '20 East Goalpara', 'Mymensingh', 4000.00, '1712312321'),
(11, 'Arifa Sultana', '18 Zindabazar', 'Sylhet', 7000.00, '1518789654'),
(12, 'Shakib Rahman', '60 Agrabad', 'Chattogram', 478.00, '1701112222'),
(13, 'Ruma Khatun', '9 Kalibari Road', 'Barisal', 9000.00, '1814987654'),
(14, 'Sazzad Hossain', '15 Mission Road', 'Dinajpur', 54111.00, '1912345876'),
(15, 'Farzana Akter', '55 College Gate', 'Dhaka', 4000.00, '1613456789'),
(16, 'Tanvir Alam', '63 Kewatkhali', 'Mymensingh', 4444.00, '1719657483'),
(17, 'Sharmin Sultana', '7 College Rd', 'Khulna', 445.00, '1611998765'),
(18, 'Ashfaqul Rahman', '10 Rupsha Ghat', 'Khulna', 4557.00, '1911888333'),
(19, 'Nodi Islam', '90 Sagardi', 'Barisal', 4588.00, '1811999999'),
(20, 'Jewel Rana', '15/2 Raninagar', 'Naogaon', 5488.00, '1613454234'),
(21, 'Tanjila Haque', '8 Shibchar', 'Madaripur', 445.00, '1811998877'),
(22, 'Sajjad Hossain', '45 Dhanmondi', 'Dhaka', 4500.00, '1713112211'),
(23, 'Lima Akter', '22 Shahjahan Rd', 'Comilla', 5022.00, '1812344567'),
(24, 'Masud Rana', '11 Moylapota', 'Khulna', 4500.00, '1910987654'),
(25, 'Purnima Sultana', '30 Kazla', 'Rajshahi', 8000.00, '1715566677'),
(26, 'Mahfuz Alam', '5 Tilagor', 'Sylhet', 4444.00, '1611997777'),
(27, 'Rehnuma Tabassum', '10 West Agargaon', 'Dhaka', 10000.00, '1615667788'),
(28, 'Naimur Rahman', '19 Khalishpur', 'Khulna', 48000.00, '1714779900'),
(29, 'Sadia Hossain', '2 Pabla', 'Khulna', 4555.00, '1919555444'),
(30, 'Rokonuzzaman', '40 Mohadevpur', 'Naogaon', 5000.00, '1812043123'),
(31, 'Sumi Akter', '7 Gournadi', 'Barisal', 5788.00, '1812098712'),
(32, 'Habibul Bashar', '4 North Pathantula', 'Sylhet', 7811.00, '1911775544'),
(33, 'Rifat Shikder', '2 Karwan Bazar', 'Dhaka', 7888.00, '1618633444'),
(34, 'Joya Ahsan', '12 Islampur', 'Dhaka', 4555.00, '1618766543'),
(35, 'Maria Rahman', '28 Dada Link Rd', 'Dhaka', 4500.00, '1712111221'),
(36, 'Imran Kabir', '8 Uttara Sector 10', 'Dhaka', 20000.00, '1811233111'),
(37, 'Labiba Chowdhury', '3 Banesse Block D', 'Dhaka', 5000.00, '1611222388'),
(38, 'Anik Talukder', '3 CDA Avenue', 'Chattogram', 5400.00, '1617222555'),
(39, 'Anamika Sarker', '10 Taltola', 'Barisal', 7000.00, '1811998877'),
(40, 'Miraz Ahmed', '22 Agrabad', 'Chattogram', 720.00, '1715789456'),
(41, 'Tania Akhter', '5 Haji Bari Rd', 'Jashore', 3900.00, '1615678977'),
(42, 'Hasan Mahmud', '3 Court Station', 'Rajshahi', 5200.00, '1812334567'),
(43, 'Rabeya Sultana', '27 Uttor Gate', 'Mymensingh', 4500.00, '1911234566'),
(44, 'Sajeda Khatun', '18 Begum Rokeya Ave', 'Dhaka', 9999.00, '1612343456'),
(45, 'Asif Imtiaz', '11 GPO Lane', 'Sylhet', 700.00, '1811223344'),
(46, 'Zakia Ferdous', '32 Medical Rd', 'Comilla', 4888.00, '1613445566'),
(47, 'Murad Hossain', '4 College Para', 'Naogaon', 6120.00, '1712345678'),
(48, 'Sumiya Rahman', '9 West Kazla', 'Rajshahi', 4355.00, '1819098765'),
(49, 'Nayeem Islam', '20 Boalia', 'Rajshahi', 6999.00, '1715678901'),
(50, 'Jannat Jahan', '14 Uposhahar', 'Sylhet', 7500.00, '1917654321');

ALTER TABLE product_table
ADD COLUMN Product_name VARCHAR(100) AFTER product_code;
 
INSERT INTO Product_Table (Product_id, Product_Code, Product_Name, Company, Rate)
VALUES
(1, 'ME033', 'Seclo 20 mg', 'Square Pharma', 5.00),
(2, 'ME034', 'Losectil 20 mg', 'Eskayef Pharma', 4.50),
(3, 'MEFUR', 'Amclod 5 mg', 'Incepta Pharma', 7.00),
(4, 'ME3DG', 'Monas 10 mg', 'Renata Ltd', 9.50),
(5, 'ME822', 'Nexum 20 mg', 'Square Pharma', 10.00),
(6, 'ME8RT', 'Xpa 500 mg', 'Aristopharma', 1.20),
(7, 'ME9UY', 'Oraxid 500 mg', 'ACI Limited', 15.00),
(8, 'ME98U', 'Cef-3 200 mg', 'Square Pharma', 25.00),
(9, 'ME0IU', 'Neotack 500 mg', 'Incepta Pharma', 12.00),
(10, 'NEOCOW', 'Clopid 75 mg', 'Incepta Pharma', 6.00),
(11, 'MJ678', 'Myonil 50 mg', 'Healthcare Pharma', 6.00),
(12, '786YJ', 'Lomeflox 400 mg', 'Beximco Pharma', 10.00),
(13, '878Y', 'Lomeflox 400 mg', 'Beximco Pharma', 10.00),
(14, '9898', 'Azicine 500 mg', 'Eskayef Pharma', 30.00),
(15, '097Y', 'Calbo-D 500 mg/200 IU', 'Square Pharma', 6.00),
(16, 'UYU76', 'Domperon 10 mg', 'Incepta Pharma', 1.80),
(17, '987Y5', 'Bactrocin 500 mg', 'Acme Laboratories', 14.00),
(18, '7854I', 'Dicloran 50 mg', 'Beximco Pharma', 3.00),
(19, '879', 'Ambrox 30 mg', 'Square Pharma', 2.50),
(20, '876YHU', 'Fexo 120 mg', 'Aristopharma', 9.00),
(21, '896', 'Meclizin 25 mg', 'Acme Laboratories', 1.50),
(22, '876YGT', 'Ketorol 10 mg', 'Renata Ltd', 3.50),
(23, '876H', 'Filwel Gold', 'Beximco Pharma', 8.00),
(24, '876YH', 'Histacin 10 mg', 'Eskayef Pharma', 5.00),
(25, 'IIU89', 'Pantoloc 20 mg', 'Aristopharma', 17.50),
(26, 'UIU78', 'Ciprocin 500 mg', 'Square Pharma', 9.00),
(27, '34T5', 'Emet 20 mg', 'Beximco Pharma', 5.00),
(28, '45TR6', 'Tufnil 10 mg', 'Renata Ltd', 9.00),
(29, '67TY', 'Azro 250 mg', 'Renata Ltd', 16.00),
(30, '8474H', 'Valsar 80 mg', 'Square Pharma', 10.00),
(31, '84IHD', 'Loratidin 10 mg', 'ACI Limited', 1.50),
(32, '8448F', 'Xithrin 500 mg', 'Eskayef Pharma', 35.00),
(33, '8U4RJ', 'Simva 20 mg', 'Incepta Pharma', 6.00),
(34, 'I4OO', 'Prelica 75 mg', 'Aristopharma', 18.00),
(35, '8494PF', 'Arotirl 0.5 mg', 'Square Pharma', 20.00),
(36, 'U4ID', 'Rofex 200 mg', 'Beximco Pharma', 8.00),
(37, 'I49E8', 'Omidon 10 mg', 'Acme Laboratories', 2.00),
(38, 'U4OD44', 'Trifulco 150 mg', 'Incepta Pharma', 9.00),
(39, 'U4I4R', 'Zimax 500 mg', 'Square Pharma', 12.00),
(40, 'I4QR', 'Dilmer 5.0 mg', 'Eskayef Pharma', 7.00),
(41, 'I4OR', 'Furocin 40 mg', 'Beximco Pharma', 3.00),
(42, 'I4O4OE', 'Atorva 10 mg', 'Incepta Pharma', 10.00),
(43, 'I5ORR', 'Rabon 20 mg', 'Acme Laboratories', 4.00),
(44, 'O5OORF', 'Doxin 100 mg', 'Square Pharma', 2.50),
(45, 'IORO', 'Glyset 500 mg', 'Renata Ltd', 5.00),
(46, 'I59R', 'Zetix 10 mg', 'Eskayef Pharma', 12.00),
(47, '999RJ', 'Combipres', 'Incepta Pharma', 10.00),
(48, '959R9', 'Emetil 5 mg', 'Beximco Pharma', 1.20),
(49, 'I5I5KF', 'Esoral 20 mg', 'Square Pharma', 6.50),
(50, 'JFKI55', 'Napa 500 mg', 'Beximco Pharma', 1.00);

select * from product_table;

alter table order_table
add column Order_Date date After Order_id; 


alter table order_table
modify column Order_Date date After Order_id; 

alter table order_table
modify column Paid boolean After Order_id; 

alter table order_table
modify column Paid boolean After Quantity; 

select * from order_table;

alter table order_table
modify Order_ID varchar(6);

INSERT INTO order_table (Order_ID, order_date , Customer_ID, Product_ID, Quantity, Paid)
VALUES
('OR001', '2025-07-04', 16, 15, 1, FALSE),
('OR002', '2025-07-04', 3, 3, 3, TRUE),
('OR003', '2025-07-04', 5, 3, 9, TRUE),
('OR004', '2025-07-04', 34, 19, 4, TRUE),
('OR005', '2025-07-04', 5, 4, 6, TRUE);


select * from order_table;


SELECT Customer_ID FROM customer_table;
SELECT Product_ID FROM product_table;


drop table order_table;

CREATE TABLE order_table (
    Order_ID VARCHAR(10) PRIMARY KEY,
    Order_Date DATE,
    Customer_ID INT,
    Product_ID INT,
    Quantity INT,
    Paid BOOLEAN,
    FOREIGN KEY (Customer_ID) REFERENCES customer_table(Customer_ID),
    FOREIGN KEY (Product_ID) REFERENCES product_table(Product_ID)
);

drop table order_table;

CREATE TABLE order_table (
    Order_ID VARCHAR(10) PRIMARY KEY,
    Order_Date DATE,
    Customer_ID INT,
    Product_ID INT,
    Quantity INT,
    Paid BOOLEAN
);
INSERT INTO order_table (Order_ID, Order_Date, Customer_ID, Product_ID, Quantity, Paid) VALUES
('OR001', '2025-07-01', 5, 3, 2, TRUE),
('OR002', '2025-07-01', 12, 14, 4, FALSE),
('OR003', '2025-07-02', 9, 8, 6, TRUE),
('OR004', '2025-07-02', 23, 21, 3, TRUE),
('OR005', '2025-07-03', 7, 10, 5, TRUE),
('OR006', '2025-07-03', 14, 11, 9, TRUE),
('OR007', '2025-07-03', 6, 3, 1, FALSE),
('OR008', '2025-07-04', 19, 17, 7, TRUE),
('OR009', '2025-07-04', 2, 5, 3, FALSE),
('OR010', '2025-07-05', 8, 4, 8, TRUE),
('OR011', '2025-07-05', 16, 13, 4, TRUE),
('OR012', '2025-07-06', 11, 1, 2, TRUE),
('OR013', '2025-07-06', 27, 23, 6, FALSE),
('OR014', '2025-07-06', 3, 7, 1, TRUE),
('OR015', '2025-07-07', 29, 9, 2, TRUE),
('OR016', '2025-07-07', 25, 12, 5, TRUE),
('OR017', '2025-07-08', 10, 2, 9, TRUE),
('OR018', '2025-07-08', 18, 6, 4, FALSE),
('OR019', '2025-07-08', 4, 14, 7, TRUE),
('OR020', '2025-07-09', 21, 25, 3, TRUE),
('OR021', '2025-07-09', 30, 20, 5, FALSE),
('OR022', '2025-07-10', 26, 18, 6, TRUE),
('OR023', '2025-07-10', 17, 22, 8, TRUE),
('OR024', '2025-07-11', 1, 15, 2, FALSE),
('OR025', '2025-07-11', 33, 19, 1, TRUE),
('OR026', '2025-07-12', 13, 16, 3, TRUE),
('OR027', '2025-07-12', 28, 24, 9, TRUE),
('OR028', '2025-07-13', 22, 5, 4, FALSE),
('OR029', '2025-07-13', 31, 3, 7, TRUE),
('OR030', '2025-07-14', 24, 8, 6, TRUE),
('OR031', '2025-07-14', 15, 4, 3, TRUE),
('OR032', '2025-07-15', 20, 11, 5, FALSE),
('OR033', '2025-07-15', 32, 9, 4, TRUE),
('OR034', '2025-07-16', 6, 7, 2, TRUE),
('OR035', '2025-07-16', 9, 18, 6, FALSE),
('OR036', '2025-07-17', 12, 13, 7, TRUE),
('OR037', '2025-07-17', 35, 23, 1, TRUE),
('OR038', '2025-07-18', 11, 6, 2, TRUE),
('OR039', '2025-07-18', 2, 14, 8, FALSE),
('OR040', '2025-07-19', 19, 1, 3, TRUE),
('OR041', '2025-07-19', 7, 5, 6, TRUE),
('OR042', '2025-07-20', 18, 12, 4, FALSE),
('OR043', '2025-07-20', 15, 25, 5, TRUE),
('OR044', '2025-07-21', 13, 3, 2, TRUE),
('OR045', '2025-07-21', 26, 2, 7, FALSE),
('OR046', '2025-07-22', 8, 10, 1, TRUE),
('OR047', '2025-07-22', 29, 16, 5, TRUE),
('OR048', '2025-07-23', 17, 21, 6, FALSE),
('OR049', '2025-07-23', 14, 4, 3, TRUE),
('OR050', '2025-07-24', 30, 7, 9, TRUE);
