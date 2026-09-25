CREATE DATABASE ShopDB; 
USE ShopDB; 

-- Create a table to store countries 
CREATE TABLE Countries (
    ID INT,
    Name VARCHAR(50),
    PRIMARY KEY (ID)
) ENGINE=InnoDB;

create table GeoIPCache (
    ID int,
    IPRange varchar(50),
    CountryID int
) ENGINE = MEMORY;

create table ProductDescription  (
     ID int,
     Description varchar(100),
     ProductID int,
     CountryID int
) ENGINE = MyISAM;

create table Logs (
    id int,
    Timestamp TIMESTAMP,
    Message varchar(100)
) ENGINE = BLACKHOLE;

CREATE TABLE ProductReporting (
    Date DATE,
    ProductName VARCHAR(50),
    Orders INT
) ENGINE = CSV;