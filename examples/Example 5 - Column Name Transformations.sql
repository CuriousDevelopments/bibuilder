
-- Example 5 - Column Name Transformations
-- ETL BUILD SCRIPT FOR TABLE [Models].[ExampleColumnNameConversion]
------------------------------------------------------------------------------------

DECLARE @ModelSchemaName nvarchar(255)
DECLARE @ModelTableName nvarchar(255)
DECLARE @StagingSchemaName nvarchar(255)
DECLARE @StagingTableName nvarchar(255)
DECLARE @StagingFilegroupName nvarchar(255)
DECLARE @SourceSystem_Id int
DECLARE @SlowlyChangingDimensionColumnList nvarchar(2048)
DECLARE @DimSchemaName nvarchar(255)
DECLARE @DimTableName nvarchar(255)
DECLARE @DimFilegroupName nvarchar(255)
DECLARE @SkipDataAnalysis bit
DECLARE @PauseForManualEditsToMetadata bit
DECLARE @UseCurrentMetadataForBuild bit 
DECLARE @ApplyAutoAudit bit

-- Model Table Details -----
    SET @ModelSchemaName = 'Models' 
    SET @ModelTableName = 'ExampleColumnNameConversion'

-- Staging Table Details ------------
    SET @StagingFilegroupName = 'Example_Staging'
    SET @StagingSchemaName = 'Example_Staging' 
    SET @StagingTableName = 'ExampleColumnNameConversion'
    SET @SlowlyChangingDimensionColumnList = NULL

-- Dimension Table Details ------------
    SET @DimFilegroupName  = 'Examples'
    SET @DimSchemaName = 'Examples'
    SET @DimTableName = 'DimExampleColumnNameConversion'
    SET @SourceSystem_Id  = 1 

-- Control Flags for BI Builder Main()    
    SET @SkipDataAnalysis = 0
    SET @ApplyAutoAudit = 0 

    ---- 1) Control Flags for automated end-to-end build process
    SET @PauseForManualEditsToMetadata = 0   
    SET @UseCurrentMetadataForBuild = 0

  
EXECUTE[bib].[Main] 
   @ModelSchemaName
  ,@ModelTableName
  ,@StagingSchemaName
  ,@StagingTableName
  ,@StagingFilegroupName
  ,@SourceSystem_Id
  ,@SlowlyChangingDimensionColumnList
  ,@DimSchemaName
  ,@DimTableName
  ,@DimFilegroupName
  ,@SkipDataAnalysis
  ,@PauseForManualEditsToMetadata
  ,@UseCurrentMetadataForBuild 
  ,@ApplyAutoAudit



    SELECT
    StagingColumnName ,
    DimensionColumnName
		 FROM bib.ColumnDefinitions
		 WHERE StagingTableSchema = 'Example_Staging'
		   AND StagingTableName = 'ExampleColumnNameConversion'


GO
