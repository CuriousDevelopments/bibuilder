# bibuilder

## BI Builder for SQL Server

BI Builder is a pure T-SQL application for MSSQL data warehouse developers: It generates staging and dimension tables as well as ETL stored procedures.

Designed for ease of use and customisation, BIB has one stored procedure that you run to build your database layers and ETL procedures. 

BI Builder itself is composed of a series of modular stored procedures and scalar functions that you can modify to suit your style of building data warehouses.

BI Builder comes with examples and a developer guide and has been tested on MSSQL versions 2008R2, 2012 and 2014 CTP.
BI Builder Features

## BIB generates objects and SQL that accounts for many considerations you have as a data warehouse developer:

* BIB produces both Type 1 and Type 2 Slowly Changing Dimensions (SCD) – all you need to do to create a Type 2 SCD is supply to the stored procedure [bib].[Main] a list of the fields that will trigger creation of a new active dimension record.

* BIB stores mappings between columns in your staging table and related dimension tables as well as metadata about the columns and your design decisions about them.

* BIB builds an ETL system between staging and dimensions that can properly handle records that are either new, updated, stale or deleted.

* The generated ETL SQL loads data from staging to dimensions in batches of customisable size, letting you tune your loads to handle massive updates with maximum efficiency.

* BIB handles Schemas and Filegroups with ease, allowing you to optimise how you structure the physical layout of your data warehouse.

* BIB automatically detects columns containing information about when the record was last modified allowing the generated ETL stored procedures to protect your data from stale overwrites.

* BIB automatically detects columns that flag whether or not a record has been soft-deleted, generating an ETL that handles deletion of records from dimensions if that suits your requirements.

* BIB generates dimensions and ETL stored procedures for really large tables with as much ease as small table – there is an example where the “Model Table” has 300 fields.

* BIB handles composite primary keys automatically.

* BIB generates ETL stored procedures that stores the lineage of the data and logs all data movements (Inserts, Updates and Deletions) as well as any error encountered during data loads.

* BIB integrates with AutoAudit and applying auditing to your generated dimensions is as easy as setting a parameter when you run the ETL build process.

* BIB applies unique indexes based on business keys (primary keys in the source data) that protect your dimension table from the import of duplicate records – should records be added by means other than the generated ETL stored procedures.

* BIB handles surrogate keys in a standardised manner and adds standardised columns to both staging and dimension tables that let you determine the state of data and loads as well as lock data from ever being updated during an ETL cycle.

* BIB handles the generation and maintenance of default records – a record with a surrogate dimension key of “-1” that is used when a fact table has a NULL value instead of a key into the dimension.

* BIB adapts any check constraints you supply with your “Model Table” through to the Dimension, allowing another level of data quality assurance.

* BIB can automatically apply type conversions, such as when date values in your source system are expressed as integers and you want to convert them to MSSQL DateTime. There is an example of this described in the documentation.

* BIB can automatically exclude staging table columns from featuring in the dimension and ETL and you can easily add or remove rules for exclusion.

* BIB can automatically run data analysis across the sample data you provide in the “Model Table” – detecting, for example, if the data type is not optimal for the values contained within the column. It will also tell you what percentage of the values are NULL and how many distinct values are held within each column. That last feature can be useful when considering data hierarchies.

* BIB can automatically make column names more readable from a business perspective when you have loaded your dimensions in to Analysis Services. 

* BIB produces useful scripts you can use to test the generated objects and stored procedures.

* BIB lives solely in your development database – there are no dependencies on the BIB schema for the objects you will deploy to your testing and production data warehouses.

* BIB is easily modified to produce tables and SQL that better suit your development goals. 
