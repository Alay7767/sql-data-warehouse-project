/*
=======================================================
Create Databse and Schemas
=======================================================
Script Purpose:
	This script creates a new database name 'DataWarehouse' after checking if it already exists.
	If the database exist, it dropped and recreated. Additionally, script sets three schemas within the databse : 'bronze', 'silver', and 'gold'.

WARNING:
	Running this script will drop the entire 'DataWarehouse' databse if already exists.
	All the data in DataWarehouse will be permanently deleted. Proceed with caution and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse' Database if already exist
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO


-- Create Database 'Database Warehouse'

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas 

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
