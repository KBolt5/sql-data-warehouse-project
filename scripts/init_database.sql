/* 
=====================================================
Database and Schema Creation
=====================================================
Purpose:
	- To begin with, we need to create our database with schemas, tables of our requirements. 
	
  - The first and foremost step is to check whether a database of same name exists before.
    - If the database exists already, it is deleted and recreated for our purpose.
    - Once the database is created, we then create the medallion layers (bronze, silver, gold) individually
    
  - The final structure is, Database -> Schema -> Tables
    - Database is a structured collection of data organized into tables with rows and columns
	  - Schema is the structural framework defining how data is organized, stored, and accessed to form tables
    - Tables are the building blocks that store data, and schemas provide th structure and logical rules to maintain 
	  accuracy and consistency.
*/


USE master;
COMMIT;

-- Drop and recreate the 'Datawarehouse' database
	-- MySQL does not support IF EXISTS with the same structure as SQL Server. 

DROP DATABASE IF EXISTS `Datawarehouse`;

-- Create the 'Datawarehouse' database

CREATE DATABASE `Datawarehouse`;


-- Create Medallion Layers (Bronze, Silver, Gold)

CREATE SCHEMA bronze;
COMMIT; #COMMIT commits the current transaction, making its changes permanent.


CREATE SCHEMA silver;
COMMIT;


CREATE SCHEMA gold;
COMMIT;
 
