-- Example 11 - Pausing an ETL Build to edit metadata 
-- ETL BUILD SCRIPT FOR TABLE [Models].[ExampleOfPausingETLBuilds]
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
    SET @ModelTableName = 'ExampleOfPausingETLBuilds'

-- Staging Table Details ------------
    SET @StagingFilegroupName = 'Example_Staging'
    SET @StagingSchemaName = 'Example_Staging' 
    SET @StagingTableName = 'ExampleOfPausingETLBuilds'
    SET @SlowlyChangingDimensionColumnList = NULL

-- Dimension Table Details ------------
    SET @DimFilegroupName  = 'Examples'
    SET @DimSchemaName = 'Examples'
    SET @DimTableName = 'DimExampleOfPausingETLBuilds'
    SET @SourceSystem_Id  = 1 

-- Control Flags for BI Builder Main()    
    SET @SkipDataAnalysis = 0
    SET @ApplyAutoAudit = 0 

-- ********** In the second pass, comment out from here ...

    ---- 2) Control Flags to pause build process in order to manually edit the metadata from a script that is generated in the build print output 
    SET @PauseForManualEditsToMetadata = 1   
    SET @UseCurrentMetadataForBuild = 0

-- Gather the metadata
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

  -- ********** to here

  ---- ********** In the first pass, comment out from here ...
  ---- Now apply an ad-hoc change to the metadata

  --  UPDATE bib.ColumnDefinitions
  --  SET

  --  DimensionDataType = 'DateTime'
  --  ,
  --  CustomTypeConversionExpression = 'CAST(<COLUMN> as DateTime)' 
  --  FROM
  --  bib.ColumnDefinitions

	 --  WHERE
	 --  StagingTableSchema = 'Example_Staging'
  --  AND StagingTableName = 'ExampleOfPausingETLBuilds'
  --  AND StagingColumnName = 'StartDate'

  --   -- 3) Control Flags to build from your manual changes to the metadata 
  --  -- This configuration skips the metadata creation process that would otherwise overwrite your changes 
  --  SET @PauseForManualEditsToMetadata = 0   
  --  SET @UseCurrentMetadataForBuild = 1

  --  EXECUTE[bib].[Main] 
	 -- @ModelSchemaName
	 --,@ModelTableName
	 --,@StagingSchemaName
	 --,@StagingTableName
	 --,@StagingFilegroupName
	 --,@SourceSystem_Id
	 --,@SlowlyChangingDimensionColumnList
	 --,@DimSchemaName
	 --,@DimTableName
	 --,@DimFilegroupName
	 --,@SkipDataAnalysis
	 --,@PauseForManualEditsToMetadata
	 --,@UseCurrentMetadataForBuild 
  --,@ApplyAutoAudit

  ---- ********** to here

-- look at the  metadata
SELECT * FROM BIB.ColumnDefinitions
WHERE StagingTableName = 'ExampleOfPausingETLBuilds'
ORDER BY OrdinalPosition 

GO

