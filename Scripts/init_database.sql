/*************
Check if the data base exists or not if not created the DataWarehouse data bases and Schemas bronze, silver, gold

************/
IF EXISTS (SELECT name FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    DROP DATABASE DataWarehouse;
END


use master;
Create Database DataWarehouse;
use DataWarehouse;

create schema bronze;
go
create schema silver;
go
create schema gold;
go

