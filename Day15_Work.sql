# Create a table named Projects with attributes ProjectID as the primary key and ProjectName.
SHOW databases;
create database DDL;
use DDL;
create table Projects ( ProjectID int primary key, ProjectName VARCHAR(100));
select * from Projects;
alter table Projects add EndDate date;
alter table Projects rename column EndDate TO ProjectEndDate;
drop table Projects;
create table Departments ( DepartmentID int primary key, DepartmentName VARCHAR(50));
select * from Departments;
create table Employees ( EmployeeID int primary key, FirstName VARCHAR(50), LastName VARCHAR(50), DepartmentID int, FOREIGN Key (DepartmentID) references Departments(DepartmentID));
select * from Employees;
create table Salaries ( SalaryID int primary key, EmployeeID int, SalaryAmount decimal(10,2), FOREIGN Key (EmployeeID) references Employees(EmployeeID));
select * from Salaries;
create table Addresses ( AddressID int primary key, EmployeeID int, Street VARCHAR(100), City varchar(50), foreign key (EmployeeID) references Employees(EmployeeID));
select * from Addresses;
create table Students ( StudentID int primary key unique, StudentName VARCHAR(50));
select * from Students;
create table Customers ( CustomerID int primary key not null, Email VARCHAR(100));
select * from Customers;
insert into Customers values(1,'prabhu');
insert into Customers values(1,'prabhu');