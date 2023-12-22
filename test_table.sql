create database test; 

use test;

create table student_info(
 number char(4) not null primary key,
 name char(8) not null,
 sex  char(2),
 birth date,
 address varchar(50)
 );
 
INSERT INTO student_info (number, name, sex, birth, address) VALUES
('0001', '张平青', '男', '2000-10-01', '衡阳市东凤路77号'),
('0002', '刘东阳', '男', '1999-12-09', '东阳市八一北路33号'),
('0003', '马晓夏', '女', '1995-05-12', '长岭县五一路763号'),
('0004', '钱忠理', '男', '1994-09-23', '滨海市洞庭大道279号'),
('0005', '孙海洋', '男', '1995-04-03', '长岛县解放路27号'),
('0006', '郭小斌', '男', '1997-11-10', '南山市红旗路113号'),
('0007', '肖月玲', '女', '1996-12-07', '东方市南京路11号'),
('0008', '张玲珑', '女', '1994-09-23', '滨江市新建97号');


 
 create table curriculum (
	classnumber char(4) not null primary key,
    classname varchar(50),
    score int
 );
 
 INSERT INTO curriculum (classnumber, classname, score) VALUES
	('0001','计算机应用基础',2),
	('0002','C语言程序设计',2),
	('0003','数据库原理及应用',2),
	('0004','英语',4),
	('0005','高等数学',4);


 
 
 
 
CREATE TABLE grade (
    number CHAR(4) NOT NULL,
    classnumber CHAR(5) NOT NULL,
    score INT,
    PRIMARY KEY (number, classnumber)
);

 
 INSERT INTO grade (number, classnumber, score) VALUES
('0001', '0001', 80),
('0001', '0002', 91),
('0001', '0003', 88),
('0001', '0004', 85),
('0001', '0005', 77),
('0002', '0001', 73),
('0002', '0002', 68),
('0002', '0003', 80),
('0002', '0004', 79),
('0002', '0005', 73),
('0003', '0001', 84),
('0003', '0002', 92),
('0003', '0003', 81),
('0003', '0004', 82),
('0003', '0005', 75);

 
 