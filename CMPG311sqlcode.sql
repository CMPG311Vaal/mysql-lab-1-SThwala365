Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 15
Server version: 8.0.19 MySQL Community Server - GPL

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql>
mysql>
mysql>
mysql> create database BidvestBank;
Query OK, 1 row affected (0.24 sec)

mysql> use database BidvestBank;
ERROR 1049 (42000): Unknown database 'database'
mysql>
mysql>
mysql>
mysql> use BidvestBank;
Database changed
mysql>
mysql>
mysql> create table BankBranch
    -> (
    -> branch_name varchar(50) not null primary key,
    -> brauch_city varchar(50),
    -> assets double
    -> );
Query OK, 0 rows affected (3.67 sec)

mysql> insert into BankBranch values ('Midrand', 'Johannesburg', 7100000) ,
    -> ('Newtown', 'Johannesburg', 9000000),
    -> ('Mabopane', 'Pretoria' , 400000),
    -> ('Belgravia', 'Kimberly', 3700000),
    -> ('Sunnyside ', 'Pretoria', 1700000),
    -> ('Amanzimtoti', 'Durban', 300000),
    -> ('Universitas', 'Bloemfontein', 210000),
    -> ('Mamelodi', 'Pretoria', 8000000);
Query OK, 8 rows affected (0.84 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql> create table Customer
    -> (
    -> customer_name varchar(30) not null primary key,
    -> customer_street varchar(50) not null,
    -> customer_city varchar(30) not null
    -> );
Query OK, 0 rows affected (1.81 sec)

mysql> insert into Customer values ('Modise', 'Spring', 'George'),
    -> ('Brooks', 'Senator ', 'Johannesburg'),
    -> ('Jooste ','North ', 'Kimberty'),
    -> ('Lombard','Sand Hiu','Netspruit'),
    -> ('Mokwena', 'Walnut', 'Port-Elizabeth'),
    -> ('Johnson', 'Mmabatho','Mafikeng'),
    -> ('Johnson', 'Alma ', 'Bloemfontein'),
    -> ('Zwane', 'Main','Mafikeng' ),
    -> ('Lindsay', 'Park','George'),
    -> ('Smith','North',  'Kimberly'),
    -> ('Dlamini','Putnam', 'Port-Elizabeth'),
    -> ('Williams', 'Nassau','Giyane');
ERROR 1062 (23000): Duplicate entry 'Johnson' for key 'customer.PRIMARY'
mysql> insert into Customer values ('Modise', 'Spring', 'George'),
    -> ('Brooks', 'Senator ', 'Johannesburg'),
    -> ('Jooste ','North ', 'Kimberty'),
    -> ('Lombard','Sand Hiu','Netspruit'),
    -> ('Mokwena', 'Walnut', 'Port-Elizabeth'),
    -> ('Johnson', 'Mmabatho','Mafikeng'),
    -> ('Johnson', 'Alma ', 'Bloemfontein'),
    -> ('Zwane', 'Main','Mafikeng' ),
    -> ('Lindsay', 'Park','George'),
    -> ('Smith','North',  'Kimberly'),
    -> ('Dlamini','Putnam', 'Port-Elizabeth'),
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 11
mysql>
mysql>
mysql>
mysql> insert into Customer values ('Modise', 'Spring', 'George'),
    -> ('Brooks', 'Senator ', 'Johannesburg'),
    -> ('Jooste ','North ', 'Kimberty'),
    -> ('Lombard','Sand Hiu','Netspruit'),
    -> ('Mokwena', 'Walnut', 'Port-Elizabeth'),
    -> ('Johnson', 'Mmabatho','Mafikeng'),
    -> ('Jahnson', 'Alma ', 'Bloemfontein'),
    -> ('Zwane', 'Main','Mafikeng' ),
    -> ('Lindsay', 'Park','George'),
    -> ('Smith','North',  'Kimberly'),
    -> ('Dlamini','Putnam', 'Port-Elizabeth'),
    -> ('Williams', 'Nassau','Giyane');
Query OK, 12 rows affected (0.15 sec)
Records: 12  Duplicates: 0  Warnings: 0

mysql>
mysql>
mysql> create customerAccount
    -> (
    -> account_number char(10) not null primary key,
    -> branch_name varchar(20) not null,
    -> balance double
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'customerAccount
(
account_number char(10) not null primary key,
branch_name varc' at line 1
mysql> create table customerAccount (
    ->     -> account_number char(10) not null primary key,
    ->     -> branch_name varchar(20) not null,
    ->     -> balance double
    ->     -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> account_number char(10) not null primary key,
    -> branch_name varchar(20) ' at line 2
mysql> create table customerAccount
    -> (
    -> account_number char(10) not null primary key,
    -> branch_name varchar(20) not null,
    -> balance double
    -> );
Query OK, 0 rows affected (1.80 sec)

mysql>
mysql>
mysql> insert into customerAccount valuse ('A-5324', 'Newton', 500),
    -> ('A-5624', 'Sunnyside ', 400),
    -> ('A-7794', 'Midrand', 900),
    -> ('A-4467', 'Mabopane', 700),
    -> ('A-3548', 'Midrand', 750),
    -> ('A-3453', 'Universitas', 700),
    -> ('A-2542', 'Mamelodi', 350);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'valuse ('A-5324', 'Newton', 500),
('A-5624', 'Sunnyside ', 400),
('A-7794', 'Mid' at line 1
mysql> insert into customerAccount values ('A-5324', 'Newton', 500),
    -> ('A-5624', 'Sunnyside ', 400),
    -> ('A-7794', 'Midrand', 900),
    -> ('A-4467', 'Mabopane', 700),
    -> ('A-3548', 'Midrand', 750),
    -> ('A-3453', 'Universitas', 700),
    -> ('A-2542', 'Mamelodi', 350);
Query OK, 7 rows affected (0.19 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql>
mysql>
mysql> create table Loan
    -> (loan_number char(10) not null primary key,
    -> branch_name varchar(50) not null,
    -> amount double
    -> );
Query OK, 0 rows affected (1.96 sec)

mysql> insert into Loan values ('L-11', 'Mamelodi ', 900),
    -> ('L-14', 'Newtown', 1500),
    -> ('L-15', 'Sunnyside ', 1500),
    -> ('L-16', 'Sunnyside', 1300),
    -> ('L-17', 'Newtown' ,1000),
    -> ('L-23', 'Universitas ', 2000),
    -> ('L-93', 'Mabopane ', 500);
Query OK, 7 rows affected (0.19 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql>
mysql>
mysql> create table Depositor(
    -> customer_Name varchar(30) not null primary key,
    -> account_number char(10)
    -> );
Query OK, 0 rows affected (1.48 sec)

mysql> insert into Depositor values ('Johnson', 'A-5624'),
    -> ('Jahnson', 'A-5624'),
    -> ('Johnsen ', 'A-7794'),
    -> ('Zwane', 'A-3546' ),
    -> ('Lindsay', 'A-3453' ),
    -> ('Smith', 'A-4467'),
    -> ('Dlamini', 'A-2542');
Query OK, 7 rows affected (0.32 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql>
mysql>
mysql> create table Borrower(
    -> customer_name varchar(30) not null primary,
    -> loan_number char(10) not null
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',
loan_number char(10) not null
)' at line 2
mysql> customer_name varchar(30) not null primary key,
    -> loan_number char(10) not null
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'customer_name varchar(30) not null primary key,
loan_number char(10) not null
)' at line 1
mysql> create table Borrower(
    -> customer_name varchar(30) not null primary key,
    -> loan_number char(10) not null
    -> );
Query OK, 0 rows affected (2.42 sec)

mysql>
mysql>
mysql> insert into Borrower values ('Modise', 'L-16'),
    -> ('Jooste', 'L-93'),
    -> ('Johnson', 'L-15'),
    -> ('Jackson', 'L-14'),
    -> ('Zwane', 'L-17'),
    -> ( 'Smith', 'L-11'),
    -> ('Smath', 'L-23 '),
    -> ('Williams', 'L-17');
Query OK, 8 rows affected (0.54 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql> create table Employee(
    -> employee_name varchar(30) not null primary key,
    -> branch_name varchar(30) not null,
    -> salry double
    -> );
Query OK, 0 rows affected (2.60 sec)

mysql>
mysql>
mysql>
mysql> insert into Employees(
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> insert into Employees values ('Modise', 'Sunnyside', 1500),
    -> ('Brown ', 'Sunnyside', 1300),
    -> ('Gopal', 'Sunnyside ', 5300),
    -> ('Johnson', 'Newtown', 1500),
    -> ('Loreena', 'Newtown', 1300),
    -> ('Peterson ', 'Newtown', 2500),
    -> ('Rao', 'Austin', 1500),
    -> ('Sato', 'Austin', 1600);
ERROR 1146 (42S02): Table 'bidvestbank.employees' doesn't exist
mysql>
mysql>
mysql>
mysql> insert into Employee values ('Modise', 'Sunnyside', 1500),
    -> ('Brown ', 'Sunnyside', 1300),
    -> ('Gopal', 'Sunnyside ', 5300),
    -> ('Johnson', 'Newtown', 1500),
    -> ('Loreena', 'Newtown', 1300),
    -> ('Peterson ', 'Newtown', 2500),
    -> ('Rao', 'Austin', 1500),
    -> ('Sato', 'Austin', 1600);
Query OK, 8 rows affected (0.81 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql>
mysql>
mysql>
mysql>