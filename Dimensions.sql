------------------------------Ctreating Destination Database and Tables-----------------------------
----1)Create Database
create database DW_AdventureWorks_2014
----2)Create Dimensions
-------Product Dimension-----------------
create table Product_Dim(
Product_Key int not null identity(1,1), --surrogate_Key
Product_ID int not null,
Product_Name varchar(50),
Product_Description varchar(100),
Product_Category varchar(100),
Product_SubCategory varchar(100),
Color varchar(15),
model_name varchar(15),
Reorder_Point smallint,
Standard_Cost money,
Start_Date datetime Default(getdate()),
End_Date datetime,
Is_Current tinyint not null default(1),
constraint PK_Product_Dim primary key(Product_Key)
)
-------Customer Dimension-----------------
create table Customer_Dim(
Customer_Key int not null identity(1,1), --surrogate_Key
Customer_ID int not null,
Customer_Name varchar(150),
Address1 varchar(100),
address2 varchar(100),
Start_Date datetime Default(getdate()),
End_Date datetime,
Is_Current tinyint not null default(1),
constraint PK_Customer_Dim primary key(Customer_Key)
)
-------territory Dimension-----------------
create table Territory_Dim(
Territory_Key int not null identity(1,1), --surrogate_Key
Territory_ID int not null,
Territory_Name varchar(50),
Territory_Country varchar(400),
Territory_Group varchar(50),
Start_Date datetime Default(getdate()),
End_Date datetime,
Is_Current tinyint not null default(1),
constraint PK_Territory_Key_Dim primary key(Territory_Key)
)
-------Date Dimension-----------------
create table Date_Dim(
Date_Key int not null,
Full_Date date not null,
Calendar_Year int not null,
Calendar_Quarter int not null,
Calendar_Month_Number int not null,
Calendar_Month_Name varchar(15) not null,
constraint PK_Date_Key_Dim primary key(Date_Key)
)

