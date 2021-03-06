-- ************************************************************************************
-- Setup Script for BI Builder (c)2014 Patrick Connors, Curious Developments Pty
-- Version alpha-0.1.0
-- FOR DEVELOPMENT DATABASES
-- ************************************************************************************


--USE [<DevelopmentDatabaseName>]
--GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ETL].[UpdateETLBatchStepStatus]') AND type in (N'P', N'PC'))
DROP PROCEDURE [ETL].[UpdateETLBatchStepStatus]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ETL].[InitiateETLBatch]') AND type in (N'P', N'PC'))
DROP PROCEDURE [ETL].[InitiateETLBatch]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ETL].[AddETLBatchStepStatus]') AND type in (N'P', N'PC'))
DROP PROCEDURE [ETL].[AddETLBatchStepStatus]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[DWHUtils].[ReportOnFilegroupTablesAndIndexes]') AND type in (N'P', N'PC'))
DROP PROCEDURE [DWHUtils].[ReportOnFilegroupTablesAndIndexes]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[DWHUtils].[CreateCalendarTableAndData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [DWHUtils].[CreateCalendarTableAndData]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[Update_ETLBuildProgress]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[Update_ETLBuildProgress]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[UnLockTableToAllowOverwriting]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[UnLockTableToAllowOverwriting]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[TruncateTablesStoringBuildMetadata]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[TruncateTablesStoringBuildMetadata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[TableDefinitions_AddTable]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[TableDefinitions_AddTable]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[SetSurrogateKeyNameForDimension]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[SetSurrogateKeyNameForDimension]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[SetSCDFlagforColumn]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[SetSCDFlagforColumn]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[SetInclusionStateforColumn]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[SetInclusionStateforColumn]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[SetCustomTypeConversionExpressionThroughRules]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[SetCustomTypeConversionExpressionThroughRules]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[SetBusinessKeyforColumn]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[SetBusinessKeyforColumn]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[Restart_ETLBuildProgress]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[Restart_ETLBuildProgress]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[RepositionColumnsForDimension]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[RepositionColumnsForDimension]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[RemoveTableMetadataFromBIBuilder]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[RemoveTableMetadataFromBIBuilder]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[PrebuildCheckingForStagingTable]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[PrebuildCheckingForStagingTable]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[Main_PrintScriptToBuildETLFromModelTable]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[Main_PrintScriptToBuildETLFromModelTable]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[Main]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[Main]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[LongPrint]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[LongPrint]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[LockTableToPreventOverwriting]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[LockTableToPreventOverwriting]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateDimLoadETLStoredProcedures]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[GenerateDimLoadETLStoredProcedures]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateDimensionTableScript]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[GenerateDimensionTableScript]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateDefaultValuesForUnknownDimensionKey]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[GenerateDefaultValuesForUnknownDimensionKey]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ForceSchemaCreation]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[ForceSchemaCreation]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ForceFileGroupCreation]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[ForceFileGroupCreation]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[FlagSCDKeyColumnsFromStagingTable]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[FlagSCDKeyColumnsFromStagingTable]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[FlagModifiedDateFieldInStagingTable]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[FlagModifiedDateFieldInStagingTable]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[FlagDeletedBitFieldInStagingTable]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[FlagDeletedBitFieldInStagingTable]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[FlagBusinessKeysFromStagingTable]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[FlagBusinessKeysFromStagingTable]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ExtractDocumentationFromBIBuilderComponents_DependencyVersion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[ExtractDocumentationFromBIBuilderComponents_DependencyVersion]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ExtractDocumentationFromBIBuilderComponents]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[ExtractDocumentationFromBIBuilderComponents]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ExcludeColumnsFromDWHBasedOnRules]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[ExcludeColumnsFromDWHBasedOnRules]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[DetectIdentityColumnInStagingTable]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[DetectIdentityColumnInStagingTable]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[DeletePrimaryKeyFromStagingTable]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[DeletePrimaryKeyFromStagingTable]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[CreateStagingTableFromModel]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[CreateStagingTableFromModel]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[CreateFilegroupWithFile]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[CreateFilegroupWithFile]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[CreateDataTypesForDimension]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[CreateDataTypesForDimension]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[CreateColumnNamesForDimension]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[CreateColumnNamesForDimension]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ConvertBusinessKeysToUniqueIndexOnStagingTable]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[ConvertBusinessKeysToUniqueIndexOnStagingTable]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ColumnDefinitions_AddETLColumnsFromTable]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[ColumnDefinitions_AddETLColumnsFromTable]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ColumnDefinitions_AddColumnsFromTable]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[ColumnDefinitions_AddColumnsFromTable]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[BIB_Increment_Version_Revision]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[BIB_Increment_Version_Revision]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[BIB_Increment_Version_Minor]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[BIB_Increment_Version_Minor]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[BIB_Increment_Version_Major]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[BIB_Increment_Version_Major]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[AuditDropFromTable]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[AuditDropFromTable]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[AuditAddToTable]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[AuditAddToTable]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ApplyVersionNumberToBIBuilderComponents]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[ApplyVersionNumberToBIBuilderComponents]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[AnalyseTableForNULLColumns]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[AnalyseTableForNULLColumns]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[AnalyseTableForIntColumnStoredAsFloatColumn]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[AnalyseTableForIntColumnStoredAsFloatColumn]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[AnalyseTableForIntColumnsStoredAsStringColumns]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[AnalyseTableForIntColumnsStoredAsStringColumns]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[AnalyseTableForIntColumnsStoredAsFloatColumn]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[AnalyseTableForIntColumnsStoredAsFloatColumn]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[AnalyseTableForFloatColumnsStoredAsStringColumn]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[AnalyseTableForFloatColumnsStoredAsStringColumn]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[AnalyseTableForDistinctValueCountsPerColumn]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[AnalyseTableForDistinctValueCountsPerColumn]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[AnalyseTableForDateColumnsStoredAsStringColumn]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[AnalyseTableForDateColumnsStoredAsStringColumn]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[AnalyseStagingTable]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[AnalyseStagingTable]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[AddSystemSourceIdColumnToStagingTable]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[AddSystemSourceIdColumnToStagingTable]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[AddSCDColumnsToDimensionTable]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[AddSCDColumnsToDimensionTable]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[AddETLColumnsToStagingTable]') AND type in (N'P', N'PC'))
DROP PROCEDURE [BIB].[AddETLColumnsToStagingTable]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[BIB].[vwStagingColumnDefinitions]'))
DROP VIEW [BIB].[vwStagingColumnDefinitions]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[BIB].[vwLimitedSystemDataTypes]'))
DROP VIEW [BIB].[vwLimitedSystemDataTypes]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ETL].[ETL_Batch_Logs]') AND type in (N'U'))
DROP TABLE [ETL].[ETL_Batch_Logs]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ETL].[ETL_Batch_Details]') AND type in (N'U'))
DROP TABLE [ETL].[ETL_Batch_Details]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[TableDefinitions]') AND type in (N'U'))
DROP TABLE [BIB].[TableDefinitions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[SourceSystems]') AND type in (N'U'))
DROP TABLE [BIB].[SourceSystems]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ETLBuildProgress]') AND type in (N'U'))
DROP TABLE [BIB].[ETLBuildProgress]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[DataStates]') AND type in (N'U'))
DROP TABLE [BIB].[DataStates]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ColumnDefinitions]') AND type in (N'U'))
DROP TABLE [BIB].[ColumnDefinitions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[BIB_Versions]') AND type in (N'U'))
DROP TABLE [BIB].[BIB_Versions]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[BIB_Settings]') AND type in (N'U'))
DROP TABLE [BIB].[BIB_Settings]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[DWHUtils].[DateTimeToDateTimeString]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [DWHUtils].[DateTimeToDateTimeString]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[DWHUtils].[DateTimeToDateTimeKey]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [DWHUtils].[DateTimeToDateTimeKey]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[DWHUtils].[DateTimeToDateKey]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [DWHUtils].[DateTimeToDateKey]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[UpdateClauseForNonKeyStagingColumns]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[UpdateClauseForNonKeyStagingColumns]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[UnderscorePascal]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[UnderscorePascal]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[TableIsSCD]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[TableIsSCD]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[TableIsLockedToOverwriting]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[TableIsLockedToOverwriting]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[RowCountOfTable]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[RowCountOfTable]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ModifiedDateColumnName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[ModifiedDateColumnName]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ModelTableHasPrimaryKey]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[ModelTableHasPrimaryKey]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[MakeDimensionDataTypeLengthFromStagingColumn]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[MakeDimensionDataTypeLengthFromStagingColumn]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[MakeDimensionDataTypeFromStagingColumn]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[MakeDimensionDataTypeFromStagingColumn]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[MakeDimensionColumnNameFromStagingColumn]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[MakeDimensionColumnNameFromStagingColumn]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateUpdateSQLForDimensionLoad]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[GenerateUpdateSQLForDimensionLoad]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateStagingLoadCandidateFlaggingRoutine]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[GenerateStagingLoadCandidateFlaggingRoutine]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateSCDSQLClauseForDeactivatingRecords]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[GenerateSCDSQLClauseForDeactivatingRecords]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateSCDSQLClauseForActivateRecords]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[GenerateSCDSQLClauseForActivateRecords]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateSCDCurrentRecordClauseSQL]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[GenerateSCDCurrentRecordClauseSQL]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GeneratePrimaryKeyDROPClause]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[GeneratePrimaryKeyDROPClause]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateOverwriteSafetyCatchForUpdateSQL]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[GenerateOverwriteSafetyCatchForUpdateSQL]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateMetadataEditingScript]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[GenerateMetadataEditingScript]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateManualLoadTestingProcedure]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[GenerateManualLoadTestingProcedure]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateInsertOfNewRecordsSQLForDimensionLoad]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[GenerateInsertOfNewRecordsSQLForDimensionLoad]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateInsertJOINClauseSQL]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[GenerateInsertJOINClauseSQL]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateHandleDeletedRecordsSQL]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[GenerateHandleDeletedRecordsSQL]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateDeletedSafetyCatchForJOINClauseSQL]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[GenerateDeletedSafetyCatchForJOINClauseSQL]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateDefaultValuesProcForUnknownDimensionKey]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[GenerateDefaultValuesProcForUnknownDimensionKey]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateDebuggingScriptForDimension]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[GenerateDebuggingScriptForDimension]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateDataCopyFromModelToStagingForManualTesting]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[GenerateDataCopyFromModelToStagingForManualTesting]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[FirstSCDColumnName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[FirstSCDColumnName]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[FileGroupThatThisTableIsIn]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[FileGroupThatThisTableIsIn]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ExtractNthTextSection]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[ExtractNthTextSection]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[DoesColumnExistInTable]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[DoesColumnExistInTable]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[DefaultValueForUnknownDimensionColumn]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[DefaultValueForUnknownDimensionColumn]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[DefaultETLBatchSizeFromSettings]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[DefaultETLBatchSizeFromSettings]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[DefaultDateformatFromSettings]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[DefaultDateformatFromSettings]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[CountDelimitersInString]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[CountDelimitersInString]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[CommaValuesListOfNonNullableStagingColumns]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[CommaValuesListOfNonNullableStagingColumns]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[CommaListOfStagingColumnsWithoutETLColumns]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[CommaListOfStagingColumnsWithoutETLColumns]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[CommaListOfNonNullableDimensionColumns]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[CommaListOfNonNullableDimensionColumns]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[CommaListOfDimensionColumns]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[CommaListOfDimensionColumns]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[CommaListOfBusinessKeys]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[CommaListOfBusinessKeys]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[CommaListOfBusinessKeyDimensionColumns]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[CommaListOfBusinessKeyDimensionColumns]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[BIBuilderCurrentVersion]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [BIB].[BIBuilderCurrentVersion]
GO

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'Audit')
EXEC sys.sp_executesql N'CREATE SCHEMA [Audit]'

GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'BIB')
EXEC sys.sp_executesql N'CREATE SCHEMA [BIB]'

GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'DWHUtils')
EXEC sys.sp_executesql N'CREATE SCHEMA [DWHUtils]'

GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'ETL')
EXEC sys.sp_executesql N'CREATE SCHEMA [ETL]'

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ForceFileGroupCreation]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[ForceFileGroupCreation] AS' 
END
GO

ALTER PROCEDURE [BIB].[ForceFileGroupCreation] (
@FileGroupName nvarchar(255))
AS
/*+ Version alpha-0.1.7.1062 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [bib].[ForceFileGroupCreation]

When you build the tables and ETL routines from a Model Table,
you can specify what FILEGROUPs the staging and dimension tables will
be created within.

If the FILEGROUP does not exist, this routine is called to create it.

By default, it creates FILEs in the default data directory. If you want to override that
behaviour, you can alter this procedure.
-- -----------------------------------------------------------+*/
BEGIN

DECLARE @Default_Data_Path VARCHAR(512),   
        @Default_Log_Path VARCHAR(512);

IF NOT EXISTS(SELECT fg.name 
       FROM
		  sys.filegroups fg
		  WHERE fg.name = @FileGroupName
)
BEGIN

	   SELECT @Default_Data_Path =    
	   (   SELECT TOP 1 LEFT(physical_name,LEN(physical_name)-CHARINDEX('\',REVERSE(physical_name))+1) 
		  FROM sys.master_files mf   
		  INNER JOIN sys.[databases] d   
		  ON mf.[database_id] = d.[database_id]   
		  WHERE d.[name] = DB_NAME() AND type = 0);

	   DECLARE @Filename nvarchar(50)
	   DECLARE @SizeMB int
	   DECLARE @MaxSizeMB int
	   DECLARE @FileGrowthMB int
	   DECLARE @Msg nvarchar(255)
	   
	   SET @Filename = @FileGroupName
	   SET @SizeMB = 10
	   SET @FileGrowthMB = 10
	   SET @MaxSizeMB = 1000

	   BEGIN TRY
	   EXECUTE [bib].[CreateFilegroupWithFile] 
		 @FileGroupName
		,@Filename
		,@Default_Data_Path
		,@SizeMB
		,@MaxSizeMB
		,@FileGrowthMB
	   END TRY
	   BEGIN CATCH
		  SET @Msg = 'Problem creating the filegroup "'+@FileGroupName+'"in stored procedure [bib].[ForceFileGroupCreation]'
		  RAISERROR(@Msg, 16, 1);
	   END CATCH
  END
END

GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[CreateFilegroupWithFile]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[CreateFilegroupWithFile] AS' 
END
GO

ALTER PROCEDURE [BIB].[CreateFilegroupWithFile]
( 
  @FileGroupName nvarchar(50)
, @Filename nvarchar(255)
, @FolderPath nvarchar(550)
, @SizeMB int = 5
, @MaxSizeMB int = 1000
, @FileGrowthMB int = 5
)
AS
--/*+ Version alpha-0.1.7.1034 20141005.170752 -------------------------------------------------------------- 
--Stored Procedure [bib].[CreateFilegroupWithFile]

--Called automatically within the ETL build process to create
--any FILEGROUPS specified in the parameters of [bib].[Main]
---- -----------------------------------------------------------+*/
DECLARE @SQL nvarchar(MAX)

SET @SQL = 
'
ALTER DATABASE '+ DB_Name() + '
ADD FILEGROUP '+@FileGroupName+'
'

--PRINT @SQL
EXECUTE sp_ExecuteSQL @SQL

SET @Filename = DB_Name() + '_' + @Filename

SET @SQL = 
' 
ALTER DATABASE '+ DB_Name() + '
ADD FILE 
(
    NAME = '''+@Filename+''',
    FILENAME = '''+@FolderPath+'\'+@Filename+'.ndf'',
    SIZE = '+LTRIM(@SizeMB)+'MB,
    MAXSIZE = '+LTRIM(@MaxSizeMB)+'MB,
    FILEGROWTH = '+LTRIM(@FileGrowthMB)+'MB
) TO FILEGROUP ['+@FileGroupName+']
'
--PRINT @SQL
EXECUTE sp_ExecuteSQL @SQL


GO

-- CREATE BIB FILEGROUPS


EXECUTE [BIB].[ForceFileGroupCreation] 'BIB'
EXECUTE [BIB].[ForceFileGroupCreation] 'Models'
EXECUTE [BIB].[ForceFileGroupCreation] 'DWH'
EXECUTE [BIB].[ForceFileGroupCreation] 'ETL_Logs'
EXECUTE [BIB].[ForceFileGroupCreation] 'Audit'


GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[BIBuilderCurrentVersion]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[BIBuilderCurrentVersion]()
RETURNS nvarchar(50)
AS
/*+ Version alpha-0.1.0.1050 20141005.170752 -------------------------------------------------------------- 
Scalar Function  [bib].[BIBuilderCurrentVersion]

Returns the current version of BI Builder. 
-- -----------------------------------------------------------+*/
BEGIN
    DECLARE @CurrentVersion nvarchar(50)

    SELECT  @CurrentVersion = [VersionType] + ''-''+ LTRIM( MajorVersion ) + ''.'' + LTRIM( MinorVersion ) + ''.'' + LTRIM( Revision )
       FROM bib.BIB_Versions
       GROUP BY
			 VersionType
			 , MajorVersion
			 , MinorVersion
			 , Revision
			 , BIBVersion_Id
       HAVING	  BIBVersion_Id = MAX( BIBVersion_Id )

    RETURN @CurrentVersion
END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[CommaListOfBusinessKeyDimensionColumns]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[CommaListOfBusinessKeyDimensionColumns]
(
@StagingTableSchema sysname
,
@StagingTableName sysname
)
RETURNS nvarchar( max )
AS
/*+ Version alpha-0.1.0.934 20141005.170750 -------------------------------------------------------------- 
Scalar Function [bib].[CommaListOfBusinessKeyDimensionColumns]

Returns a comma-delimited list of all columns that are considered part of the business
keys for the dimension table.
-- -----------------------------------------------------------+*/
BEGIN
    
    DECLARE @DimensionColumns nvarchar( max )

    
    SELECT @DimensionColumns = ISNULL( @DimensionColumns + ''
					   , '' , '''' ) + ''[''+ ColumnDefinitions.DimensionColumnName +'']''
           FROM bib.ColumnDefinitions
           WHERE
           ColumnDefinitions.StagingTableSchema = @StagingTableSchema
       AND ColumnDefinitions.StagingTableName = @StagingTableName
	  AND
		 IsBusinessKey = 1 
		  AND IncludeInDWH = 1

    AND	  OrdinalPosition > 1
    AND
		   [StagingColumnName] NOT IN (''Staging_Id'',   ''DataState_Id'' )
	  ORDER BY ColumnDefinitions.OrdinalPosition ASC

   
    RETURN ISNULL(@DimensionColumns, '''')

END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[CommaListOfBusinessKeys]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[CommaListOfBusinessKeys]
(
@StagingTableSchema sysname
,
@StagingTableName sysname
)
RETURNS nvarchar( max )
AS
/*+ Version alpha-0.1.0.934 20141005.170750 -------------------------------------------------------------- 
Scalar Function [bib].[CommaListOfBusinessKeys]

Returns a comma-delimited list of all columns that are considered part of the business
key for the staging table.
-- -----------------------------------------------------------+*/
BEGIN
    
    DECLARE @BusinessKeyColumns nvarchar( max )

    
    SELECT @BusinessKeyColumns = ISNULL( @BusinessKeyColumns + ''
					   , '' , '''' ) + ''[''+ ColumnDefinitions.StagingColumnName  +'']''
           FROM bib.ColumnDefinitions
           WHERE
           ColumnDefinitions.StagingTableSchema = @StagingTableSchema
       AND ColumnDefinitions.StagingTableName = @StagingTableName
	  AND
		 IsBusinessKey = 1 
		  AND IncludeInDWH = 1

    AND	  OrdinalPosition > 1
    AND
		   [StagingColumnName] NOT IN (''Staging_Id'',   ''DataState_Id'' )
	  ORDER BY ColumnDefinitions.OrdinalPosition ASC

   
    RETURN ISNULL(@BusinessKeyColumns, '''')

END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[CommaListOfDimensionColumns]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[CommaListOfDimensionColumns]
(
@StagingTableSchema sysname
,
@StagingTableName sysname
)
RETURNS nvarchar( max )
AS
/*+ Version alpha-0.1.0.936 20141005.170750 -------------------------------------------------------------- 
Scalar Function [bib].[CommaListOfDimensionColumns]
 
Returns a comma-delimited list of all columns in the dimension related to the staging table
specified in the parameters.
-- -----------------------------------------------------------+*/

BEGIN
    
    DECLARE @DimensionColumns nvarchar( max )

    
    SELECT @DimensionColumns = ISNULL( @DimensionColumns + ''
    , '' , '''' ) + ''[''+ ColumnDefinitions.DimensionColumnName +'']''
           FROM bib.ColumnDefinitions
           WHERE
           ColumnDefinitions.StagingTableSchema = @StagingTableSchema
       AND ColumnDefinitions.StagingTableName = @StagingTableName
	  AND IncludeInDWH = 1
	  ORDER BY ColumnDefinitions.OrdinalPosition ASC
   
    RETURN ISNULL(@DimensionColumns, '''')

END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[CommaListOfNonNullableDimensionColumns]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[CommaListOfNonNullableDimensionColumns]
(
@StagingTableSchema sysname
,
@StagingTableName sysname
)
RETURNS nvarchar( max )
AS
/*+ -------------------------------------------------------------- 
Scalar Function [bib].[CommaListOfNonNullableDimensionColumns]
 
Returns a comma-delimited list of all non-nullable columns in the dimension related to the staging table
specified in the parameters.
-- -----------------------------------------------------------+*/
BEGIN
    /* Declare the return variable here*/
    DECLARE @DimensionColumns nvarchar( max )

    /* Add the T-SQL statements to compute the return value here*/
    SELECT @DimensionColumns = ISNULL( @DimensionColumns + ''
					   , '' , '''' ) + ''[''+ ColumnDefinitions.DimensionColumnName +'']''
           FROM bib.ColumnDefinitions
           WHERE
           ColumnDefinitions.StagingTableSchema = @StagingTableSchema
       AND ColumnDefinitions.StagingTableName = @StagingTableName
	  AND
		  (IsNullable = 0 OR IsBusinessKey = 1 OR UseColumnForSCD = 1)
		  AND IncludeInDWH = 1

    AND	  OrdinalPosition > 1
    AND
		   [StagingColumnName] NOT IN (''Staging_Id'',   ''DataState_Id'' )
	  ORDER BY ColumnDefinitions.OrdinalPosition ASC

    /* Return the result of the function*/
    RETURN ISNULL(@DimensionColumns, '''')

END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[CommaListOfStagingColumnsWithoutETLColumns]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[CommaListOfStagingColumnsWithoutETLColumns]
(
@StagingTableSchema sysname
,@StagingTableName sysname
)
RETURNS nvarchar( max )
AS
/*+ Version alpha-0.1.0.938 20141005.170750 -------------------------------------------------------------- 
Scalar Function [bib].[CommaListOfStagingColumnsWithoutETLColumns]

Returns a comma-delimited list of all columns in the staging table
except those ones added to support ETL management. i.e, the columns listed are 
those from the model table that are flagged for inclusion in the DWH.
-- -----------------------------------------------------------+*/
BEGIN
    
    DECLARE @StagingColumns nvarchar( max )

    
    SELECT @StagingColumns = ISNULL( @StagingColumns + ''
		  , '' , '''' ) + ''[''+ ColumnDefinitions.StagingColumnName  +'']''
           FROM bib.ColumnDefinitions
           WHERE
           ColumnDefinitions.StagingTableSchema = @StagingTableSchema
       AND ColumnDefinitions.StagingTableName = @StagingTableName
	  AND IncludeInDWH = 1
    
    AND
		   [StagingColumnName] NOT IN ( ''Staging_Id'' , ''ETLBatch_Id'' , ''DataState_Id'' , ''SourceSystem_Id'' )
	  ORDER BY ColumnDefinitions.OrdinalPosition ASC

   
    RETURN ISNULL(@StagingColumns, '''')

END
' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[CommaValuesListOfNonNullableStagingColumns]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[CommaValuesListOfNonNullableStagingColumns]
(
@StagingTableSchema sysname
,
@StagingTableName sysname
)
RETURNS nvarchar( max )
AS
/*+ Version alpha-0.1.0.942 20141005.170751 -------------------------------------------------------------- 
Scalar Function [bib].[CommaValuesListOfNonNullableStagingColumns]

Returns a comma-delimited list of either fields or conversion statements
that is used to create an INSERT statement in the generated ETL stored procedures.

This list is used for inserting new records into the dimension and in the 
process BI Builder currently uses, it only lists the non-nullable fields.

All the other fields get updated in the subsequent action within the 
generated ETL stored procedure.
-- -----------------------------------------------------------+*/
BEGIN
    DECLARE @StagingColumns nvarchar( max )

    SELECT @StagingColumns = ISNULL( @StagingColumns + ''
					   , '' , '''' ) + 
					   --''[''+ ColumnDefinitions.StagingColumnName +'']''
		   CASE
			 WHEN CustomTypeConversionExpression IS NULL THEN					   
					    ''[''+ ColumnDefinitions.StagingColumnName +'']''
			 ELSE
				REPLACE(CustomTypeConversionExpression ,''<COLUMN>'',''[''+ ColumnDefinitions.StagingColumnName +'']'')
		  END -- CASE

           FROM bib.ColumnDefinitions
           WHERE
           ColumnDefinitions.StagingTableSchema = @StagingTableSchema
       AND ColumnDefinitions.StagingTableName = @StagingTableName
	  AND
		   (IsNullable = 0 OR IsBusinessKey = 1 OR UseColumnForSCD = 1)
    AND	  OrdinalPosition > 1
    AND
		   [StagingColumnName] NOT IN (''Staging_Id'',   ''DataState_Id'' )
	  ORDER BY ColumnDefinitions.OrdinalPosition ASC

    RETURN ISNULL(@StagingColumns, '''')
END
' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[CountDelimitersInString]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[CountDelimitersInString]
 (
   @string nvarchar(max),
   @character nchar(1)
 )
 RETURNS int
 AS
 /*+ Version alpha-0.1.0.946 20141005.170751 -------------------------------------------------------------- 
Scalar Function [bib].[CountDelimitersInString]

Returns the number of delimiters detected in a string
-- -----------------------------------------------------------+*/
 BEGIN
 
DECLARE @count int
 
   SELECT 
    @count = LEN(@string) - LEN(
       REPLACE(
         @string,
         @character,
         ''''
       )
     )
 
RETURN @count
 
END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[DefaultDateformatFromSettings]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[DefaultDateformatFromSettings]()
RETURNS nvarchar(32)
AS
/*+ Version alpha-0.1.0.950 20141005.170751 -------------------------------------------------------------- 
Scalar Function [bib].[DefaultDateformatFromSettings]

The default Date Format used for ETL loading is defined in the bib.BIB_Settings table.
This function returns the value specified there.

By default the value is "dmy" (Australian standard) but you can set it to your local value. You can also edit the generated ETL stored procedures to
use a custom date format for a particular dimension
-- -----------------------------------------------------------+*/
BEGIN
	DECLARE @Dateformat nvarchar(32)
	SET @Dateformat = ''dmy''
    
    SELECT @Dateformat =  [SettingValue]
    FROM	  [bib].[BIB_Settings]
    WHERE
    [SettingName] = ''DateFormat''

	RETURN @Dateformat

END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[DefaultETLBatchSizeFromSettings]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[DefaultETLBatchSizeFromSettings]()
RETURNS nvarchar(32)
AS
/*+ Version alpha-0.1.0.952 20141005.170751 -------------------------------------------------------------- 
Scalar Function [bib].[DefaultETLBatchSizeFromSettings]

The default batch size used for ETL loading is defined in the bib.BIB_Settings table.
This function returns the value specified there.

By default the value is 10000 but you can set it to any integer value. You can also edit the generated ETL stored procedures to
use a custom batch size for a particular dimension
-- -----------------------------------------------------------+*/
BEGIN
	DECLARE @BatchSize nvarchar(32)
	SET @BatchSize = ''10000''
    
    SELECT @BatchSize =  [SettingValue]
    FROM	  [bib].[BIB_Settings]
    WHERE
    [SettingName] = ''ETLBatchSize''

	RETURN @BatchSize

END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[DefaultValueForUnknownDimensionColumn]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[DefaultValueForUnknownDimensionColumn](
	 @StagingTableSchema sysname
	, @StagingTableName sysname
	, @StagingColumnName sysname
	, @DimensionDataType sysname
	, @DimensionDataTypeLength int
	, @IsNullable bit 
	, @ID uniqueidentifier 

)
RETURNS nvarchar(MAX)
AS
/*+ Version alpha-0.1.0.954 20141005.170751 -------------------------------------------------------------- 
Scalar Function [bib].[DefaultValueForUnknownDimensionColumn]

In this routine, you apply the rules as to what values you will supply
for the default dimension record, the one used in fact tables
when there is no key into the dimension
-- -----------------------------------------------------------+*/
BEGIN
	DECLARE @SQL nvarchar(MAX)
	
	SET @SQL = 
	CASE	  
	   WHEN @IsNullable = 1 THEN ''NULL''
	   WHEN @StagingColumnName = ''DataState_Id'' THEN ''6'' -- Locked
	   WHEN @DimensionDataType like ''%char%'' THEN ''''''N/A''''''
	   WHEN @DimensionDataType like ''%date%'' THEN ''''''Jan 1 1900''''''
	   WHEN @DimensionDataType like ''%time%'' THEN ''''''Jan 1 1900''''''
        WHEN @DimensionDataType like ''%int'' THEN ''0''
	   WHEN @DimensionDataType = ''float'' THEN ''0''
	   WHEN @DimensionDataType like ''%decimal'' THEN ''0''
	   WHEN @DimensionDataType like ''%numeric'' THEN ''0''
	   WHEN @DimensionDataType like ''%float'' THEN ''0''
	   WHEN @DimensionDataType like ''%uniqueidentifier'' THEN ''''''{''+CAST(@ID AS nvarchar(50))+''}''''''
	   -- Add other types as required
	   ELSE ''0''
     END
	
	RETURN @SQL

END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[DoesColumnExistInTable]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[DoesColumnExistInTable]
(@SchemaName sysname, @StagingTableName sysname, @ColumnName sysname)
RETURNS bit
AS
/*+ Version alpha-0.1.0.956 20141005.170751 -------------------------------------------------------------- 
Scalar Function [bib].[DoesColumnExistInTable]

Returns 1 if the column already exists.
-- -----------------------------------------------------------+*/
BEGIN
	
	DECLARE @ColumnExistsInTable bit

	SET @ColumnExistsInTable = 0

	IF EXISTS(
	SELECT
		 c.name 
		  FROM
			  sys.columns c
			  Inner Join sys.tables t on c.object_id	=	t.object_id
			  INNER JOIN sys.schemas s on s.schema_id	=	t.schema_id
			  WHERE
				 s.name = @SchemaName
				 AND
				 t.name = @StagingTableName
				 AND
				 c.name = @ColumnName 
			)
			BEGIN
			 SET @ColumnExistsInTable = 1
			END

	
	RETURN @ColumnExistsInTable

END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ExtractNthTextSection]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[ExtractNthTextSection]

( @BigStr nvarchar( max ) ,
  @seperator  nvarchar( 128 ) ,
  @ind int
)
RETURNS nvarchar( max )
AS
/*+ Version alpha-0.1.0.958 20141005.170751 -------------------------------------------------------------- 
Scalar Function [bib].[ExtractNthTextSection]

This function returns a block of text between the Nth and N+1 delimiter.
-- -----------------------------------------------------------+*/
BEGIN

    DECLARE @SeparatorLength int

    SET @SeparatorLength = LEN( @seperator )

    DECLARE @xpos int
    DECLARE @i int
    DECLARE @res varchar( 1024 )

    SET @i = 1

    SET @xpos = CHARINDEX ( @seperator , @BigStr )

    WHILE @i < @ind
        BEGIN
            SET @i = @i + 1
            SET @BigStr = SUBSTRING ( @BigStr , @xpos + @SeparatorLength , LEN( @BigStr ) - @xpos )
            SET @xpos = CHARINDEX ( @seperator , @BigStr )

            IF @xpos = 0
                BEGIN
                    IF @i < @ind
                        BEGIN SET @BigStr = ''''
                        END
                    BREAK
                END
        END

    IF @xpos = 0
        BEGIN
            SET @res = @BigStr
        END
    ELSE

        BEGIN
            SET @res = SUBSTRING ( @BigStr , 1 , @xpos - 1 )
        END

    RETURN @res

END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[FileGroupThatThisTableIsIn]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[FileGroupThatThisTableIsIn]
(@SchemaName sysname, @StagingTableName sysname)
RETURNS nvarchar(255)
AS
/*+ Version alpha-0.1.0.960 20141005.170751 -------------------------------------------------------------- 
Scalar Function [bib].[FileGroupThatThisTableIsIn]

Returns the name of the filegroup that the table resides in.
-- -----------------------------------------------------------+*/
BEGIN

    DECLARE @Filegroup nvarchar(255)

SELECT 
    @Filegroup = ds.name
       FROM
            sys.tables t
            INNER JOIN sys.indexes i ON t.object_id = i.object_id
            INNER JOIN sys.filegroups ds ON i.data_space_id = ds.data_space_id
            INNER JOIN sys.partitions p ON i.object_id = p.object_id
                                       AND i.index_id = p.index_id

      WHERE 
		  OBJECT_SCHEMA_NAME( t.object_id ) = @SchemaName
		  AND
		  t.name = @StagingTableName

	  RETURN @Filegroup
END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[FirstSCDColumnName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[FirstSCDColumnName]
(
  @StagingTableSchema sysname,
  @StagingTableName sysname
)
RETURNS nvarchar(MAX)
AS
/*+ Version alpha-0.1.0.964 20141005.170751 -------------------------------------------------------------- 
Scalar Function [bib].[FirstSCDColumnName]

Used to generate the manual testing routines, this function
returns the first column specifed as an SCD type 2 column for which 
changes will trigger new rows in the dimension.
-- -----------------------------------------------------------+*/
BEGIN
	 DECLARE @SCDColumnName nvarchar(MAX)

	 SET @SCDColumnName = NULL

      SELECT TOP 1 @SCDColumnName = StagingColumnName from [bib].[ColumnDefinitions] 
	   WHERE StagingTableSchema = @StagingTableSchema AND StagingTableName = @StagingTableName
	   AND UseColumnForSCD = 1

	RETURN @SCDColumnName
END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateDataCopyFromModelToStagingForManualTesting]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[GenerateDataCopyFromModelToStagingForManualTesting]
(
 @ModelSchemaName nvarchar(255)
, @ModelTableName nvarchar(255)
, @StagingSchemaName nvarchar(255)
, @StagingTableName nvarchar(255)
)
RETURNS nvarchar(MAX)
AS
/*+ Version alpha-0.1.0.968 20141005.170751 -------------------------------------------------------------- 
Scalar Function [bib].[GenerateDataCopyFromModelToStagingForManualTesting]

Returns the SQL used to copy the data from yor model table to
the generated staging table.
-- -----------------------------------------------------------+*/
BEGIN
DECLARE @PopScript nvarchar(MAX)
DECLARE @ColumnList nvarchar(MAX)

SET @ColumnList =   [bib].[CommaListOfStagingColumnsWithoutETLColumns](@StagingSchemaName ,@StagingTableName)
IF LEN(@ColumnList) > 1
BEGIN

    SET @PopScript = 

    ''TRUNCATE TABLE [''+@StagingSchemaName+''].[''+@StagingTableName+''] 
    
    INSERT INTO [''+@StagingSchemaName+''].[''+@StagingTableName+''] 
    (
		    ''+ @ColumnList+ ''
    )
    
    
     SELECT 
		    ''+ @ColumnList+ ''	
	FROM [''+@ModelSchemaName+''].[''+@ModelTableName+''] 
    ''
     END
	ELSE
	BEGIN
	   SET @PopScript = ''-- Could not generate data copy from MOdel to staging as there were no columns defined at the time this routine ([bib].[CommaListOfStagingColumnsWithoutETLColumns]) was executed.''
	END
	
	RETURN @PopScript
END	

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateDebuggingScriptForDimension]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[GenerateDebuggingScriptForDimension](
  @StagingTableSchema sysname,
  @StagingTableName sysname
)
RETURNS nvarchar(MAX)
AS
/*+ Version alpha-0.1.0.972 20141005.170751 -------------------------------------------------------------- 
Scalar Function [bib].[GenerateDebuggingScriptForDimension]

Generates the script you can use post-ETL build in order to test
the generated objects.

This script is also appended to the header of the main ETL procedure generated
-- -----------------------------------------------------------+*/

BEGIN

    DECLARE @DimensionTableSchema sysname
    DECLARE @DimensionTableName sysname
    DECLARE @DimensionTableFileGroup sysname

    SELECT
		@DimensionTableName	=	RelatedDimensionTableName
	    , @DimensionTableSchema	=	RelatedDimensionTableSchema
	    , @DimensionTableFileGroup	=	RelatedDimensionTableFileGroup
    FROM bib.TableDefinitions 
    WHERE 
    StagingTableSchema = @StagingTableSchema
    AND 
    StagingTableName = @StagingTableName 

	
DECLARE @DebugHeaderScriptSQL nvarchar(max)
DECLARE  @DeletionFlagColumnName nvarchar(50)
DECLARE @SampleRows int

 SET @DeletionFlagColumnName = NULL

 SELECT TOP 1 @DeletionFlagColumnName =  ColumnDefinitions.StagingColumnName 
           FROM bib.ColumnDefinitions
           WHERE
           ColumnDefinitions.StagingTableSchema = @StagingTableSchema
       AND ColumnDefinitions.StagingTableName = @StagingTableName
	  AND
		  IsDeletedFlag   = 1 

DECLARE @FirstSCDColumnName sysname
SET @FirstSCDColumnName = [bib].[FirstSCDColumnName](@StagingTableSchema, @StagingTableName)

DECLARE @ModifiedDateColumnName sysname
SET @ModifiedDateColumnName = [bib].[ModifiedDateColumnName](@StagingTableSchema, @StagingTableName)

SET @DebugHeaderScriptSQL = '' 
/*
--=====================================================================================================================
-- MANUAL TESTING UTILITY ROUTINES FOR [''+@DimensionTableSchema+''].[Load_'' + @DimensionTableName +'']
------------------------------------------------------------------------
-- Records in Dimension
SELECT * FROM	    [''+@DimensionTableSchema+''].[''+@DimensionTableName+'']
SELECT COUNT(*) FROM [''+@DimensionTableSchema+''].[''+@DimensionTableName+'']

-- Records in Staging
SELECT * FROM	     [''+@StagingTableSchema+''].[''+@StagingTableName+'']
SELECT COUNT(*) FROM  [''+@StagingTableSchema+''].[''+@StagingTableName+'']

-- To start from absolute scratch with no pre-existing logs, restaged records in the staging table and an empty dimension table
EXECUTE  [''+@DimensionTableSchema+''].[Load_'' + @DimensionTableName+''_ManualTesting] 1,1,1,1,1

-- See the logs of previous ETL runs
EXECUTE  [''+@DimensionTableSchema+''].[Load_'' + @DimensionTableName+''_ManualTesting] 0,0,0,0,1

-- Clear the logs for this dimension
EXECUTE  [''+@DimensionTableSchema+''].[Load_'' + @DimensionTableName+''_ManualTesting] 1,0,0,0,0

-- Clear the logs, restage the test data and truncate the dimension
EXECUTE  [''+@DimensionTableSchema+''].[Load_'' + @DimensionTableName+''_ManualTesting] 1,1,1,0,0

-- To restage data in the staging table 
EXECUTE  [''+@DimensionTableSchema+''].[Load_'' + @DimensionTableName+''_ManualTesting] 0,0,1,0,0

-- To run process on whatever is in the staging table and show log
EXECUTE  [''+@DimensionTableSchema+''].[Load_'' + @DimensionTableName+''_ManualTesting] 0,0,0,1,1

-- To Rerun the process on restaged data in the staging table 
EXECUTE  [''+@DimensionTableSchema+''].[Load_'' + @DimensionTableName+''_ManualTesting] 0,0,1,1,1

-- To Rerun the process on previously ingested data in the staging table 
EXECUTE  [''+@DimensionTableSchema+''].[Load_'' + @DimensionTableName+''_ManualTesting] 1,1,1,1,0 -- reset and run first, no log report
EXECUTE  [''+@DimensionTableSchema+''].[Load_'' + @DimensionTableName+''_ManualTesting] 0,0,1,1,1 -- refill staging and run load routine again, show log, should be updaes but no new records
EXECUTE  [''+@DimensionTableSchema+''].[Load_'' + @DimensionTableName+''_ManualTesting] 0,0,0,1,1 -- try reingesting staged data again - staging should be empty of records and log should show no change since last run

-- To test deletions
EXECUTE  [''+@DimensionTableSchema+''].[Load_'' + @DimensionTableName+''_ManualTesting] 1,1,1,1,0 -- reset and run first, no log report
EXECUTE  [''+@DimensionTableSchema+''].[Load_'' + @DimensionTableName+''_ManualTesting] 0,0,1,0,0 -- restage the data
UPDATE   [''+@StagingTableSchema+''].[''+@StagingTableName+''] 
    SET [''+ISNULL(@DeletionFlagColumnName, ''*PUT DELETION FLAG COLUMN NAME HERE*'')+''] = 1 WHERE Staging_Id < 3 -- flag the first 2 records as deleted
EXECUTE  [''+@DimensionTableSchema+''].[Load_'' + @DimensionTableName+''_ManualTesting] 0,0,0,1,0 -- run the load
EXECUTE   [''+@DimensionTableSchema+''].[Load_'' + @DimensionTableName+''_ManualTesting] 0,0,0,0,1 -- check the logs to see that records were inserted and updated, then in one batch there were 2 deletions and ModelTableSampleRows-2 updates
SELECT * FROM	    [''+@DimensionTableSchema+''].[''+@DimensionTableName+''] -- checkout the records in the dimension to ensure the flagged record(s) have been deleted

'' + 
CASE WHEN @FirstSCDColumnName IS NOT NULL THEN ''
-- To test SCD functionality
EXECUTE   [''+@DimensionTableSchema+''].[Load_'' + @DimensionTableName+''_ManualTesting] 1,1,1,1,0 -- reset and run first, no log report
EXECUTE   [''+@DimensionTableSchema+''].[Load_'' + @DimensionTableName+''_ManualTesting] 0,0,1,0,0 -- restage the data
-- Adjust one of the SCD columns
UPDATE   [''+@StagingTableSchema+''].[''+@StagingTableName+''] 
    SET [''+@FirstSCDColumnName+''] = *PUT NEW VALUE HERE* -- to trigger a new record created in the dimension when loaded
	   , [''+@ModifiedDateColumnName+''] = GETDATE()
    FROM    [''+@StagingTableSchema+''].[''+@StagingTableName+'']     
    WHERE Staging_Id = 1
EXECUTE   [''+@DimensionTableSchema+''].[Load_'' + @DimensionTableName+''_ManualTesting] 0,0,0,1,0 -- run the load
EXECUTE    [''+@DimensionTableSchema+''].[Load_'' + @DimensionTableName+''_ManualTesting] 0,0,0,0,1 -- check the logs to see that records were inserted and updated, should be 1 insert and 1 update
SELECT * FROM	    [''+@DimensionTableSchema+''].[''+@DimensionTableName+''] -- check out the records to ensure the the EffectiveFinish date and Active record flags have been set correctly
''
ELSE ''''
END + ''

--===================================================================================================================== 
''

    RETURN @DebugHeaderScriptSQL + ''*/''
END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateDefaultValuesProcForUnknownDimensionKey]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[GenerateDefaultValuesProcForUnknownDimensionKey]
( @StagingTableSchema sysname
, @StagingTableName sysname
, @ExecuteGeneratedScript bit = 0
, @ID uniqueidentifier
)
RETURNS  nvarchar(MAX)
AS

/*+ Version alpha-0.1.0.976 20141005.170751 -------------------------------------------------------------- 
Scalar Function [bib].[GenerateDefaultValuesProcForUnknownDimensionKey]

Generates the SQL that inserts a single row of default values into the dimension table
-- -----------------------------------------------------------+*/
BEGIN

DECLARE  @DimensionTableName nvarchar(50)
DECLARE  @DimensionTableSchema nvarchar(50)
DECLARE  @DropScriptSQL nvarchar(MAX)
DECLARE  @DefaultValuesScriptSQL nvarchar(MAX)
DECLARE  @ProcScriptSQL nvarchar(MAX)

SELECT @DimensionTableName =	  RelatedDimensionTableName
       ,
       @DimensionTableSchema =  RelatedDimensionTableSchema
       FROM bib.TableDefinitions
       WHERE
       StagingTableSchema =    @StagingTableSchema
   AND StagingTableName =	    @StagingTableName

SET @ProcScriptSQL =''
CREATE PROCEDURE [''+@DimensionTableSchema+''].[Load_''+@DimensionTableName+''_SetDefaultValues]
AS 
BEGIN

SET NOCOUNT ON
SET XACT_ABORT ON

DECLARE @Message nvarchar(1024)
BEGIN TRY

    IF NOT EXISTS(SELECT 1 FROM [''+@DimensionTableSchema+''].['' + @DimensionTableName + ''] WHERE [''+@DimensionTableName+''_DID] = -1)
    BEGIN

    SET IDENTITY_INSERT [''+@DimensionTableSchema+''].['' + @DimensionTableName + ''] ON

    INSERT INTO [''+@DimensionTableSchema+''].['' + @DimensionTableName + ''](
		 ''+ bib.CommaListOfDimensionColumns(@StagingTableSchema, @StagingTableName) + ''
    )

    SELECT 
		 -1
	    , **@DefaultValuesScriptSQL**

    SET IDENTITY_INSERT [''+@DimensionTableSchema+''].['' + @DimensionTableName + ''] OFF
	RETURN 0
    END 

END TRY
BEGIN CATCH
   
     SET @Message = ''''
-- ### BI BUILDER ERROR MESSAGE ####################################################################################################
ERROR:  [''+@DimensionTableSchema+''].[Load_''+@DimensionTableName+''_SetDefaultValues] has attempted to insert a record that violates a CHECK CONSTRAINT.
			 
Take a look at the routine [Sales].[Load_DimSalesOrderDetails_SetDefaultValues] and edit it so it inserts the default record OK.

ERROR MESSAGE FROM SQL SERVER: ''''+ERROR_MESSAGE()+''''
-- ###############################################################################################################################
''''
    RAISERROR(@Message, 16,1)    
    
END CATCH

END

''

SELECT @DefaultValuesScriptSQL = ISNULL(@DefaultValuesScriptSQL+''
,'','''') + 
[bib].[DefaultValueForUnknownDimensionColumn](StagingTableSchema,StagingTableName, StagingColumnName ,DimensionDataType, DimensionDataTypeLength, IsNullable, @ID )
           FROM bib.ColumnDefinitions
           WHERE
           ColumnDefinitions.StagingTableSchema = @StagingTableSchema
       AND ColumnDefinitions.StagingTableName = @StagingTableName
	  AND OrdinalPosition > 1
	  AND IncludeInDWH = 1
	  ORDER BY ColumnDefinitions.OrdinalPosition ASC

SET @ProcScriptSQL = REPLACE(@ProcScriptSQL, ''**@DefaultValuesScriptSQL**'', @DefaultValuesScriptSQL)

--EXECUTE [bib].[LongPrint] @ProcScriptSQL
RETURN @ProcScriptSQL

END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateDeletedSafetyCatchForJOINClauseSQL]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[GenerateDeletedSafetyCatchForJOINClauseSQL]
(
@StagingTableSchema sysname
,
@StagingTableName sysname
)
RETURNS nvarchar( max )
AS
/*+ Version alpha-0.1.0.980 20141005.170751 -------------------------------------------------------------- 
Scalar Function [bib].[GenerateDeletedSafetyCatchForJOINClauseSQL]

Generates the SQL that checks records being loaded into the dimension
are not deleted - provided there is a column flagged as indicating soft deletion.
-- -----------------------------------------------------------+*/
BEGIN
    
    DECLARE @StagingColumns nvarchar( max )

    
    SELECT @StagingColumns = ''AND  src.[''+ ColumnDefinitions.StagingColumnName +''] = 0
''
           FROM bib.ColumnDefinitions
           WHERE
           ColumnDefinitions.StagingTableSchema = @StagingTableSchema
       AND ColumnDefinitions.StagingTableName = @StagingTableName
	  AND
		  IsDeletedFlag   = 1 
	  ORDER BY ColumnDefinitions.OrdinalPosition ASC

   
    RETURN ISNULL(@StagingColumns, '''')

END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateHandleDeletedRecordsSQL]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[GenerateHandleDeletedRecordsSQL]

( @StagingTableSchema sysname
, @StagingTableName sysname
, @ExecuteGeneratedScript bit = 0
)
RETURNS  nvarchar(MAX)
AS
/*+ Version alpha-0.1.0.984 20141005.170752 -------------------------------------------------------------- 
Scalar Function [bib].[GenerateHandleDeletedRecordsSQL]

Generates the SQL for the stored procedure that will handle the deletion of records from the dimension
-- -----------------------------------------------------------+*/
BEGIN
DECLARE  @DimensionTableName nvarchar(50)
DECLARE  @DimensionTableSchema nvarchar(50)
DECLARE  @DropScriptSQL nvarchar(MAX)
DECLARE  @ProcScriptSQL nvarchar(MAX)

SELECT @DimensionTableName =	  RelatedDimensionTableName
       ,
       @DimensionTableSchema =  RelatedDimensionTableSchema
       FROM bib.TableDefinitions
       WHERE
       StagingTableSchema =    @StagingTableSchema
   AND StagingTableName =	    @StagingTableName
    DECLARE  @DeletionFlagColumn nvarchar(255)

    IF EXISTS(
			 SELECT 1 FROM [bib].[ColumnDefinitions]
						   WHERE
					  ColumnDefinitions.StagingTableSchema =  @StagingTableSchema
				   AND ColumnDefinitions.StagingTableName = @StagingTableName
				   AND
				    StagingColumnName LIKE ''%delete%''
				   AND
				    DataType like ''%bit%''    
    
		  )
    BEGIN
		  SELECT  @DeletionFlagColumn = StagingColumnName
			    FROM bib.ColumnDefinitions
			    WHERE
			    ColumnDefinitions.StagingTableSchema = @StagingTableSchema
			AND ColumnDefinitions.StagingTableName = @StagingTableName
			AND StagingColumnName LIKE ''%delete%''
			AND DataType LIKE ''%bit%''   
			
		  SET @ProcScriptSQL = ''
CREATE PROCEDURE [''+@DimensionTableSchema+''].[Load_'' +@DimensionTableName+''_HandleDeletedRecords]
(@Batch_Id bigint)
AS
BEGIN
    DECLARE @Message nvarchar( 255 )
    DECLARE @RecordsAffected int
    DECLARE @Success bit
    DECLARE @ErrorCode int 
    DECLARE @Step_ID bigint  
    DECLARE @ETLLoadStatus_Id int 
    
    SET @ETLLoadStatus_Id = 4 

     EXECUTE @Step_Id = [etl].[AddETLBatchStepStatus] @Batch_ID , @ETLLoadStatus_Id , ''''Deleting flagged records from dimension'''' , NULL;
    BEGIN TRY 

		  ;WITH StagedDeletedRecords AS
		  (
			 SELECT
			 ''+@DimensionTableName+''_DID
				   FROM
					   [''+@StagingTableSchema+''].[''+@StagingTableName+''] src
					   INNER JOIN [''+@DimensionTableSchema+''].[''+@DimensionTableName+''] dest 
						  ON 
							 ''+ [bib].[GenerateInsertJOINClauseSQL](@StagingTableSchema,@StagingTableName) +''
				   WHERE
				   src.''+@DeletionFlagColumn+''  = 1
				   AND
				   src.[DataState_Id] = 1
				   AND
				   src.ETLBatch_Id = @Batch_Id     
		  )
		  DELETE FROM [''+@DimensionTableSchema+''].[''+@DimensionTableName+'']
			WHERE		 ''+@DimensionTableName+''_DID IN
			( SELECT ''+@DimensionTableName+''_DID
				    FROM StagedDeletedRecords )
				    
 
	
		  -- SUCCESS LOGGING -------------------------------------------------
		  SET @RecordsAffected = @@ROWCOUNT
		  SET @Message = ''''Deleting flagged records succeeded''''
		  SET @Success = 1
		  SET @ErrorCode = NULL 
		  
		  UPDATE  [''+@StagingTableSchema+''].[''+@StagingTableName+'']
		  SET DataState_Id = 2
		  FROM   [''+@StagingTableSchema+''].[''+@StagingTableName+'']
				   WHERE
				   [''+@DeletionFlagColumn+'']  = 1
				   AND
				   [DataState_Id] = 1
				   AND
				   ETLBatch_Id = @Batch_Id    

		  EXECUTE [ETL].[UpdateETLBatchStepStatus]
			 @Step_Id
		  , @ETLLoadStatus_Id
		  , @Message
		  , @RecordsAffected
		  , @Success
		  , @ErrorCode
		  --------------------------------------------------------------------
	   END TRY
	   BEGIN CATCH

		  -- FAILURE LOGGING -------------------------------------------------		  	  
		  SET @RecordsAffected = -1
		  SET @Message = ERROR_MESSAGE()
		  SET @Success = 0
		  SET @ErrorCode = ERROR_NUMBER()
		  
		  EXECUTE [ETL].[UpdateETLBatchStepStatus]
					   @Step_Id
				    , @ETLLoadStatus_Id
				    , @Message
				    , @RecordsAffected
				    , @Success
				    , @ErrorCode   ;
		  --------------------------------------------------------------------

		 RAISERROR(@Message, 16, 1);
	   END CATCH
END	  
		  
''		  			 		  
    END
    ELSE
    BEGIN
	   -- There is no column flagged as a deleted record flag
	    SET @ProcScriptSQL = ''
CREATE PROCEDURE [''+@DimensionTableSchema+''].[Load_'' +@DimensionTableName+''_HandleDeletedRecords]
(@Batch_Id bigint)
AS
BEGIN

    /* ===================================================================================================================
     BI BUILDER COULD NOT DETECT A COLUMN IN [''+@StagingTableSchema+''].[''+@StagingTableName+''] 
	TO USE FOR GENERATING DELETION LOGIC.

	This procedure is currently a placeholder awaiting development of a mechanism to delete records from the dimension.

     There is no column in the [''+@StagingTableSchema+''].[''+@StagingTableName+''] table
     that could be detected through metadata as a "Deleted Record Flag" field.

     Note: Detection takes place in the following stored procedure:
     EXECUTE [bib].[FlagDeletedBitFieldInStagingTable]	''''''+@StagingTableSchema+'''''',''''''+@StagingTableName+''''''

	You can modify that routine so it does detect the column(s) commonly used in your data sources to mark deleted records.
    
     If there is no column to mark deleted records in the  [''+@StagingTableSchema+''].[''+@StagingTableName+''] table,
     you will need to develop a strategy to remove deleted records from the 
     dimension table [''+@DimensionTableSchema+''].[''+@DimensionTableName+''].

	That might involve downloading all non-deleted keys from the source system and comparing that list
	to the keys you are storing in the data warehouse.

     You may not need to delete records at all - it depends of course on the nature of the source system. 
	If the source table has a column to flag soft deletes and you simply want to pass those records 
	through intact to the dimension, that should happen when you run the [bib][Main] routine to build the ETL.

     You may also have requirements to store deleted records as soft deletes in the dimension with a 
     view to report on those separately.
     This could be the case if the DWH is used for fraud detection of if the definition of "deleted record" in your requirements is different
     to "a record that should no longer be in the dimension at all".
    --=================================================================================================================== */

    PRINT '''' ** Development Note: -------------------------------------------------------------------------------
This procedure  [''+@DimensionTableSchema+''].[Load_'' +@DimensionTableName+''_HandleDeletedRecords] is currently 
a placeholder awaiting development of a system to delete records from the dimension.

Look at the notes inside this placeholder procedure.
----------------------------------------------------------------------------------------------------------
''''

END 
''
    END
    
    RETURN @ProcScriptSQL
END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateInsertJOINClauseSQL]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [BIB].[GenerateInsertJOINClauseSQL]
(
@StagingTableSchema sysname
,
@StagingTableName sysname
)
RETURNS nvarchar( max )
AS
/*+ Version alpha-0.1.0.988 20141005.170752 -------------------------------------------------------------- 
Scalar Function [bib].[GenerateInsertJOINClauseSQL]

Generates the SQL for the join clause on the insert statement within the Dimension load
-- -----------------------------------------------------------+*/
BEGIN
    
    DECLARE @StagingColumns nvarchar( max )

    
    SELECT @StagingColumns = ISNULL( @StagingColumns + ''
						  AND '' , '''' ) + ''dest.[''+ ColumnDefinitions.DimensionColumnName +''] =  src.[''+ ColumnDefinitions.StagingColumnName +'']''
           FROM bib.ColumnDefinitions
           WHERE
           ColumnDefinitions.StagingTableSchema = @StagingTableSchema
       AND ColumnDefinitions.StagingTableName = @StagingTableName
	  AND
		  (IsBusinessKey  = 1 OR UseColumnForSCD = 1)
	   AND	  OrdinalPosition > 1
	  ORDER BY ColumnDefinitions.OrdinalPosition ASC

   
    RETURN ISNULL(@StagingColumns, '''')

END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateInsertOfNewRecordsSQLForDimensionLoad]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[GenerateInsertOfNewRecordsSQLForDimensionLoad]
( @StagingTableSchema sysname
, @StagingTableName sysname
, @ExecuteGeneratedScript bit = 0
)
RETURNS  nvarchar(MAX)
AS
/*+ Version alpha-0.1.0.992 20141005.170752 -------------------------------------------------------------- 
Scalar Function  [bib].[GenerateInsertOfNewRecordsSQLForDimensionLoad]

Generates the SQL for loading new records into the dimension
-- -----------------------------------------------------------+*/
BEGIN
DECLARE  @DimensionTableName nvarchar(50)
DECLARE  @DimensionTableSchema nvarchar(50)
DECLARE  @DropScriptSQL nvarchar(MAX)
DECLARE  @DefaultValuesScriptSQL nvarchar(MAX)
DECLARE  @ProcScriptSQL nvarchar(MAX)
DECLARE  @DeletionFlagColumnName nvarchar(50)

SELECT @DimensionTableName =	  RelatedDimensionTableName
       ,
       @DimensionTableSchema =  RelatedDimensionTableSchema
       FROM bib.TableDefinitions
       WHERE
       StagingTableSchema =    @StagingTableSchema
   AND StagingTableName =	    @StagingTableName

   SET @DeletionFlagColumnName = NULL

 SELECT TOP 1 @DeletionFlagColumnName =  ColumnDefinitions.StagingColumnName 
           FROM bib.ColumnDefinitions
           WHERE
           ColumnDefinitions.StagingTableSchema = @StagingTableSchema
       AND ColumnDefinitions.StagingTableName = @StagingTableName
	  AND
		  IsDeletedFlag   = 1 

SET @ProcScriptSQL =''

				INSERT INTO [''+@DimensionTableSchema+''].['' + @DimensionTableName + ''](
					  ''+ [bib].[CommaListOfNonNullableDimensionColumns](@StagingTableSchema, @StagingTableName) + ''
					  ,[DataState_Id]
				)

				SELECT 
					  ''+ [bib].[CommaValuesListOfNonNullableStagingColumns](@StagingTableSchema, @StagingTableName) + ''
					  , 4
				FROM
					   [''+@StagingTableSchema+''].['' + @StagingTableName + '']

				WHERE 				
				    [''+@StagingTableSchema+''].['' + @StagingTableName + ''].[ETLBatch_Id] = @Batch_ID
				   ''+ISNULL('' AND
				   [''+@StagingTableSchema+''].['' + @StagingTableName + ''].[''+@DeletionFlagColumnName+''] = 0'','''') +''
				    AND
				    [''+@StagingTableSchema+''].['' + @StagingTableName + ''].[Staging_ID] NOT IN 
					(
						SELECT src.[Staging_ID]
						FROM [''+@StagingTableSchema+''].['' + @StagingTableName + ''] src
						INNER JOIN [''+@DimensionTableSchema+''].['' + @DimensionTableName + ''] dest 
						ON ''+[bib].[GenerateInsertJOINClauseSQL](@StagingTableSchema, @StagingTableName)+''
						WHERE
						    src.[ETLBatch_Id] = @Batch_ID		
						    AND
						    src.[DataState_Id] = 1
						    ''+	[bib].[GenerateDeletedSafetyCatchForJOINClauseSQL](@StagingTableSchema, @StagingTableName)+''
	)

''

RETURN @ProcScriptSQL

END


' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateManualLoadTestingProcedure]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
 
CREATE FUNCTION [BIB].[GenerateManualLoadTestingProcedure]
(
  @ModelSchemaName nvarchar(255),
  @ModelTableName nvarchar(255),
  @StagingTableSchema sysname,
  @StagingTableName sysname
)
RETURNS nvarchar(MAX)
AS
/*+ Version alpha-0.1.0.996 20141005.170752 -------------------------------------------------------------- 
Scalar Function [bib].[GenerateManualLoadTestingProcedure]

When you generate the stored procedure that drives the ETL, the
header contains a set of testing routines. 

This is the procedure that generates the stored procedure underlying those test routines.
-- -----------------------------------------------------------+*/
BEGIN

    DECLARE @RelatedDimensionTableSchema sysname
    DECLARE @RelatedDimensionTableName sysname
    DECLARE @RelatedDimensionTableFileGroup sysname

    SELECT
		@RelatedDimensionTableName	=	RelatedDimensionTableName
	    , @RelatedDimensionTableSchema	=	RelatedDimensionTableSchema
	    , @RelatedDimensionTableFileGroup	=	RelatedDimensionTableFileGroup
    FROM bib.TableDefinitions 
    WHERE 
    StagingTableSchema = @StagingTableSchema
    AND 
    StagingTableName = @StagingTableName 

    DECLARE @SQL nvarchar(MAX)

    SET @SQL =  [bib].[GenerateDebuggingScriptForDimension](@StagingTableSchema,  @StagingTableName) +''

    CREATE PROCEDURE [''+@RelatedDimensionTableSchema+''].[Load_''+@RelatedDimensionTableName+''_ManualTesting]
    (@ClearETLLogs bit = 0
    ,@TruncateDimensionTable bit = 0
    ,@ResetStagedData bit = 1
    ,@ExecuteLoad bit =1
    ,@DisplayLogs bit = 1)
    AS
    BEGIN

    SET NOCOUNT ON

    IF @ClearETLLogs = 1
    BEGIN 
	 DELETE FROM [ETL].[ETL_Batch_Details] 
	   WHERE ETL_Batch_Log_Id IN 
	   (SELECT ETL_Batch_Log_Id FROM  [ETL].[ETL_Batch_Logs] WHERE Process_Name = ''''[''+@RelatedDimensionTableSchema+''].[Load_''+@RelatedDimensionTableName+'']'''')

	 DELETE FROM  [ETL].[ETL_Batch_Logs] WHERE Process_Name = ''''[''+@RelatedDimensionTableSchema+''].[Load_''+@RelatedDimensionTableName+'']''''
    END

    IF @TruncateDimensionTable = 1
    BEGIN
	 TRUNCATE TABLE	     [''+@RelatedDimensionTableSchema+''].[''+@RelatedDimensionTableName+'']
    END

    IF @ResetStagedData = 1 
    BEGIN

    ''+
	[bib].[GenerateDataCopyFromModelToStagingForManualTesting] (@ModelSchemaName, @ModelTableName, @StagingTableSchema,  @StagingTableName)
    + ''
    END

    IF @ExecuteLoad = 1 
    BEGIN
	   EXECUTE   [''+@RelatedDimensionTableSchema+''].[Load_''+@RelatedDimensionTableName+'']
    END

    IF @DisplayLogs = 1 
    BEGIN 
	   SELECT        
		  TOP (100) PERCENT 	 
			ETL.ETL_Batch_Logs.ETL_Batch_Log_Id
		   , ETL.ETL_Batch_Details.ETL_Batch_Details_Id
		   , ETL.ETL_Batch_Logs.Process_Name
		   , ETL.ETL_Batch_Logs.Start_Time
		   , ETL.ETL_Batch_Details.ETLLoadStatus_Id
		   , ETL.ETL_Batch_Details.End_Time
		   , ETL.ETL_Batch_Details.Run_Duration
		   , ETL.ETL_Batch_Details.Duration
		   , ETL.ETL_Batch_Details.Success_Flag
		   , ETL.ETL_Batch_Details.Error_Code
		   , ETL.ETL_Batch_Details.RecordsAffected
		   , ETL.ETL_Batch_Details.Message
	   FROM            ETL.ETL_Batch_Logs INNER JOIN
						   ETL.ETL_Batch_Details ON ETL.ETL_Batch_Logs.ETL_Batch_Log_Id = ETL.ETL_Batch_Details.ETL_Batch_Log_Id
	   WHERE        (ETL.ETL_Batch_Logs.Process_Name = ''''[''+@RelatedDimensionTableSchema+''].[Load_''+@RelatedDimensionTableName+'']'''')
	   ORDER BY ETL.ETL_Batch_Logs.Start_Time DESC, ETL.ETL_Batch_Logs.ETL_Batch_Log_Id DESC, ETL.ETL_Batch_Details.ETL_Batch_Details_Id DESC 
    END

    END
    ''
	 RETURN  @SQL
END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateMetadataEditingScript]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION  [BIB].[GenerateMetadataEditingScript]
(
  @StagingSchemaName sysname
, @StagingTableName sysname
)
RETURNS nvarchar(MAX)
AS
/*+ Version alpha-0.1.0.1000 20141005.170752 -------------------------------------------------------------- 
Scalar Function [bib].[GenerateMetadataEditingScript]

You have the option of running the Main routine so it pauses after it has
collected the metadata it will use to build the dimension table and ETL stored procedures.

If you choose that option, part of the output will be a script that makes editing the metadata easier.

This is the routine that generates that script.
-- -----------------------------------------------------------+*/
BEGIN
	
	DECLARE	 @MetadataEditingScript nvarchar(MAX)
	SET		 @MetadataEditingScript = ''
	
-- ################################################################################################################
	
	-- SCRIPT TO MANUALLY EDIT THE METADATA FOR THE STAGING TABLE [''+@StagingSchemaName+''].[''+@StagingTableName+'']
	
	-- You edit this to suit and then continue the ETL build using the [bib].[Main] stored procedure
	
	-- You can protect your changes by running [bib].[Main] with the parameter @UseCurrentMetadataForBuild = 1 
	
	-- (When @UseCurrentMetadataForBuild = 0, it will overwrite any metadata changes made manually)

	-- ######################################################################################################
''

SELECT @MetadataEditingScript = @MetadataEditingScript + ''
-- UPDATE METADATA FOR STAGING COLUMN: 
--       ''+StagingColumnName +''

UPDATE [bib].[ColumnDefinitions]
   SET
       [DataType] = ''''''+DataType+''''''
      ,[CharacterMaximumLength] = ''+LTRIM(ISNULL(CharacterMaximumLength,0))+''
      ,[DimensionColumnName] = ''''''+LTRIM(DimensionColumnName)+''''''
      ,[DimensionDataType] = ''''''+ISNULL(LTRIM(DimensionDataType),''NULL'')+''''''
	 ,[DimensionDataTypeLength] =  ''+ISNULL(LTRIM(DimensionDataTypeLength),''NULL'')+''
      ,[CustomTypeConversionExpression] =   ''+LTRIM(ISNULL(CustomTypeConversionExpression,''NULL''))+''
      ,[IncludeInDWH] =   ''+LTRIM(IncludeInDWH)+''
      ,[UseColumnForSCD] =   ''+LTRIM(ISNULL(UseColumnForSCD,0))+''
      ,[IsBusinessKey] =  ''+LTRIM(ISNULL(IsBusinessKey,0))+''
      ,[IsDataCaptureDateTime] =   ''+LTRIM(ISNULL(IsDataCaptureDateTime,0))+''
      ,[IsDeletedFlag] =  ''+LTRIM(ISNULL(IsDeletedFlag,0))+''
FROM
	   [bib].[ColumnDefinitions]
	   WHERE 
		StagingTableSchema = ''''''+@StagingSchemaName+''''''
		AND
		StagingTableName = ''''''+ @StagingTableName + ''''''
		AND
		StagingColumnName = ''''''+ [StagingColumnName] + ''''''
      
''
FROM
	   [bib].[ColumnDefinitions]
	   WHERE 
		StagingTableSchema = @StagingSchemaName
		AND
		StagingTableName = @StagingTableName

	RETURN @MetadataEditingScript
END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateOverwriteSafetyCatchForUpdateSQL]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[GenerateOverwriteSafetyCatchForUpdateSQL]
(
@StagingTableSchema sysname
,
@StagingTableName sysname
)
RETURNS nvarchar( max )
AS
/*+ Version alpha-0.1.0.1004 20141005.170752 -------------------------------------------------------------- 
Scalar Function [bib].[GenerateOverwriteSafetyCatchForUpdateSQL]

Generates the SQL that is executed within the ETL to ensure old records
are not overwriting newer ones - provided there is a field flagged
as being the record''s modified date.
-- -----------------------------------------------------------+*/
BEGIN
    
    DECLARE @StagingColumns nvarchar( max )

    IF EXISTS (SELECT 1 FROM [bib].[ColumnDefinitions] 
			 WHERE  
           ColumnDefinitions.StagingTableSchema = @StagingTableSchema
       AND ColumnDefinitions.StagingTableName = @StagingTableName
			 AND IsDataCaptureDateTime = 1)
    BEGIN

    SELECT @StagingColumns = 
     CASE
			 WHEN CustomTypeConversionExpression IS NULL THEN					   
					    ''dest.[''+ ColumnDefinitions.DimensionColumnName  +''] <=  src.[''+ ColumnDefinitions.StagingColumnName +'']''
			 ELSE
				''dest.[''+ ColumnDefinitions.DimensionColumnName  +''] <=  ''+REPLACE(CustomTypeConversionExpression ,''<COLUMN>'',''src.[''+ ColumnDefinitions.StagingColumnName +'']'')
		  END -- CASE
              FROM bib.ColumnDefinitions
           WHERE
           ColumnDefinitions.StagingTableSchema = @StagingTableSchema
       AND ColumnDefinitions.StagingTableName = @StagingTableName
	  AND
		  IsDataCaptureDateTime   = 1
    END

   
    RETURN ISNULL(@StagingColumns + '' AND '', '''')

END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GeneratePrimaryKeyDROPClause]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[GeneratePrimaryKeyDROPClause]
(@SchemaName sysname, @StagingTableName sysname)
RETURNS nvarchar(MAX)
AS
/*+ Version alpha-0.1.0.1008 20141005.170752 -------------------------------------------------------------- 
Scalar Function [bib].[GeneratePrimaryKeyDROPClause]

Generates the SQL that is executed within the ETL build process to 
drop the primary key on the staging table.
-- -----------------------------------------------------------+*/
BEGIN

DECLARE @SQL nvarchar(MAX)
SET @SQL = ''''

                         
    SELECT @SQL = ''ALTER TABLE [''+@SchemaName+''].[''+@StagingTableName+'']
    DROP CONSTRAINT [''+ ind.name +'']
''
    FROM            sys.tables AS ta INNER JOIN
    sys.indexes AS ind ON ind.object_id = ta.object_id INNER JOIN
    sys.index_columns AS indcol ON indcol.object_id = ta.object_id AND indcol.index_id = ind.index_id INNER JOIN
    sys.columns AS col ON col.object_id = ta.object_id AND col.column_id = indcol.column_id 
    INNER JOIN
    sys.schemas ON ta.schema_id = sys.schemas.schema_id   
	   AND ta.name = @StagingTableName  
	   AND sys.schemas.name =  @SchemaName 
RETURN @SQL
END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateSCDCurrentRecordClauseSQL]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[GenerateSCDCurrentRecordClauseSQL]
(
@StagingTableSchema sysname
,
@StagingTableName sysname
)
RETURNS nvarchar( max )
AS
/*+ Version alpha-0.1.0.1012 20141005.170752 -------------------------------------------------------------- 
Scalar Function [bib].[GenerateSCDCurrentRecordClauseSQL]

Generates the SQL that handles the SCD functionality within 
the generated dimension loading ETL stored prodcedures.
-- -----------------------------------------------------------+*/
BEGIN

   DECLARE @SCDUpdateClause nvarchar( max )

    SET @SCDUpdateClause = ''''
    
    IF [bib].[TableIsSCD] (@StagingTableSchema, @StagingTableName) = 1
    BEGIN
    DECLARE  @DimensionTableSchema nvarchar(50)
    DECLARE  @DimensionTableName nvarchar(50)

    SELECT @DimensionTableName =	  RelatedDimensionTableName
		 ,
		 @DimensionTableSchema =  RelatedDimensionTableSchema
		 FROM bib.TableDefinitions
		 WHERE
		 StagingTableSchema =    @StagingTableSchema
	  AND StagingTableName =	    @StagingTableName

     SET @SCDUpdateClause = 
''			 -- Dimension is SCD type 2 - must zero out active flags from superceeded records
			 ;WITH MostRecentlyUpdated AS
			 (
			 SELECT        
				  ''+[bib].[CommaListOfBusinessKeyDimensionColumns](@StagingTableSchema,@StagingTableName)+''
				 , MAX ( EffectiveStart )  AS EffectiveStart
			 FROM  [''+@DimensionTableSchema+''].[''+@DimensionTableName+'']
			 WHERE  ActiveRecord = 1 AND DataState_Id = 5
			 GROUP BY 
				 ''+[BIB].[CommaListOfBusinessKeys](@StagingTableSchema,@StagingTableName)+'' 
			 )
			 UPDATE  [''+@DimensionTableSchema+''].[''+@DimensionTableName+'']
			 SET	   ActiveRecord = 0
			 FROM  [''+@DimensionTableSchema+''].[''+@DimensionTableName+'']
			 WHERE 
			 [''+@DimensionTableSchema+''].[''+@DimensionTableName+''].[''+@DimensionTableName+''_did] > -1
			 AND
			 [''+@DimensionTableSchema+''].[''+@DimensionTableName+''].ActiveRecord = 1 AND [''+@DimensionTableSchema+''].[''+@DimensionTableName+''].DataState_Id = 5
			 AND
			 [''+@DimensionTableSchema+''].[''+@DimensionTableName+''].[''+@DimensionTableName+''_did] NOT IN
			 (SELECT [''+@DimensionTableSchema+''].[''+@DimensionTableName+''].[''+@DimensionTableName+''_did]
			 FROM  [''+@DimensionTableSchema+''].[''+@DimensionTableName+'']
			 INNER JOIN MostRecentlyUpdated ON 
				MostRecentlyUpdated.EffectiveStart = [''+@DimensionTableSchema+''].[''+@DimensionTableName+''].EffectiveStart 
				AND
				''+[BIB].[GenerateSCDSQLClauseForDeactivatingRecords](@StagingTableSchema,@StagingTableName) + ''
			 )

			 -- then set effective finish for records superceeded in this batch
			 
			 ;WITH ActiveSCDRecords AS
			 (
			 SELECT        
				   ''+[BIB].[CommaListOfBusinessKeys](@StagingTableSchema,@StagingTableName)+'' 
				 , MAX ( EffectiveStart )  AS EffectiveStart
			 FROM   [''+@DimensionTableSchema+''].[''+@DimensionTableName+'']
			 WHERE  ActiveRecord = 1 AND DataState_Id = 5
			 GROUP BY 
				 ''+[BIB].[CommaListOfBusinessKeys](@StagingTableSchema,@StagingTableName)+'' 

			 )
			 UPDATE   [''+@DimensionTableSchema+''].[''+@DimensionTableName+'']
			 SET	   EffectiveFinish = DATEADD(ms, -1, ActiveSCDRecords.EffectiveStart)
			 FROM   [''+@DimensionTableSchema+''].[''+@DimensionTableName+'']
			  INNER JOIN ActiveSCDRecords ON 				
				''+[BIB].[GenerateSCDSQLClauseForActivateRecords](@StagingTableSchema,@StagingTableName) + ''
			 WHERE 
			  [''+@DimensionTableSchema+''].[''+@DimensionTableName+''].[''+@DimensionTableName+''_did] > -1
			 AND
			  [''+@DimensionTableSchema+''].[''+@DimensionTableName+''].ActiveRecord = 0
			 AND
			  [''+@DimensionTableSchema+''].[''+@DimensionTableName+''].EffectiveFinish IS NULL			  
			 AND  [''+@DimensionTableSchema+''].[''+@DimensionTableName+''].DataState_Id = 5
''

END

    RETURN ISNULL(@SCDUpdateClause, '''')

END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateSCDSQLClauseForActivateRecords]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
--SELECT [BIB].[GenerateSCDSQLClauseForActivateRecords](''Example_Staging'', ''SCDExample_Table'')

CREATE FUNCTION [BIB].[GenerateSCDSQLClauseForActivateRecords]
(
@StagingTableSchema sysname
,
@StagingTableName sysname
)
RETURNS nvarchar( max )
AS
/*+ Version alpha-0.1.0.934 20141005.170750 -------------------------------------------------------------- 
Scalar Function [bib].[CommaListOfBusinessKeys]

Returns a comma-delimited list of all columns that are considered part of the business
key for the staging table.
-- -----------------------------------------------------------+*/
BEGIN
    
    DECLARE @BusinessKeyColumns nvarchar( max )
    DECLARE @DimensionTableName sysname
    DECLARE @DimensionTableSchema sysname

    SELECT @DimensionTableName =	  RelatedDimensionTableName
       ,
       @DimensionTableSchema =  RelatedDimensionTableSchema
      
FROM bib.TableDefinitions
       WHERE
       StagingTableSchema =    @StagingTableSchema
   AND StagingTableName =	    @StagingTableName
    
    SELECT @BusinessKeyColumns = ISNULL( @BusinessKeyColumns + ''
AND
'' , '''' ) + 
''	ActiveSCDRecords.''+DimensionColumnName  +'' =  [''+@DimensionTableSchema+''].[''+@DimensionTableName+''].[''+DimensionColumnName +'']''

           FROM bib.ColumnDefinitions
           WHERE
           ColumnDefinitions.StagingTableSchema = @StagingTableSchema
       AND ColumnDefinitions.StagingTableName = @StagingTableName
	  AND
		 IsBusinessKey = 1 
		  AND IncludeInDWH = 1

    AND	  OrdinalPosition > 1
    AND
		   [StagingColumnName] NOT IN (''Staging_Id'',   ''DataState_Id'' )
	  ORDER BY ColumnDefinitions.OrdinalPosition ASC

   
    RETURN ISNULL(@BusinessKeyColumns, '''')

END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateSCDSQLClauseForDeactivatingRecords]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
--SELECT [BIB].[GenerateSCDSQLClauseForDeactivatingRecords](''Example_Staging'', ''SCDExample_Table'')

CREATE FUNCTION [BIB].[GenerateSCDSQLClauseForDeactivatingRecords]
(
@StagingTableSchema sysname
,
@StagingTableName sysname
)
RETURNS nvarchar( max )
AS
/*+ Version alpha-0.1.0.934 20141005.170750 -------------------------------------------------------------- 
Scalar Function [bib].[CommaListOfBusinessKeys]

Returns a comma-delimited list of all columns that are considered part of the business
key for the staging table.
-- -----------------------------------------------------------+*/
BEGIN
    
    DECLARE @BusinessKeyColumns nvarchar( max )
    DECLARE @DimensionTableName sysname
    DECLARE @DimensionTableSchema sysname

    SELECT @DimensionTableName =	  RelatedDimensionTableName
       ,
       @DimensionTableSchema =  RelatedDimensionTableSchema
      
FROM bib.TableDefinitions
       WHERE
       StagingTableSchema =    @StagingTableSchema
   AND StagingTableName =	    @StagingTableName

    
    SELECT @BusinessKeyColumns = ISNULL( @BusinessKeyColumns + ''
AND
'' , '''' ) + 
''	MostRecentlyUpdated.''+DimensionColumnName  +'' =  [''+@DimensionTableSchema+''].[''+@DimensionTableName+''].[''+DimensionColumnName +'']''

           FROM bib.ColumnDefinitions
           WHERE
           ColumnDefinitions.StagingTableSchema = @StagingTableSchema
       AND ColumnDefinitions.StagingTableName = @StagingTableName
	  AND
		 IsBusinessKey = 1 
		  AND IncludeInDWH = 1

    AND	  OrdinalPosition > 1
    AND
		   [StagingColumnName] NOT IN (''Staging_Id'',   ''DataState_Id'' )
	  ORDER BY ColumnDefinitions.OrdinalPosition ASC

   
    RETURN ISNULL(@BusinessKeyColumns, '''')

END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateStagingLoadCandidateFlaggingRoutine]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[GenerateStagingLoadCandidateFlaggingRoutine]

( @StagingTableSchema sysname
, @StagingTableName sysname
, @ExecuteScript bit = 0
)
RETURNS nvarchar(MAX)
AS
/*+ Version alpha-0.1.0.1016 20141005.170752 -------------------------------------------------------------- 
Scalar Function [bib].[GenerateStagingLoadCandidateFlaggingRoutine]

Generates the SQL for the stored procedure that flags staged records
for loading in the current ETL batch.
-- -----------------------------------------------------------+*/
BEGIN

DECLARE @SQL nvarchar(MAX)

DECLARE  @DimensionTableName nvarchar(50)
DECLARE  @DimensionTableSchema nvarchar(50)
DECLARE  @DropScriptSQL nvarchar(MAX)
DECLARE  @DefaultValuesScriptSQL nvarchar(MAX)
DECLARE  @ProcScriptSQL nvarchar(MAX)
DECLARE  @ETLBatchSize nvarchar(10)

SET @ETLBatchSize = [bib].[DefaultETLBatchSizeFromSettings]()

SELECT @DimensionTableName =	  RelatedDimensionTableName
       ,
       @DimensionTableSchema =  RelatedDimensionTableSchema
      
FROM bib.TableDefinitions
       WHERE
       StagingTableSchema =    @StagingTableSchema
   AND StagingTableName =	    @StagingTableName

SET @SQL = 
''/* -- DEBUGGING UTILITY TO RESET DATA IN STAGING -----------------------------------
UPDATE [''+@StagingTableSchema+''].[''+@StagingTableName+'']
               SET 	 [ETLBatch_Id] = NULL
			, DataState_Id  = NULL 
*/

CREATE PROCEDURE  [''+@DimensionTableSchema+''].[Load_''+@DimensionTableName+''_Flag_Records_For_Loading]
( @Batch_ID bigint )
AS
BEGIN

    BEGIN TRY

	   DECLARE @StepId int
	   DECLARE @ETLLoadStatusId int
	   SET @ETLLoadStatusId = 2    /* = "Identifying Batch Records In Staging"*/
	   DECLARE @Message nvarchar( 255 )
	   DECLARE @RecordsAffected int
	   DECLARE @Success bit
	   DECLARE @ErrorCode int

	   SET @Message = ''''Flagging operation failed''''
	   SET  @RecordsAffected = 0
	   SET @Success = 0
	   SET @ErrorCode = NULL

	   EXECUTE @StepId = [etl].[AddETLBatchStepStatus] @Batch_ID , 2 , ''''Flagging Started ...'''' , NULL;
	    ;WITH CandidateRecords
		  AS (
		  SELECT TOP ''+@ETLBatchSize+'' Staging_ID
			    FROM [''+@StagingTableSchema+''].[''+@StagingTableName+'']
			    WHERE
				[ETLBatch_Id] IS NULL
			    ORDER BY Staging_ID ASC
		  )
		  UPDATE s
		  SET [ETLBatch_Id]	  = @Batch_ID ,
			 [DataState_Id]  = 1
			 FROM ''+@StagingTableSchema+''.''+@StagingTableName+'' s
				 INNER JOIN   CandidateRecords c ON c.Staging_Id = s.Staging_Id

		  SET @RecordsAffected = @@ROWCOUNT

		  SET @Message = ''''Flagging operation succeeded''''
		  SET @Success = 1
		  SET @ErrorCode = NULL    

		  EXECUTE [ETL].[UpdateETLBatchStepStatus]
		  @StepId
		  , @ETLLoadStatusId
		  , @Message
		  , @RecordsAffected
		  , @Success
		  , @ErrorCode

    END TRY
    BEGIN CATCH	 
			 
			 SET @Message = ERROR_MESSAGE()
			 SET @Success = 0
			 SET @ErrorCode = ERROR_NUMBER()    
			 			
			 EXECUTE [ETL].[UpdateETLBatchStepStatus]
			   @StepId
			 , @ETLLoadStatusId
			 , @Message
			 , @RecordsAffected
			 , @Success
			 , @ErrorCode ;
			
			RAISERROR(@Message,16,1)
    END CATCH
END

''

RETURN @SQL

END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateUpdateSQLForDimensionLoad]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
 
CREATE FUNCTION [BIB].[GenerateUpdateSQLForDimensionLoad]
( @StagingTableSchema sysname
, @StagingTableName sysname
, @ExecuteGeneratedScript bit = 0
)
RETURNS  nvarchar(MAX)
AS
/*+ Version alpha-0.1.0.1020 20141005.170752 -------------------------------------------------------------- 
Scalar Function [bib].[GenerateUpdateSQLForDimensionLoad]

Returns the SQL used in the update clause of the generated ETL stored procedure
to load data from staging to the related dimension
-- -----------------------------------------------------------+*/
BEGIN

DECLARE  @DimensionTableName nvarchar(50)
DECLARE  @DimensionTableSchema nvarchar(50)
DECLARE  @DropScriptSQL nvarchar(MAX)
DECLARE  @DefaultValuesScriptSQL nvarchar(MAX)
DECLARE  @ProcScriptSQL nvarchar(MAX)

SELECT @DimensionTableName =	  RelatedDimensionTableName
       ,
       @DimensionTableSchema =  RelatedDimensionTableSchema
       FROM bib.TableDefinitions
       WHERE
       StagingTableSchema =    @StagingTableSchema
   AND StagingTableName =	    @StagingTableName

SET @ProcScriptSQL =''

				    UPDATE dest
					  SET 
						 ''+[bib].[UpdateClauseForNonKeyStagingColumns] (@StagingTableSchema, @StagingTableName) +''
						 , [DataState_Id] = 5
					 FROM 
						  [''+@DimensionTableSchema+''].['' + @DimensionTableName + ''] dest
					 INNER JOIN  [''+@StagingTableSchema+''].['' + @StagingTableName + ''] src  
					 ON  
					 ''+[bib].[GenerateInsertJOINClauseSQL](@StagingTableSchema, @StagingTableName)+''
					   WHERE
					  ''+[bib].[GenerateOverwriteSafetyCatchForUpdateSQL](@StagingTableSchema, @StagingTableName)+''
					  
					   src.[ETLBatch_Id] = @Batch_ID		
					   AND
					   src.DataState_Id = 1
					   ''+	[bib].[GenerateDeletedSafetyCatchForJOINClauseSQL](@StagingTableSchema, @StagingTableName)+''

''
--EXECUTE [bib].[LongPrint] @ProcScriptSQL
RETURN @ProcScriptSQL

END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[MakeDimensionColumnNameFromStagingColumn]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[MakeDimensionColumnNameFromStagingColumn]
(
	@StagingColumnName nvarchar(255), @StagingTableName nvarchar(255) = ''''
)
RETURNS  nvarchar(255)
AS
/*+ Version alpha-0.1.0.1024 20141005.170752 -------------------------------------------------------------- 
Scalar Function [bib].[MakeDimensionColumnNameFromStagingColumn]

This function is where you define the rules you require to
automatically create dimension column names from staging column names.

The current implementation shows a series of examples.
-- -----------------------------------------------------------+*/
BEGIN
	
	DECLARE @DimensionColumnName  nvarchar(255)

	SET @DimensionColumnName = @StagingColumnName
    IF (@StagingColumnName NOT LIKE ''%_Id'')
	    BEGIN
			IF (@DimensionColumnName = ''Name'')
			  BEGIN
				SET @DimensionColumnName = REPLACE(@DimensionColumnName, ''name'', @StagingTableName +''Name'') -- to make a commonly-used column name reveal its context/origin more clearly
			  END

			  -- Here we apply any transformations that may simplify measure or member naming when in the reporting from this system
			  SET @DimensionColumnName = REPLACE(@DimensionColumnName, ''CUST_'', ''Customer_'')
			  SET @DimensionColumnName = REPLACE(@DimensionColumnName, ''_St_'', ''_Start_'')
			  SET @DimensionColumnName = REPLACE(@DimensionColumnName, ''_Dt'', ''_Date'')
			  SET @DimensionColumnName = REPLACE(@DimensionColumnName, ''__c'', '''') -- to get rid of the Salesforce naming convention for custom tables, the  "__c" postfix
			  SET @DimensionColumnName = REPLACE(@DimensionColumnName, ''rowguid'', @StagingTableName +''_GUID'') -- to make a commonly-used column name reveal its context/origin more clearly

			  -- This line changes names such as "ClassGroup" to "Class_Group"
				SET @DimensionColumnName = bib.UnderscorePascal(@DimensionColumnName)
		  
			  WHILE CHARINDEX(''__'', @DimensionColumnName, 1) > 0
			  BEGIN
				SET @DimensionColumnName = REPLACE(@DimensionColumnName,''__'',''_'')
			  END

			   SET @DimensionColumnName = REPLACE(@DimensionColumnName,''_ID'',''_Id'')
	    END 	

	RETURN @DimensionColumnName
END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[MakeDimensionDataTypeFromStagingColumn]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[MakeDimensionDataTypeFromStagingColumn]
(
	@StagingColumnName nvarchar(255), @StagingDataType nvarchar(255), @CharacterMaximumLength int
)
RETURNS  nvarchar(255)
AS
/*+ Version alpha-0.1.0.1028 20141005.170752 -------------------------------------------------------------- 
Scalar Function [bib].[MakeDimensionDataTypeFromStagingColumn]

Here is where you apply any type transformations to the column in the dimension
		
Ideally, you should get your types sorted out in the initial staging table 
so you can be alerted to violated type assumptions when loading the staging table from source
rather than breaking the dimension load later on
If you sort these types in the staging table before you build the dimensions using BI Builder
the types you define in staging will flow through the the definition of the dimension table 

However, there might be some restrictions on the ETL process loading you dimension tables that restrict the types you can use
to non-ideal types, in which case you would define your preferred types in the ColumnDefinitions.DimensionDataType field
before building the dimension in BI Builder.

for example, you might want to convert all varchars to nvarchars because you know an upcoming data source will
arrive with strings expressed using unicode character sets

-- -----------------------------------------------------------+*/
BEGIN
	
	DECLARE @DimensionColumnDataType  nvarchar(255)

	SET @DimensionColumnDataType = @StagingDataType

	-- EXAMPLE ONLY ==================================================================================================

	IF (@StagingDataType IN (''varchar''))
	BEGIN
	   SET @DimensionColumnDataType = ''nvarchar''
	END

	IF (@StagingDataType IN (''text''))
	BEGIN
	   SET @DimensionColumnDataType = ''nvarchar''
	END

	
	RETURN @DimensionColumnDataType

END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[MakeDimensionDataTypeLengthFromStagingColumn]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[MakeDimensionDataTypeLengthFromStagingColumn]
(
	@StagingColumnName nvarchar(255), @StagingDataType nvarchar(255), @CharacterMaximumLength int
)
RETURNS  int
AS
/*+ Version alpha-0.1.0.1032 20141005.170752 -------------------------------------------------------------- 
Scalar Function [bib].[MakeDimensionDataTypeLengthFromStagingColumn]

Here is where you apply any type length transformations to the column in the dimension
		
Ideally, you should get your types sorted out in the initial staging table 
so you can be alerted to violated type assumptions when loading the staging table from source
rather than breaking the dimension load later on
If you sort these types in the staging table before you build the dimensions using BI Builder
the types you define in staging will flow through the the definition of the dimension table 

However, there might be some restrictions on the ETL process loading you dimension tables that restrict the types you can use
to non-ideal types, in which case you would define your preferred types in the ColumnDefinitions.DimensionDataType field.

for example, you might want to standardise the length of strings so you are not dealing with hundreds of custom lengths
You might also want to pad out string lengths if you suspect that minor changes in source systems (such as the expansion of a First_Name field)
might break loads even though the actual change is trivial in terms of business rules

You will notice that the routine pads out string-type fields to allow for downstream augmentation of text. 
For example, imagine you have a char(1) field in the staging table for "Gender" and it has values that can only be "m" or "f" or NULL.
In the DWH reports, you might want to display text instead that idicates to the report user what NULL actually means - it could be something like "Not Available" or "N/A"
indicating that the person has a Gender but we do not know what it is.

By padding the string lengths out, we can hopefully avoid a lot of "binary truncation" errors in the ETL, errors that may well have no significance in terms of reporting requirements.

-- -----------------------------------------------------------+*/
BEGIN
	
	DECLARE @DimensionColumnDataTypeLength  int

	SET @DimensionColumnDataTypeLength = @CharacterMaximumLength

	

	-- EXAMPLE ONLY ==================================================================================================

	IF (@StagingDataType IN (''nvarchar'', ''varchar''))
	BEGIN
	   IF (@DimensionColumnDataTypeLength > 25)
	   BEGIN
		  SET @DimensionColumnDataTypeLength =

			 CASE WHEN @DimensionColumnDataTypeLength < 128 THEN 128
				 WHEN @DimensionColumnDataTypeLength < 1024 THEN 1024
				 ELSE -1 --(MAX)
			 END
	   END
	   ELSE
	   BEGIN
		  SET @DimensionColumnDataTypeLength = @DimensionColumnDataTypeLength * 4  
	   END	   
	END

	IF (@StagingDataType IN (''nchar'', ''char''))
	BEGIN
	  SET @DimensionColumnDataTypeLength = @DimensionColumnDataTypeLength * 4  
	END

	IF (@StagingDataType IN (''text''))
	BEGIN
	   SET @DimensionColumnDataTypeLength = -1
	END

	
	RETURN @DimensionColumnDataTypeLength

END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ModelTableHasPrimaryKey]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[ModelTableHasPrimaryKey]
(
	  @ModelSchemaName nvarchar(255)
    , @ModelTableName nvarchar(255)
)
RETURNS bit
AS
/*+ Version alpha-0.1.0.1036 20141005.170752 -------------------------------------------------------------- 
Scalar Function [bib].[ModelTableHasPrimaryKey]

Returns 1 if the model table you are building from has a primary key.
-- -----------------------------------------------------------+*/
BEGIN
	DECLARE @ModelTableHasPrimaryKey bit

	SET @ModelTableHasPrimaryKey = 0

	IF EXISTS( SELECT ind.name
					FROM            sys.tables AS ta INNER JOIN
                         sys.indexes AS ind ON ind.object_id = ta.object_id INNER JOIN
                         sys.index_columns AS indcol ON indcol.object_id = ta.object_id AND indcol.index_id = ind.index_id INNER JOIN
                         sys.columns AS col ON col.object_id = ta.object_id AND col.column_id = indcol.column_id 
					INNER JOIN
                         sys.schemas ON ta.schema_id = sys.schemas.schema_id  
         --                WHERE indcol.is_included_column = 0
					    AND ta.name = @ModelTableName  
					    AND sys.schemas.name =  @ModelSchemaName 
			 )
			 BEGIN
				SET @ModelTableHasPrimaryKey = 1
			 END
	
	
	RETURN @ModelTableHasPrimaryKey

END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ModifiedDateColumnName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[ModifiedDateColumnName]
(
  @StagingTableSchema sysname,
  @StagingTableName sysname
)
RETURNS nvarchar(MAX)
AS
/*+ Version alpha-0.1.0.1040 20141005.170752 -------------------------------------------------------------- 
Scalar Function [bib].[ModifiedDateColumnName]

Returns the name of the column that has been flagged (either automatically or manually)
as the column indicating the last modified data of the record.
-- -----------------------------------------------------------+*/
BEGIN
	 DECLARE @ModifiedDateColumnName nvarchar(MAX)

	 SET @ModifiedDateColumnName = NULL

      SELECT TOP 1 @ModifiedDateColumnName = StagingColumnName from [bib].[ColumnDefinitions] 
	   WHERE StagingTableSchema = @StagingTableSchema AND StagingTableName = @StagingTableName
	   AND IsDataCaptureDateTime  = 1

	RETURN @ModifiedDateColumnName
END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[RowCountOfTable]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[RowCountOfTable](@SchemaName sysname, @StagingTableName sysname)
RETURNS bigint
AS
/*+ Version alpha-0.1.0.1044 20141005.170752 -------------------------------------------------------------- 
Scalar Function  [bib].[RowCountOfTable]

Returns the number of rows in a table.
-- -----------------------------------------------------------+*/
BEGIN
	
	DECLARE @RowCount bigint

	SET @RowCount = 0

    SELECT  @RowCount = SUM(pa.[rows])  
    FROM	   sys.tables ta
		  INNER JOIN sys.partitions pa
				ON pa.OBJECT_ID = ta.OBJECT_ID
		  INNER JOIN sys.schemas sc
				ON ta.schema_id = sc.schema_id
    WHERE 
		  ta.is_ms_shipped = 0 AND pa.index_id IN (1,0)
		  AND
		  sc.name = @SchemaName
		  AND
		  ta.name = @StagingTableName

	
	RETURN @RowCount
END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[TableIsLockedToOverwriting]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[TableIsLockedToOverwriting]
(
      @StagingSchemaName nvarchar(255)
    , @StagingTableName nvarchar(255)
)
RETURNS bit
AS
/*+ Version alpha-0.1.0.1088 20141005.170752 -------------------------------------------------------------- 
Scalar Function  [bib].[TableIsLockedToOverwriting]

Returns "1" if the table is locked such that you cannot regenerate
the ETL and dimensions from a particular staging table.
-- -----------------------------------------------------------+*/
BEGIN
    DECLARE @IsLocked bit
    SET @IsLocked = 0

   SELECT @IsLocked = Locked 
    FROM  [bib].[TableDefinitions] 
    WHERE
    StagingTableSchema = @StagingSchemaName
    AND
    StagingTableName = @StagingTableName

    RETURN @IsLocked
END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[TableIsSCD]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[TableIsSCD]
(
	@StagingSchemaName sysname,
	@StagingTableName sysname
)
RETURNS bit
AS
/*+ Version alpha-0.1.0.1090 20141005.170752 -------------------------------------------------------------- 
Scalar Function [bib].[TableIsSCD]

Returns 1 if the staging table metadata indicates it is to be 
a slowly changing dimension.
-- -----------------------------------------------------------+*/
BEGIN
	DECLARE @TableIsSCD bit
	SET @TableIsSCD  = 0
	
    IF EXISTS( SELECT ColumnDefinition_Id  FROM bib.ColumnDefinitions cd
	    WHERE StagingTableSchema = @StagingSchemaName
	   AND StagingTableName = @StagingTableName
	   AND UseColumnForSCD = 1)
	   BEGIN
		SET @TableIsSCD  = 1
	   END 

	RETURN @TableIsSCD
END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[UnderscorePascal]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[UnderscorePascal]( @in nvarchar( 1024 ))
RETURNS nvarchar( 1024 )
AS
/*+ Version alpha-0.1.0.1092 20141005.170752 -------------------------------------------------------------- 
Scalar Function [bib].[UnderscorePascal]

This routine is used to make column names more readable when they 
are surfaced in Analysis Services reports.

When a column name is PascalCased - such as "CustomerOrder", this function
returns "Customer_Order". Analysis Services will display the "_" as a space.
-- -----------------------------------------------------------+*/
BEGIN

    IF @in  COLLATE Latin1_General_CS_AS  = UPPER( @in )
        BEGIN
            RETURN @in;
        END

    DECLARE @i int = 1
    DECLARE @WordOut varchar( 500 ) = ''''
    DECLARE @LastLetter varchar( 2 ) = ''''
    WHILE @i <= LEN( @in )
        BEGIN

            DECLARE @ThisLetter varchar( 2 ) = ''''
            SET @ThisLetter = SUBSTRING( @in , @i , 1 )

            DECLARE @NextLetter varchar( 1 ) = ''''
            IF @i <= LEN( @in )
                BEGIN
                    SET @NextLetter = SUBSTRING( @in , @i + 1 , 1 )
                END

            DECLARE @Space varchar( 1 )
            SELECT @WordOut += CASE
                               WHEN @LastLetter COLLATE Latin1_General_CS_AS = UPPER( @LastLetter )
							    AND @ThisLetter COLLATE Latin1_General_CS_AS  = UPPER( @ThisLetter )
							    AND @NextLetter COLLATE Latin1_General_CS_AS = UPPER( @NextLetter ) THEN ''''
                               WHEN @LastLetter COLLATE Latin1_General_CS_AS != UPPER( @LastLetter )
                               AND @ThisLetter COLLATE Latin1_General_CS_AS = UPPER( @ThisLetter )
                               AND @NextLetter COLLATE Latin1_General_CS_AS = UPPER( @NextLetter ) THEN ''_''
                               WHEN @LastLetter COLLATE Latin1_General_CS_AS = UPPER( @LastLetter )
                               AND @ThisLetter COLLATE Latin1_General_CS_AS  = UPPER( @ThisLetter )
                               AND @NextLetter COLLATE Latin1_General_CS_AS != UPPER( @NextLetter ) THEN ''_''
                               WHEN @LastLetter COLLATE Latin1_General_CS_AS != UPPER( @LastLetter )
                               AND @ThisLetter COLLATE Latin1_General_CS_AS = UPPER( @ThisLetter )
                               AND @NextLetter COLLATE Latin1_General_CS_AS != UPPER( @NextLetter ) THEN ''_''
                                   ELSE ''''
                               END + @ThisLetter

            SET @i += 1;
            SET @LastLetter = @ThisLetter

            END

    IF LEFT( @WordOut , 1 ) = ''_''
        BEGIN
            SET @WordOut = RIGHT( @WordOut , LEN( @WordOut ) - 1 )
        END

    RETURN LTRIM( @WordOut )

END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[UpdateClauseForNonKeyStagingColumns]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [BIB].[UpdateClauseForNonKeyStagingColumns]
(
@StagingTableSchema sysname
,
@StagingTableName sysname
)
RETURNS nvarchar( max )
AS
/*+ Version alpha-0.1.0.1094 20141005.170752 -------------------------------------------------------------- 
Scalar Function [bib].[UpdateClauseForNonKeyStagingColumns]

Generates the SQL for the update clause within the dimension loading 
stored procedure.
-- -----------------------------------------------------------+*/
BEGIN
    DECLARE @NonKeyStagingColumns nvarchar( max )

    SELECT @NonKeyStagingColumns = ISNULL( @NonKeyStagingColumns + ''
					   , '' , '''' ) +
		  CASE
			 WHEN CustomTypeConversionExpression IS NULL THEN					   
					    ''dest.[''+ ColumnDefinitions.DimensionColumnName  +''] = src.[''+ ColumnDefinitions.StagingColumnName +'']''
			 ELSE
				''dest.[''+ ColumnDefinitions.DimensionColumnName  +''] = ''+REPLACE(CustomTypeConversionExpression ,''<COLUMN>'',''src.[''+ ColumnDefinitions.StagingColumnName +'']'')
		  END -- CASE
           FROM bib.ColumnDefinitions
           WHERE
           ColumnDefinitions.StagingTableSchema = @StagingTableSchema
       AND ColumnDefinitions.StagingTableName = @StagingTableName
	  AND
		  (IsBusinessKey IS NULL OR IsBusinessKey = 0)
		  AND IncludeInDWH = 1
    AND	  OrdinalPosition > 1
    AND
		   [StagingColumnName] NOT IN (''Staging_Id'',   ''DataState_Id'' )
	  ORDER BY ColumnDefinitions.OrdinalPosition ASC

    RETURN ISNULL(@NonKeyStagingColumns, '''')

END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[DWHUtils].[DateTimeToDateKey]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [DWHUtils].[DateTimeToDateKey]
(
	@TheDate DateTime
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @CodedDate int
	
	IF @TheDate IS NULL 
	BEGIN
		SET @CodedDate = -1
	END
	ELSE
	BEGIN
		SET @CodedDate = YEAR(@TheDate) * 10000 + MONTH(@TheDate) * 100 + DAY(@TheDate)
	END
	
	RETURN @CodedDate

END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[DWHUtils].[DateTimeToDateTimeKey]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [DWHUtils].[DateTimeToDateTimeKey]
(
	@TheDate DateTime
)
RETURNS nvarchar(100)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @CodedDate int
	DECLARE @CodedTime nvarchar(100)
	
	IF @TheDate IS NULL 
	BEGIN
		SET @CodedTime = ''''
	END
	ELSE
	BEGIN
		SET @CodedDate = YEAR(@TheDate) * 10000 + MONTH(@TheDate) * 100 + DAY(@TheDate)
		SET @CodedTime = LTRIM(@CodedDate) + ''.'' + REPLACE(REPLACE(CAST(CAST(@TheDate AS Time) AS nvarchar(8)),'':'',''''),''.'','''')
	END
	
	RETURN @CodedTime

END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[DWHUtils].[DateTimeToDateTimeString]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [DWHUtils].[DateTimeToDateTimeString]
(
	@TheDate DateTime
)
RETURNS nvarchar(100)
AS

/*+ Version alpha-0.1.0.0 20141005.172312 -------------------------------------------------------------- 
Scalar Function [DWHUtils].[DateTimeToDateTimeString]

Returns the datetime parameter as a string in the format yyyymmdd.hhmmss
-- -----------------------------------------------------------+*/
BEGIN
	-- Declare the return variable here
	DECLARE @CodedDate int
	DECLARE @CodedTime nvarchar(100)
	
	IF @TheDate IS NULL 
	BEGIN
		SET @CodedTime = ''''
	END
	ELSE
	BEGIN
		SET @CodedDate = YEAR(@TheDate) * 10000 + MONTH(@TheDate) * 100 + DAY(@TheDate)
		SET @CodedTime = LTRIM(@CodedDate) + ''.'' + REPLACE(REPLACE(CAST(CAST(@TheDate AS Time) AS nvarchar(8)),'':'',''''),''.'','''')
	END
	
	RETURN @CodedTime

END

' 
END

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[BIB_Settings]') AND type in (N'U'))
BEGIN
CREATE TABLE [BIB].[BIB_Settings](
	[BIB_Settings_Id] [int] IDENTITY(1,1) NOT NULL,
	[SettingName] [nvarchar](100) NOT NULL,
	[SettingValue] [nvarchar](255) NULL,
 CONSTRAINT [PK_BIB_Settings] PRIMARY KEY CLUSTERED 
(
	[BIB_Settings_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [BIB]
) ON [BIB]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[BIB_Versions]') AND type in (N'U'))
BEGIN
CREATE TABLE [BIB].[BIB_Versions](
	[BIBVersion_Id] [int] IDENTITY(1,1) NOT NULL,
	[MajorVersion] [int] NOT NULL,
	[MinorVersion] [int] NOT NULL,
	[Revision] [int] NOT NULL,
	[VersionType] [nvarchar](50) NOT NULL CONSTRAINT [DF_BIBVersions_VersionType]  DEFAULT (N'alpha'),
	[ReleaseNotes] [nvarchar](max) NULL,
 CONSTRAINT [PK_BIBVersions] PRIMARY KEY CLUSTERED 
(
	[BIBVersion_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [BIB]
) ON [BIB] TEXTIMAGE_ON [BIB]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ColumnDefinitions]') AND type in (N'U'))
BEGIN
CREATE TABLE [BIB].[ColumnDefinitions](
	[ColumnDefinition_Id] [int] IDENTITY(1,1) NOT NULL,
	[TableCatalog] [nvarchar](255) NULL,
	[StagingTableSchema] [nvarchar](255) NULL,
	[StagingTableName] [nvarchar](255) NOT NULL,
	[StagingColumnName] [nvarchar](255) NOT NULL,
	[OrdinalPosition] [smallint] NOT NULL,
	[ColumnDefault] [nvarchar](max) NULL,
	[IsNullable] [nvarchar](3) NOT NULL,
	[DataType] [nvarchar](255) NULL,
	[CharacterMaximumLength] [int] NULL,
	[DataTypeBestAsInt] [bit] NULL,
	[DataTypeBestAsNumeric] [bit] NULL,
	[DataTypeBestAsDatetime] [bit] NULL,
	[DimensionColumnName] [nvarchar](255) NULL,
	[DimensionDataType] [nvarchar](255) NULL,
	[DimensionDataTypeLength] [int] NULL,
	[CustomTypeConversionExpression] [nvarchar](255) NULL,
	[IsAllNull] [bit] NULL,
	[NullPercent] [int] NULL,
	[DistinctValues] [bigint] NULL,
	[IncludeInDWH] [bit] NULL,
	[UseColumnForSCD] [bit] NULL,
	[IsBusinessKey] [bit] NULL,
	[IsDataCaptureDateTime] [bit] NULL,
	[IsDeletedFlag] [bit] NULL,
 CONSTRAINT [PK_ColumnDefinition] PRIMARY KEY CLUSTERED 
(
	[ColumnDefinition_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [BIB]
) ON [BIB] TEXTIMAGE_ON [BIB]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[DataStates]') AND type in (N'U'))
BEGIN
CREATE TABLE [BIB].[DataStates](
	[DataState_Id] [int] NOT NULL,
	[DataStateName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_DataStates] PRIMARY KEY CLUSTERED 
(
	[DataState_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [BIB]
) ON [BIB]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ETLBuildProgress]') AND type in (N'U'))
BEGIN
CREATE TABLE [BIB].[ETLBuildProgress](
	[ETLBuildProgress_id] [int] IDENTITY(1,1) NOT NULL,
	[StagingSchemaName] [nvarchar](255) NOT NULL,
	[StagingTableName] [nvarchar](255) NOT NULL,
	[LastBuildStepCompleted] [nvarchar](255) NOT NULL,
	[LastBuildStep_Id] [int] NOT NULL CONSTRAINT [DF_BIB_ETL_Build_Progress_LastBuildStep_Id]  DEFAULT ((0)),
 CONSTRAINT [PK_ETLBuildProgress] PRIMARY KEY CLUSTERED 
(
	[ETLBuildProgress_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [BIB]
) ON [BIB]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[SourceSystems]') AND type in (N'U'))
BEGIN
CREATE TABLE [BIB].[SourceSystems](
	[SourceSystem_Id] [int] IDENTITY(1,1) NOT NULL,
	[SourceSystemName] [nvarchar](250) NOT NULL,
	[SourceSystemNotes] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_SourceSystems] PRIMARY KEY CLUSTERED 
(
	[SourceSystem_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [BIB]
) ON [BIB] TEXTIMAGE_ON [BIB]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[TableDefinitions]') AND type in (N'U'))
BEGIN
CREATE TABLE [BIB].[TableDefinitions](
	[TableDefinition_Id] [int] IDENTITY(1,1) NOT NULL,
	[DatabaseName] [nvarchar](255) NULL,
	[StagingTableSchema] [nvarchar](255) NULL,
	[StagingTableName] [nvarchar](255) NOT NULL,
	[RelatedDimensionTableName] [nvarchar](255) NULL,
	[RelatedDimensionTableSchema] [nvarchar](255) NULL,
	[RelatedDimensionTableFileGroup] [nvarchar](255) NULL,
	[TableType] [nvarchar](10) NULL,
	[IncludeInDWH] [bit] NULL,
	[RowCountWhenSampled] [bigint] NULL,
	[SourceSystem_Id] [int] NULL,
	[Locked] [bit] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_TableDefinitions] PRIMARY KEY CLUSTERED 
(
	[TableDefinition_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [BIB]
) ON [BIB]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ETL].[ETL_Batch_Details]') AND type in (N'U'))
BEGIN
CREATE TABLE [ETL].[ETL_Batch_Details](
	[ETL_Batch_Details_Id] [int] IDENTITY(1,1) NOT NULL,
	[ETL_Batch_Log_Id] [bigint] NOT NULL,
	[ETLLoadStatus_Id] [int] NOT NULL,
	[Start_Time] [datetime] NOT NULL,
	[End_Time] [datetime] NULL,
	[Run_Duration] [varchar](50) NULL,
	[Duration] [numeric](9, 2) NULL,
	[Success_Flag] [bit] NULL,
	[Error_Code] [int] NULL,
	[RecordsAffected] [int] NULL,
	[Message] [nvarchar](255) NULL,
 CONSTRAINT [PK_ETL_Batch_Details] PRIMARY KEY CLUSTERED 
(
	[ETL_Batch_Details_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ETL_Logs]
) ON [ETL_Logs]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ETL].[ETL_Batch_Logs]') AND type in (N'U'))
BEGIN
CREATE TABLE [ETL].[ETL_Batch_Logs](
	[ETL_Batch_Log_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Process_Name] [varchar](1024) NOT NULL,
	[Start_Time] [datetime] NOT NULL,
	[End_Time] [datetime] NULL,
	[Run_Duration] [varchar](50) NULL,
	[Duration] [numeric](9, 2) NULL,
	[Success_Flag] [bit] NULL,
	[Error_Code] [int] NULL,
	[Load_Detail_Desc] [varchar](max) NULL,
	[Load_Detail] [varchar](max) NULL,
	[NoOfRecords] [int] NULL,
	[NoOfNewRecords] [int] NULL,
	[NoOfUpdatedRecords] [int] NULL,
	[Completeness] [int] NULL,
	[NoOfUnderlyingDataElements] [int] NULL,
	[NoOfNonApplicableDataElements] [int] NULL,
	[NoOfCorruptDataElements] [int] NULL,
	[NoOfOutOfBoundsDataElements] [int] NULL,
	[NoOfUnknownDataElementsTreatedAsZero] [int] NULL,
	[NoOfDataElementsChangedManually] [int] NULL,
	[NoOfCorrectionsPostedSinceOriginalDataLoad] [int] NULL,
	[Current_Row_Version] [varbinary](8) NULL,
 CONSTRAINT [PK_ETL_Batch_Logs] PRIMARY KEY CLUSTERED 
(
	[ETL_Batch_Log_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ETL_Logs]
) ON [ETL_Logs] TEXTIMAGE_ON [ETL_Logs]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[BIB].[vwLimitedSystemDataTypes]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [BIB].[vwLimitedSystemDataTypes]
	AS

	SELECT xtype , min(xusertype) AS xusertype  FROM sys.systypes
	GROUP BY xtype

' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[BIB].[vwStagingColumnDefinitions]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [BIB].[vwStagingColumnDefinitions]
AS
SELECT        TOP (100) PERCENT 
	 DB_NAME (  )  AS TableCatalog
	, sys.schemAS.name AS [Schema]
	, sys.objects.name AS [StagingTableName]
	, sys.columns.name AS ColumnName
	, sys.columns.column_id AS OrdinalPosition
	, sys.default_constraints.definition AS ColumnDefault
	, sys.columns.is_nullable AS IsNullable
	, sys.types.name AS DataType
	, sys.columns.max_length AS CharacterMaximumLength
	, NULL AS DataTypeBestASInt
	, NULL AS DataTypeBestASNumeric
	, NULL AS DataTypeBestASDatetime
	, NULL AS NewDataType
	, NULL AS NewFieldName
	, NULL AS IsAllNull
	, NULL AS NullPercent
	, 1 AS IncludeInDWH
	, 0 AS UseColumnForSCD

FROM            bib.vwLimitedSystemDataTypes AS vwLSDT INNER JOIN
                         sys.columns INNER JOIN
                         sys.types ON sys.columns.system_type_id = sys.types.system_type_id ON vwLSDT.xtype = sys.types.system_type_id AND 
                         vwLSDT.xusertype = sys.types.user_type_id LEFT OUTER JOIN
                         sys.default_constraints ON sys.columns.default_object_id = sys.default_constraints.object_id LEFT OUTER JOIN
                         sys.schemas INNER JOIN
                         sys.objects ON sys.schemas.schema_id = sys.objects.schema_id ON sys.columns.object_id = sys.objects.object_id
WHERE        (sys.types.is_user_defined = 0) 
ORDER BY OrdinalPosition
	

' 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[AddETLColumnsToStagingTable]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[AddETLColumnsToStagingTable] AS' 
END
GO

ALTER PROCEDURE [BIB].[AddETLColumnsToStagingTable]
(
  @StagingSchemaName nvarchar( 255 )
, @StagingTableName nvarchar( 255 )
)
AS
/*+ Version alpha-0.1.0.962 20141005.170751 -------------------------------------------------------------- 
Stored Procedure  [bib].[AddETLColumnsToStagingTable]

The staging table is augmented automatically during the build with
columns that help in managing the ETL process.

These are
1. Staging_Id - a surrogate key used purely in staging
2. SourceSystem_Id - used to identify the source system
3. ETLBatch_Id - populated with the Btach Id during a load
4. DataState_Id - indicates the status of the data 

The data states are:
1	Staging - Flagged for load into dimension within batch
2	Staging - Loaded successfully into dimension within batch, ready for deletion
3	Staging - Error occurred loading records into dimension within batch
4	Dimension - Partial load of non-nullable columns (Part 1 of 2) - Not ready for reporting
5	Dimension - Load of all batched records complete (Part 2 of 2) - Ready for reporting
6	Dimension - Frozen, cannot be updated (Can only be set manually)
-- -----------------------------------------------------------+*/
BEGIN

    SET NOCOUNT ON

   
DECLARE @IndexName sysname
DECLARE @SQL nvarchar(MAX)

SET @SQL= ''

SELECT        @IndexName = sys.indexes.name
       FROM
            sys.indexes
            INNER JOIN sys.tables ON sys.indexes.object_id = sys.tables.object_id
            INNER JOIN sys.schemas ON sys.tables.schema_id = sys.schemas.schema_id
       WHERE sys.indexes.is_primary_key = 1
        AND sys.tables.name = @StagingTableName
        AND sys.schemas.name = @StagingSchemaName

    SET @SQL= 
    '
SET XACT_ABORT ON
BEGIN TRANSACTION
   
    IF [bib].[DoesColumnExistInTable]('''+@StagingSchemaName+''', '''+@StagingTableName+''', ''Staging_Id'') = 0
    BEGIN
	    ALTER TABLE '+@StagingSchemaName+'.'+@StagingTableName+'
		  ADD Staging_Id int IDENTITY(1,1) NOT NULL

	   '+ [bib].[GeneratePrimaryKeyDROPClause] (@StagingSchemaName, @StagingTableName ) +'

	   ALTER TABLE '+@StagingSchemaName+'.'+@StagingTableName+'
		  ADD CONSTRAINT PK_'+@StagingSchemaName+'_'+@StagingTableName+' PRIMARY KEY (Staging_Id)
    END
   

    IF [bib].[DoesColumnExistInTable]('''+@StagingSchemaName+''', '''+@StagingTableName+''', ''SourceSystem_Id'') = 0
    BEGIN
	    ALTER TABLE '+@StagingSchemaName+'.'+@StagingTableName+'
		  ADD SourceSystem_Id int NOT NULL DEFAULT((1))
    END

    IF [bib].[DoesColumnExistInTable]('''+@StagingSchemaName+''', '''+@StagingTableName+''', ''ETLBatch_Id'') = 0
    BEGIN
	   ALTER TABLE '+@StagingSchemaName+'.'+@StagingTableName+'
		  ADD ETLBatch_Id bigint NULL
    END

    IF [bib].[DoesColumnExistInTable]('''+@StagingSchemaName+''', '''+@StagingTableName+''', ''DataState_Id'') = 0
    BEGIN
	   ALTER TABLE '+@StagingSchemaName+'.'+@StagingTableName+'
		  ADD DataState_Id int NULL
    END
COMMIT
    '
  --EXEC bib.LongPrint @SQL
  EXEC sp_ExecuteSQL @SQL

END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[AddSCDColumnsToDimensionTable]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[AddSCDColumnsToDimensionTable] AS' 
END
GO

ALTER PROCEDURE [BIB].[AddSCDColumnsToDimensionTable]
(
  @StagingSchemaName nvarchar( 255 )
, @StagingTableName nvarchar( 255 )
, @ExecuteGeneratedScript bit = 0  
)
AS
/*+ Version alpha-0.1.0.1119 20141005.170824 -------------------------------------------------------------- 
Stored Procedure [bib].[AddSCDColumnsToDimensionTable]

Called within the ETL build process to support Slowly Changing Dimension Type 2 functionality.

Certain columns are added to the generated dimension table. 
These columns store the effective start and end dates for each record and whether or
not the record is active or superceeded.
-- -----------------------------------------------------------+*/
BEGIN

    SET NOCOUNT ON

   
DECLARE @IndexName sysname
DECLARE @SQL nvarchar(MAX)

SET @SQL= ''

DECLARE @RelatedDimensionTableSchema sysname
DECLARE @RelatedDimensionTableName sysname
DECLARE @RelatedDimensionTableFileGroup sysname

SELECT
	 @RelatedDimensionTableName	=	RelatedDimensionTableName
	, @RelatedDimensionTableSchema	=	RelatedDimensionTableSchema
	, @RelatedDimensionTableFileGroup	=	RelatedDimensionTableFileGroup
FROM bib.TableDefinitions 
WHERE 
StagingTableSchema = @StagingSchemaName
AND 
StagingTableName = @StagingTableName

    SET @SQL= 
    '
SET XACT_ABORT ON
BEGIN TRANSACTION
   
    IF [bib].[DoesColumnExistInTable]('''+@RelatedDimensionTableSchema+''', '''+@RelatedDimensionTableName+''', ''EffectiveStart'') = 0
    BEGIN
	    ALTER TABLE '+@RelatedDimensionTableSchema+'.'+@RelatedDimensionTableName+'
		  ADD EffectiveStart Datetime DEFAULT((GETDATE())) NOT NULL	   
    END
   

    IF [bib].[DoesColumnExistInTable]('''+@RelatedDimensionTableSchema+''', '''+@RelatedDimensionTableName+''', ''EffectiveFinish'') = 0
    BEGIN
	    ALTER TABLE '+@RelatedDimensionTableSchema+'.'+@RelatedDimensionTableName+'
		  ADD EffectiveFinish Datetime  NULL 
    END

    IF [bib].[DoesColumnExistInTable]('''+@RelatedDimensionTableSchema+''', '''+@RelatedDimensionTableName+''', ''ActiveRecord'') = 0
    BEGIN
	   ALTER TABLE '+@RelatedDimensionTableSchema+'.'+@RelatedDimensionTableName+'
		  ADD ActiveRecord bit DEFAULT((1)) NOT NULL
    END
COMMIT
    '

    IF @ExecuteGeneratedScript = 1
    BEGIN
	   EXEC sp_ExecuteSQL @SQL
    END
    ELSE
    BEGIN
	   EXEC bib.LongPrint @SQL
    END
END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[AddSystemSourceIdColumnToStagingTable]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[AddSystemSourceIdColumnToStagingTable] AS' 
END
GO

ALTER PROCEDURE [BIB].[AddSystemSourceIdColumnToStagingTable]
(
 @StagingSchemaName nvarchar( 255 )
, @StagingTableName nvarchar( 255 )
, @DefaultSourceSystem_ID int = 1
)
AS
/*+ Version alpha-0.1.0.970 20141005.170751 -------------------------------------------------------------- 
Stored Procedure [bib].[AddSystemSourceIdColumnToStagingTable]

Each record needs to be traceable to a source system. The SourceSystem_Id
column is added automatically to the staging table and defaults to "1".

SourceSystem_Id forms part of the unique index applied to the dimension and staging table.

The scenario where this is absolutely required is where you have multiple source systems of the same type that dump their 
data into the same staging table and dimension. These independent system could use the same primary keys for different records
and without SourceSystem_Id to differentiate them, you will be overwriting and destroying data.
-- -----------------------------------------------------------+*/
BEGIN
  DECLARE @SQL nvarchar(MAX)
  DECLARE @SQL2 nvarchar(MAX)

  SET @SQL = '

ALTER TABLE '+@StagingSchemaName+'.'+@StagingTableName+' ADD
	SourceSystem_Id int NOT NULL CONSTRAINT DF_'+@StagingSchemaName+'_'+@StagingTableName+'_SourceSystem_Id DEFAULT '+LTRIM(@DefaultSourceSystem_ID)+'
 
ALTER TABLE '+@StagingSchemaName+'.'+@StagingTableName+' SET (LOCK_ESCALATION = TABLE)

'

EXECUTE sp_ExecuteSQL @SQL

END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[AnalyseStagingTable]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[AnalyseStagingTable] AS' 
END
GO

ALTER PROCEDURE [BIB].[AnalyseStagingTable]
( @StagingSchemaName nvarchar( 255 )
, @StagingTableName nvarchar( 255 )
)
AS
/*+ Version alpha-0.1.0.974 20141005.170751 -------------------------------------------------------------- 
Stored Procedure [bib].[AnalyseStagingTable]

Called within the ETL build process (if option selected), this routine drives all 
the stored procedures that run analytics on the staging table data.

If you create new analytic rroutines, add them in here.
-- -----------------------------------------------------------+*/
BEGIN
    EXECUTE  [bib].[AnalyseTableForNULLColumns]  @StagingSchemaName ,@StagingTableName 
    EXECUTE  [bib].[AnalyseTableForDateColumnsStoredAsStringColumn] @StagingSchemaName, @StagingTableName
    EXECUTE  [bib].[AnalyseTableForIntColumnStoredAsFloatColumn] @StagingSchemaName, @StagingTableName
    EXECUTE  [bib].[AnalyseTableForIntColumnsStoredAsStringColumns] @StagingSchemaName, @StagingTableName
    EXECUTE  [bib].[AnalyseTableForFloatColumnsStoredAsStringColumn] @StagingSchemaName, @StagingTableName
    EXECUTE  [bib].[AnalyseTableForDistinctValueCountsPerColumn] @StagingSchemaName, @StagingTableName
END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[AnalyseTableForDateColumnsStoredAsStringColumn]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[AnalyseTableForDateColumnsStoredAsStringColumn] AS' 
END
GO

ALTER PROCEDURE [BIB].[AnalyseTableForDateColumnsStoredAsStringColumn]
( @StagingSchemaName nvarchar( 255 )
, @StagingTableName nvarchar( 255 )
)
AS

/*+ Version alpha-0.1.0.978 20141005.170751 -------------------------------------------------------------- 
Stored Procedure [bib].[AnalyseTableForDateColumnsStoredAsStringColumn]

An example of analysis you can run and feed back into the metadata.

This routine looks into the values held in string columns to determine
if the values are all dates and best stord in the generated dimension
as [DateTime]s.

Ideally you would be able to get your data types fully sorted out in your model table
but it is possible you are constrained by legacy ETL systems delivering data to your data warehouse.
-- -----------------------------------------------------------+*/
SET NOCOUNT ON

DECLARE @SQL nvarchar(MAX) 
DECLARE @Counter int = 1
DECLARE @MaxColumn int
DECLARE @StagingColumnName sysname

SET  @SQL = '-- ========================================================
-- BI Builder Analysis Script for source table  ['+@StagingSchemaName+'].['+@StagingTableName+'] 
DECLARE @NonNULLRowCount bigint
DECLARE @DateValueCount bigint
'

SELECT @MaxColumn = MAX(OrdinalPosition) FROM bib.ColumnDefinitions  WHERE [StagingTableName]  =  @StagingTableName AND [StagingTableSchema]  =  '+@StagingSchemaName+'

;WITH StringColumns AS
(   SELECT 
		  ROW_NUMBER() OVER(ORDER BY OrdinalPosition ASC) AS [Column_Id]       
 	 
			  , @StagingSchemaName AS StagingSchemaName
			  , @StagingTableName  AS StagingTableName
			  , StagingColumnName
		  FROM
			  bib.ColumnDefinitions
		  WHERE
			  [StagingTableName]	     =	@StagingTableName 
		  AND  [StagingTableSchema]	=	@StagingSchemaName
		  AND  DataType		like '%char%'
		  AND CharacterMaximumLength BETWEEN 1 AND 256
)

SELECT @SQL = @SQL +

'

-- Analysing the string column 
--    ['+@StagingSchemaName+'].['+@StagingTableName+'] -> ['+StagingColumnName+'] against the sample data
--    to determine if the values are purely date fields 

SET XACT_ABORT ON ;
 BEGIN TRANSACTION ; 

SET @NonNULLRowCount = 0

--SELECT  @NonNULLRowCount = bib.RowCountOfTable(  '''+@StagingSchemaName+''' , '''+@StagingTableName+''')

SELECT  @NonNULLRowCount = COUNT(['+StagingColumnName+']) FROM ['+@StagingSchemaName+'].['+@StagingTableName+'] WHERE ['+StagingColumnName+'] IS NOT NULL

IF (@NonNULLRowCount > 0)
BEGIN

SELECT 	
	   @DateValueCount = COUNT(*)
FROM	   ['+@StagingSchemaName+'].['+@StagingTableName+']
WHERE 
	ISDATE(['+StagingColumnName+']) =1

	IF (@NonNULLRowCount = @DateValueCount)
	BEGIN
	   
	   UPDATE [bib].[ColumnDefinitions]
		 SET 
			DataTypeBestAsDatetime = 1
	   FROM	 [bib].[ColumnDefinitions] 
	   WHERE   StagingTableSchema = '''+@StagingSchemaName+''' AND StagingTableName = '''+@StagingTableName+''' AND StagingColumnName = '''+StagingColumnName+'''
	END
	ELSE
	BEGIN
	     UPDATE [bib].[ColumnDefinitions]
		 SET 
			DataTypeBestAsDatetime = 0
	   FROM	 [bib].[ColumnDefinitions] 
	   WHERE   StagingTableSchema = '''+@StagingSchemaName+''' AND StagingTableName = '''+@StagingTableName+''' AND StagingColumnName = '''+StagingColumnName+'''
	END

END

 COMMIT 
'
FROM StringColumns

EXEC sp_Executesql @SQL
--EXECUTE bib.LongPrint @SQL


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[AnalyseTableForDistinctValueCountsPerColumn]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[AnalyseTableForDistinctValueCountsPerColumn] AS' 
END
GO

ALTER PROCEDURE [BIB].[AnalyseTableForDistinctValueCountsPerColumn]
( @StagingSchemaName nvarchar( 255 )
, @StagingTableName nvarchar( 255 )
)
AS
/*+ Version alpha-0.1.0.982 20141005.170751 -------------------------------------------------------------- 
Stored Procedure [bib].[AnalyseTableForDistinctValueCountsPerColumn]

An example of analysis you can run and feed back into the metadata.

This routine looks at how many distinct values you have amongst each column of the staging table.
The results are stored in [bib].[ColumnDefinitions]
-- -----------------------------------------------------------+*/
SET NOCOUNT ON

DECLARE @SQL nvarchar(MAX) 
DECLARE @Counter int = 1
DECLARE @MaxColumn int
DECLARE @StagingColumnName sysname

SET  @SQL = '-- ========================================================
-- BI Builder Analysis Script for source table  ['+@StagingSchemaName+'].['+@StagingTableName+'] 
DECLARE @NonNULLRowCount bigint
DECLARE @DistinctValueCount bigint
'

SELECT @MaxColumn = MAX(OrdinalPosition) FROM bib.ColumnDefinitions  WHERE [StagingTableName]  =  @StagingTableName AND [StagingTableSchema]  =  '+@StagingSchemaName+'

;WITH ColumnNames AS
(   SELECT 
		  ROW_NUMBER() OVER(ORDER BY OrdinalPosition ASC) AS [Column_Id]       
 	 
			  --, @StagingSchemaName AS StagingSchemaName
			  --, @StagingTableName  AS StagingTableName
			  , StagingColumnName
		  FROM
			  bib.ColumnDefinitions
		  WHERE
			  [StagingTableName]	     =	@StagingTableName 
		  AND  [StagingTableSchema]	=	@StagingSchemaName
		  AND  DataType NOT in  ('xml', 'image', 'uniqueidentifier')
		  AND  DataType NOT LIKE '%binary%'

) 

SELECT @SQL = @SQL +

'

-- Analysing the column 
--    ['+@StagingSchemaName+'].['+@StagingTableName+'] -> ['+StagingColumnName+'] against the sample data
--    to determine number of distinct values 

SET XACT_ABORT ON ;
 BEGIN TRANSACTION ; 

SELECT 	
	   @DistinctValueCount = COUNT(DISTINCT ['+StagingColumnName+'])
FROM	   ['+@StagingSchemaName+'].['+@StagingTableName+']

	UPDATE [bib].[ColumnDefinitions]
		 SET 
			DistinctValues = @DistinctValueCount
	   FROM	 [bib].[ColumnDefinitions] 
	   WHERE   StagingTableSchema = '''+@StagingSchemaName+''' AND StagingTableName = '''+@StagingTableName+''' AND StagingColumnName = '''+StagingColumnName+'''

	   
 COMMIT 

 --..................................................................

'
FROM ColumnNames

EXEC sp_Executesql @SQL
--EXECUTE bib.LongPrint @SQL


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[AnalyseTableForFloatColumnsStoredAsStringColumn]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[AnalyseTableForFloatColumnsStoredAsStringColumn] AS' 
END
GO

ALTER PROCEDURE [BIB].[AnalyseTableForFloatColumnsStoredAsStringColumn]
( @StagingSchemaName nvarchar( 255 )
, @StagingTableName nvarchar( 255 )
)
AS
/*+ Version alpha-0.1.0.986 20141005.170752 -------------------------------------------------------------- 
--Stored Procedure [bib].[AnalyseTableForFloatColumnsStoredAsStringColumn]

--An example of analysis you can run and feed back into the metadata prior to building the
--dimensions and ETL stored procedures.

--This routine looks into the values held in string columns to determine
--if the values are all floating point and best stored in the generated dimension
--as a floating point type.

--Ideally you would be able to get your data types fully sorted out in your model table
--but it is possible you are constrained by legacy ETL systems delivering data to your data warehouse.
---- -----------------------------------------------------------+*/
SET NOCOUNT ON

DECLARE @SQL nvarchar(MAX) 
DECLARE @Counter int = 1
DECLARE @MaxColumn int
DECLARE @StagingColumnName sysname

SET  @SQL = '-- ========================================================
-- BI Builder Analysis Script for source table  ['+@StagingSchemaName+'].['+@StagingTableName+'] 
DECLARE @NonNULLRowCount bigint
DECLARE @FloatValueCount bigint
'

SELECT @MaxColumn = MAX(OrdinalPosition) FROM bib.ColumnDefinitions  WHERE [StagingTableName]  =  @StagingTableName AND [StagingTableSchema]  =  @StagingSchemaName

;WITH StringColumns AS
(   SELECT 
		  ROW_NUMBER() OVER(ORDER BY OrdinalPosition ASC) AS [Column_Id]       
 	 
			  , @StagingSchemaName AS StagingSchemaName
			  , @StagingTableName  AS StagingTableName
			  , StagingColumnName
		  FROM
			  bib.ColumnDefinitions
		  WHERE
			  [StagingTableName]	     =	@StagingTableName 
		  AND  [StagingTableSchema]	=	@StagingSchemaName
		  AND  DataType		like '%char%'
		  AND  DataTypeBestAsInt =    0
		  AND CharacterMaximumLength BETWEEN 1 AND 256
)

SELECT @SQL = @SQL +

'

-- Analysing the string column 
--    ['+@StagingSchemaName+'].['+@StagingTableName+'] -> ['+StagingColumnName+'] against the sample data
--    to determine if the values are purely int values packed into text columns

SET XACT_ABORT ON ;
 BEGIN TRANSACTION ; 

SET @NonNULLRowCount = 0

SELECT  @NonNULLRowCount = COUNT(['+StagingColumnName+']) FROM ['+@StagingSchemaName+'].['+@StagingTableName+'] WHERE ['+StagingColumnName+'] IS NOT NULL

IF (@NonNULLRowCount > 0)
BEGIN

SELECT 	
	   @FloatValueCount = COUNT(*)
FROM	   ['+@StagingSchemaName+'].['+@StagingTableName+']
WHERE 
     ['+StagingColumnName+'] IS NOT NULL
	AND
	ISNUMERIC(['+StagingColumnName+']) = 1 AND CHARINDEX(['+StagingColumnName+'],''.'') > 0

	IF (@NonNULLRowCount = @FloatValueCount)
	BEGIN
	   
	   UPDATE [bib].[ColumnDefinitions]
		 SET 
			DataTypeBestAsNumeric = 1
	   FROM	 [bib].[ColumnDefinitions] 
	   WHERE   StagingTableSchema = '''+@StagingSchemaName+''' AND StagingTableName = '''+@StagingTableName+''' AND StagingColumnName = '''+StagingColumnName+'''
	END
	ELSE
	BEGIN
	     UPDATE [bib].[ColumnDefinitions]
		 SET 
			DataTypeBestAsNumeric = 0
	   FROM	 [bib].[ColumnDefinitions] 
	   WHERE   StagingTableSchema = '''+@StagingSchemaName+''' AND StagingTableName = '''+@StagingTableName+''' AND StagingColumnName = '''+StagingColumnName+'''
	END

END

 COMMIT 

'
FROM StringColumns

EXEC sp_Executesql @SQL
--EXECUTE bib.LongPrint @SQL


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[AnalyseTableForIntColumnsStoredAsFloatColumn]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[AnalyseTableForIntColumnsStoredAsFloatColumn] AS' 
END
GO

ALTER PROCEDURE [BIB].[AnalyseTableForIntColumnsStoredAsFloatColumn]
( @StagingSchemaName nvarchar( 255 )
, @StagingTableName nvarchar( 255 )
)
AS
/*+ Version alpha-0.1.0.990 20141005.170752 -------------------------------------------------------------- 
Stored Procedure  [bib].[AnalyseTableForIntColumnsStoredAsFloatColumn]

An example of analysis you can run and feed back into the metadata prior to building the
dimensions and ELT stored procedures.

This routine looks into the values held in floating point columns to determine
if the values are all integers and best stord in the generated dimension
as [int]s.

Ideally you would be able to get your data types fully sorted out in your model table
but it is possible you are constrained by legacy ETL systems delivering data to your data warehouse.
-- -----------------------------------------------------------+*/
SET NOCOUNT ON

DECLARE @SQL nvarchar(MAX) 
DECLARE @Counter int = 1
DECLARE @MaxColumn int
DECLARE @StagingColumnName sysname

SET  @SQL = '-- ========================================================
-- BI Builder Analysis Script for source table  ['+@StagingSchemaName+'].['+@StagingTableName+'] 
DECLARE @NonNULLRowCount bigint
DECLARE @IntValueCount bigint
'

SELECT @MaxColumn = MAX(OrdinalPosition) FROM bib.ColumnDefinitions  WHERE [StagingTableName]  =  @StagingTableName AND [StagingTableSchema]  =  '+@StagingSchemaName+'

;WITH NullableColumns AS
(   SELECT 
		  ROW_NUMBER() OVER(ORDER BY OrdinalPosition ASC) AS [Column_Id]       
 	 
			  , @StagingSchemaName AS StagingSchemaName
			  , @StagingTableName  AS StagingTableName
			  , StagingColumnName
		  FROM
			  bib.ColumnDefinitions
		  WHERE
			  [StagingTableName]	     =	@StagingTableName 
		  AND  [StagingTableSchema]	=	@StagingSchemaName
		  AND  (DataType		= 'double'
				OR
				DataType		= 'float'
				OR
				DataType		= 'numeric'
				OR
				DataType		= 'decimal' )
)

SELECT @SQL = @SQL +

'

-- Analysing the string column 
--    ['+@StagingSchemaName+'].['+@StagingTableName+'] -> ['+StagingColumnName+'] against the sample data
--    to determine if the values are purely int values packed into floating point columns

SET XACT_ABORT ON ;
 BEGIN TRANSACTION ; 

SET @NonNULLRowCount = 0

SELECT  @NonNULLRowCount = COUNT(['+StagingColumnName+']) FROM ['+@StagingSchemaName+'].['+@StagingTableName+'] WHERE ['+StagingColumnName+'] IS NOT NULL

IF (@NonNULLRowCount > 0)
BEGIN

SELECT 	
	   @IntValueCount = COUNT(*)
FROM	   ['+@StagingSchemaName+'].['+@StagingTableName+']
WHERE 
	CAST(['+StagingColumnName+'] AS Bigint) = ['+StagingColumnName+']

	IF (@NonNULLRowCount = @IntValueCount)
	BEGIN
	   
	   UPDATE [bib].[ColumnDefinitions]
		 SET 
			DataTypeBestAsInt = 1
	   FROM	 [bib].[ColumnDefinitions] 
	   WHERE   StagingTableSchema = '''+@StagingSchemaName+''' AND StagingTableName = '''+@StagingTableName+''' AND StagingColumnName = '''+StagingColumnName+'''
	END
	ELSE
	BEGIN
	     UPDATE [bib].[ColumnDefinitions]
		 SET 
			DataTypeBestAsInt = 0
	   FROM	 [bib].[ColumnDefinitions] 
	   WHERE   StagingTableSchema = '''+@StagingSchemaName+''' AND StagingTableName = '''+@StagingTableName+''' AND StagingColumnName = '''+StagingColumnName+'''
	END
END

 COMMIT 

'
FROM NullableColumns

EXEC sp_Executesql @SQL
--EXECUTE bib.LongPrint @SQL


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[AnalyseTableForIntColumnsStoredAsStringColumns]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[AnalyseTableForIntColumnsStoredAsStringColumns] AS' 
END
GO

ALTER PROCEDURE [BIB].[AnalyseTableForIntColumnsStoredAsStringColumns]
( @StagingSchemaName nvarchar( 255 )
, @StagingTableName nvarchar( 255 )
)
AS
/*+ Version alpha-0.1.0.994 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [bib].[AnalyseTableForIntColumnsStoredAsStringColumns]

An example of analysis you can run and feed back into the metadata prior to building the
dimensions and ETL stored procedures.

This routine looks into the values held in string columns to determine
if the values are all integers and best stord in the generated dimension
as [int]s.

Ideally you would be able to get your data types fully sorted out in your model table
but it is possible you are constrained by legacy ETL systems delivering data to your data warehouse.
-- -----------------------------------------------------------+*/
SET NOCOUNT ON

DECLARE @SQL nvarchar(MAX) 
DECLARE @Counter int = 1
DECLARE @MaxColumn int
DECLARE @StagingColumnName sysname

SET  @SQL = '-- ========================================================
-- BI Builder Analysis Script for source table  ['+@StagingSchemaName+'].['+@StagingTableName+'] 
DECLARE @NonNULLRowCount bigint
DECLARE @IntValueCount bigint
'

SELECT @MaxColumn = MAX(OrdinalPosition) FROM bib.ColumnDefinitions  WHERE [StagingTableName]  =  @StagingTableName AND [StagingTableSchema]  =  '+@StagingSchemaName+'

;WITH NullableColumns AS
(   SELECT 
		  ROW_NUMBER() OVER(ORDER BY OrdinalPosition ASC) AS [Column_Id]       
 	 
			  , @StagingSchemaName AS StagingSchemaName
			  , @StagingTableName  AS StagingTableName
			  , StagingColumnName
		  FROM
			  bib.ColumnDefinitions
		  WHERE
			  [StagingTableName]	     =	@StagingTableName 
		  AND  [StagingTableSchema]	=	@StagingSchemaName
		  AND  DataType		like '%char%'
		  AND CharacterMaximumLength BETWEEN 1 AND 256
)

SELECT @SQL = @SQL +

'

-- Analysing the string column 
--    ['+@StagingSchemaName+'].['+@StagingTableName+'] -> ['+StagingColumnName+'] against the sample data
--    to determine if the values are purely int values packed into text columns

SET XACT_ABORT ON ;
 BEGIN TRANSACTION ; 

SET @NonNULLRowCount = 0

--SELECT  @NonNULLRowCount = bib.RowCountOfTable(  '''+@StagingSchemaName+''' , '''+@StagingTableName+''')

SELECT  @NonNULLRowCount = COUNT(['+StagingColumnName+']) FROM ['+@StagingSchemaName+'].['+@StagingTableName+'] WHERE ['+StagingColumnName+'] IS NOT NULL

IF (@NonNULLRowCount > 0)
BEGIN

SELECT 	
	   @IntValueCount = COUNT(*)
FROM	   ['+@StagingSchemaName+'].['+@StagingTableName+']
WHERE 
	ISNUMERIC(['+StagingColumnName+']) = 1 AND ROUND(['+StagingColumnName+'],1,0)  = ['+StagingColumnName+']

	IF (@NonNULLRowCount = @IntValueCount)
	BEGIN
	   
	   UPDATE [bib].[ColumnDefinitions]
		 SET 
			DataTypeBestAsInt = 1
	   FROM	 [bib].[ColumnDefinitions] 
	   WHERE   StagingTableSchema = '''+@StagingSchemaName+''' AND StagingTableName = '''+@StagingTableName+''' AND StagingColumnName = '''+StagingColumnName+'''
	END
	ELSE
	BEGIN
	     UPDATE [bib].[ColumnDefinitions]
		 SET 
			DataTypeBestAsInt = 0
	   FROM	 [bib].[ColumnDefinitions] 
	   WHERE   StagingTableSchema = '''+@StagingSchemaName+''' AND StagingTableName = '''+@StagingTableName+''' AND StagingColumnName = '''+StagingColumnName+'''
	END

END

 COMMIT 

'
FROM NullableColumns

EXEC sp_Executesql @SQL
--EXECUTE bib.LongPrint @SQL 


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[AnalyseTableForIntColumnStoredAsFloatColumn]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[AnalyseTableForIntColumnStoredAsFloatColumn] AS' 
END
GO

ALTER PROCEDURE [BIB].[AnalyseTableForIntColumnStoredAsFloatColumn]
( @StagingSchemaName nvarchar( 255 )
, @StagingTableName nvarchar( 255 )
)
AS
/*+ Version alpha-0.1.0.998 20141005.170752 -------------------------------------------------------------- 
Stored Procedure  [bib].[AnalyseTableForIntColumnStoredAsFloatColumn]

An example of analysis you can run and feed back into the metadata.

This routine looks into the values held in floating point columns to determine
if the values are all integers and best stord in the generated dimension
as [int]s.

Ideally you would be able to get your data types fully sorted out in your model table
but it is possible you are constrained by legacy ETL systems delivering data to your data warehouse.
-- -----------------------------------------------------------+*/
SET NOCOUNT ON

DECLARE @SQL nvarchar(MAX) 
DECLARE @Counter int = 1
DECLARE @MaxColumn int
DECLARE @StagingColumnName sysname

SET  @SQL = '-- ========================================================
-- BI Builder Analysis Script for source table  ['+@StagingSchemaName+'].['+@StagingTableName+'] 
DECLARE @NonNULLRowCount bigint
DECLARE @IntValueCount bigint
'

SELECT @MaxColumn = MAX(OrdinalPosition) FROM bib.ColumnDefinitions  WHERE [StagingTableName]  =  @StagingTableName AND [StagingTableSchema]  =  '+@StagingSchemaName+'

;WITH NumericColumns AS
(   SELECT 
		  ROW_NUMBER() OVER(ORDER BY OrdinalPosition ASC) AS [Column_Id]       
 	 
			  , @StagingSchemaName AS StagingSchemaName
			  , @StagingTableName  AS StagingTableName
			  , StagingColumnName
		  FROM
			  bib.ColumnDefinitions
		  WHERE
			  [StagingTableName]	     =	@StagingTableName 
		  AND  [StagingTableSchema]	=	@StagingSchemaName
		  AND  (DataType		= 'double'
				OR
				DataType		= 'float'
				OR
				DataType		= 'numeric'
				OR
				DataType		= 'decimal' )
)

SELECT @SQL = @SQL +

'

-- Analysing the string column 
--    ['+@StagingSchemaName+'].['+@StagingTableName+'] -> ['+StagingColumnName+'] against the sample data
--    to determine if the values are purely int values packed into floating point columns

SET XACT_ABORT ON ;
 BEGIN TRANSACTION ; 

SET @NonNULLRowCount = 0

SELECT  @NonNULLRowCount = COUNT(['+StagingColumnName+']) FROM ['+@StagingSchemaName+'].['+@StagingTableName+'] WHERE ['+StagingColumnName+'] IS NOT NULL

IF (@NonNULLRowCount > 0)
BEGIN

SELECT 	
	   @IntValueCount = COUNT(*)
FROM	   ['+@StagingSchemaName+'].['+@StagingTableName+']
WHERE 
	CAST(['+StagingColumnName+'] AS Bigint) = ['+StagingColumnName+']

	IF (@NonNULLRowCount = @IntValueCount)
	BEGIN
	   
	   UPDATE [bib].[ColumnDefinitions]
		 SET 
			DataTypeBestAsInt = 1
	   FROM	 [bib].[ColumnDefinitions] 
	   WHERE   StagingTableSchema = '''+@StagingSchemaName+''' AND StagingTableName = '''+@StagingTableName+''' AND StagingColumnName = '''+StagingColumnName+'''
	END
	ELSE
	BEGIN
	     UPDATE [bib].[ColumnDefinitions]
		 SET 
			DataTypeBestAsInt = 0
	   FROM	 [bib].[ColumnDefinitions] 
	   WHERE   StagingTableSchema = '''+@StagingSchemaName+''' AND StagingTableName = '''+@StagingTableName+''' AND StagingColumnName = '''+StagingColumnName+'''
	END

END

 COMMIT 

'
FROM NumericColumns

EXEC sp_Executesql @SQL
--EXECUTE bib.LongPrint @SQL


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[AnalyseTableForNULLColumns]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[AnalyseTableForNULLColumns] AS' 
END
GO

ALTER PROCEDURE [BIB].[AnalyseTableForNULLColumns]
( @StagingSchemaName nvarchar( 255 )
, @StagingTableName nvarchar( 255 )
)
AS

/*+ Version alpha-0.1.0.1002 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [bib].[AnalyseTableForNULLColumns]

An example of analysis you can run and feedback into the metadata.

This routine looks into the values held in nullable columns to determine
what percentage of the values are NULLs.

If the column is rarely used, it might suit your requirements to exclude it
from being part of the generated dimension.
-- -----------------------------------------------------------+*/
SET NOCOUNT ON

DECLARE @SQL nvarchar(MAX) 
DECLARE @Counter int = 1
DECLARE @MaxColumn int
DECLARE @StagingColumnName sysname

SET  @SQL = '-- ========================================================
-- BI Builder Analysis Script for source table  ['+@StagingSchemaName+'].['+@StagingTableName+'] 
DECLARE @RowCount int
DECLARE @NULLRowCount int
'

SELECT @MaxColumn = MAX(OrdinalPosition) FROM bib.ColumnDefinitions  WHERE [StagingTableName]  =  @StagingTableName AND [StagingTableSchema]  =  '+@StagingSchemaName+'

;WITH NullableColumns AS
(   SELECT 
		  ROW_NUMBER() OVER(ORDER BY OrdinalPosition ASC) AS [Column_Id]       
 	 
			  , @StagingSchemaName AS StagingSchemaName
			  , @StagingTableName  AS StagingTableName
			  , StagingColumnName
		  FROM
			  bib.ColumnDefinitions
		  WHERE
			  [StagingTableName]	     =	@StagingTableName 
		  AND  [StagingTableSchema]	=	@StagingSchemaName
		  AND  [IsNullable]		=	1
)
 
SELECT @SQL = @SQL +

'

-- Analysing the nullable column 
--    ['+@StagingSchemaName+'].['+@StagingTableName+'] -> ['+StagingColumnName+'] against the sample data
--    to determine the percentage of records that are null 

SET XACT_ABORT ON ;
 BEGIN TRANSACTION ; 

   UPDATE [bib].[ColumnDefinitions]
		 SET 
			[IsAllNull] = 0
		    ,[NullPercent] = 0
	   FROM	 [bib].[ColumnDefinitions] 
	   WHERE   StagingTableSchema = '''+@StagingSchemaName+''' AND StagingTableName = '''+@StagingTableName+'''  AND  [IsNullable]		=	0

SET @RowCount = 0

SELECT  @RowCount = bib.RowCountOfTable(  '''+@StagingSchemaName+''' , '''+@StagingTableName+''')

UPDATE bib.TableDefinitions 
    SET RowCountWhenSampled = @RowCount
FROM bib.TableDefinitions 
WHERE StagingTableSchema = '''+@StagingSchemaName+''' AND StagingTableName = '''+@StagingTableName+'''

IF (@RowCount > 0)
BEGIN

SELECT 	
	   @NULLRowCount = COUNT(*)
FROM	   ['+@StagingSchemaName+'].['+@StagingTableName+']
WHERE 
	['+StagingColumnName+'] IS NULL

	IF (@RowCount = @NULLRowCount)
	BEGIN
	   
	   UPDATE [bib].[ColumnDefinitions]
		 SET 
			[IsAllNull] = 1
		    ,[NullPercent] = 100
	   FROM	 [bib].[ColumnDefinitions] 
	   WHERE   StagingTableSchema = '''+@StagingSchemaName+''' AND StagingTableName = '''+@StagingTableName+''' AND StagingColumnName = '''+StagingColumnName+'''
	END
	ELSE
	BEGIN
	     UPDATE [bib].[ColumnDefinitions]
		 SET 
			[IsAllNull] = 0
		    ,[NullPercent] = ROUND(((CAST(@NullRowCount AS float) / CAST(@RowCount AS float) ) * 100), 0 )
	   FROM	 [bib].[ColumnDefinitions]
	   WHERE   StagingTableSchema = '''+@StagingSchemaName+''' AND StagingTableName = '''+@StagingTableName+''' AND StagingColumnName = '''+StagingColumnName+'''
	END
	
END

COMMIT 

'
FROM NullableColumns

EXEC sp_Executesql @SQL
--EXECUTE bib.LongPrint @SQL


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ApplyVersionNumberToBIBuilderComponents]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[ApplyVersionNumberToBIBuilderComponents] AS' 
END
GO

/*

SET NOCOUNT ON
EXECUTE [bib].[BIB_Increment_Version_Revision] 'Testing'
EXECUTE [BIB].[ApplyVersionNumberToBIBuilderComponents]

*/

ALTER PROCEDURE [BIB].[ApplyVersionNumberToBIBuilderComponents]
AS
BEGIN
    SET NoCOUNT ON
    DECLARE @NewVersion nvarchar(50)
    SET @NewVersion = '/*+ Version ' + [bib].[BIBuilderCurrentVersion]() 

    DECLARE @VersionedObjectTable TABLE([id] int IDENTITY(1,1) NOT NULL, [object_id] int NOT NULL, [Object_Name] sysname NOT NULL, [SchemaName] sysname NOT NULL, [Type_Desc] sysname NOT NULL, [Modified_Date] DateTIme NOT NULL)

    INSERT INTO @VersionedObjectTable([object_id], [Object_Name],[SchemaName],[Type_Desc],[Modified_Date])
    SELECT p.[object_id], p.name,SCHEMA_NAME(p.schema_id),[Type_Desc],[Modify_Date]   FROM sys.all_objects  p
    INNER JOIN sys.all_sql_modules m ON m.object_id = p.object_id 
    WHERE m.definition LIKE '%/*+ Version%'
    AND p.name NOT IN ('ApplyVersionNumberToBIBuilderComponents')
    AND Type_Desc IN ('SQL_STORED_PROCEDURE', 'SQL_SCALAR_FUNCTION', 'SQL_TABLE_VALUED_FUNCTION')
    AND is_ms_shipped = 0

    DECLARE @RoutineBody nvarchar(MAX)
    DECLARE @NewRoutineBody nvarchar(MAX) 
    DECLARE @DROPScript nvarchar(MAX) 
    DECLARE @VersionTextPosition int
    DECLARE @VersionTextEndPosition int
    DECLARE @CurrentVersionText nvarchar(50)
    DECLARE @SchemaAuditId int
    DECLARE @Modified_Date_String  nvarchar(50)

	   
    DECLARE @Ctr int 
    SET @Ctr = 1

    WHILE EXISTS(SELECT [id] FROM @VersionedObjectTable WHERE [Id] = @Ctr)
    BEGIN
	   SELECT @RoutineBody = RTRIM(m.definition)
	   FROM sys.all_sql_modules m WHERE m.object_id = 
		  (SELECT [object_id] FROM @VersionedObjectTable WHERE [Id] = @Ctr)

	   SET @SchemaAuditId = 0
	   
	   SELECT @SchemaAuditId = MAX([SchemaAuditID])      
	   FROM [Audit].[SchemaAudit]
	   WHERE [Schema] = 'bib'
	   AND [Object] =  (SELECT [Object_Name] FROM @VersionedObjectTable WHERE [Id] = @Ctr)

	   SELECT @Modified_Date_String = [DWHUtils].[DateTimeToDateTimeString]([Modified_Date])  FROM @VersionedObjectTable WHERE [Id] = @Ctr
	  

	   SET @VersionTextPosition = CHARINDEX('/*+ Version',@RoutineBody,1)
	   --PRINT @VersionTextPosition
	   SET @VersionTextEndPosition = CHARINDEX('--',@RoutineBody,@VersionTextPosition)
	  -- PRINT @VersionTextEndPosition

	   SET @CurrentVersionText = SUBSTRING(@RoutineBody, @VersionTextPosition, @VersionTextEndPosition - @VersionTextPosition + 1)

	   --PRINT @CurrentVersionText
	   --PRINT @NewVersion
	   --SELECT * FROM sys.all_objects 

	  

	   SELECT @DROPScript = 
'IF EXISTS (SELECT * FROM sys.objects WHERE [object_id] = OBJECT_ID(N''['+SchemaName +'].['+[Object_Name]+']''))
DROP '+
CASE	   
    WHEN [Type_Desc] like '%STORED%' THEN 'PROCEDURE'
    ELSE 'FUNCTION'
END -- CASE

+' ['+SchemaName +'].['+[Object_Name]+']

GO

'
FROM @VersionedObjectTable WHERE [Id] = @Ctr

 WHILE CHARINDEX(CHAR(13)+CHAR(10)+CHAR(13)+CHAR(10)+CHAR(13)+CHAR(10),@RoutineBody) > 0
	   BEGIN
	     SET @RoutineBody = REPLACE(@RoutineBody, CHAR(13)+CHAR(10)+CHAR(13)+CHAR(10)+CHAR(13)+CHAR(10), CHAR(13)+CHAR(10)+CHAR(13)+CHAR(10))
	   END 

	   SET @NewRoutineBody = REPLACE(@RoutineBody, @CurrentVersionText, @NewVersion+'.'+LTRIM(ISNULL(@SchemaAuditId,0))+ ' ' +@Modified_Date_String+ ' -') + '
GO

'
	   EXECUTE [bib].[LongPrint] @DROPScript
	   EXECUTE [bib].[LongPrint]  @NewRoutineBody 
	   SET @Ctr = @Ctr + 1
    END
    

   -- SELECT * FROM @VersionedObjectTable
END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[AuditAddToTable]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[AuditAddToTable] AS' 
END
GO

ALTER PROCEDURE [BIB].[AuditAddToTable]
( @SchemaName sysname, @StagingTableName sysname)
AS
/*+ Version alpha-0.1.0.1006 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [bib].[AuditAddToTable]

Applies AutoAudit to a table using fixed settings.
-- -----------------------------------------------------------+*/

IF EXISTS (SELECT *
       FROM sys.objects
       WHERE object_id = OBJECT_ID( N'[Audit].[pAutoAudit]' )
         AND OBJECTPROPERTY( object_id , N'IsProcedure' ) = 1)
BEGIN

    EXECUTE bib.AuditDropFromTable @SchemaName, @StagingTableName

    DECLARE @ColumnNames varchar(max) = '<All>'
    DECLARE @StrictUserContext bit = 1
    DECLARE @LogSQL bit = 1
    DECLARE @BaseTableDDL bit = 1
    DECLARE @LogInsert tinyint = 2
    DECLARE @LogUpdate tinyint = 2
    DECLARE @LogDelete tinyint = 2 

    EXECUTE [Audit].[pAutoAudit] 
	  @SchemaName
	 ,@StagingTableName
	 ,@ColumnNames
	 ,@StrictUserContext
	 ,@LogSQL
	 ,@BaseTableDDL
	 ,@LogInsert
	 ,@LogUpdate
	 ,@LogDelete

END
ELSE
BEGIN
    PRINT 'BI BUILDER MESSAGE: You must have AutoAudit installed before it can be applied to the objects created by BI Builder'
END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[AuditDropFromTable]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[AuditDropFromTable] AS' 
END
GO

ALTER PROCEDURE [BIB].[AuditDropFromTable]
( @SchemaName sysname, @StagingTableName sysname)
AS
/*+ Version alpha-0.1.0.1010 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [bib].[AuditDropFromTable]

Removes AutoAudit from a table using fixed options 
-- -----------------------------------------------------------+*/

IF EXISTS (SELECT *
       FROM sys.objects
       WHERE object_id = OBJECT_ID( N'[Audit].[pAutoAuditDrop]' )
         AND OBJECTPROPERTY( object_id , N'IsProcedure' ) = 1)
BEGIN

    DECLARE @DropBaseTableDDLColumns bit = 1
    DECLARE @DropBaseTableTriggers bit = 1
    DECLARE @DropBaseTableViews bit = 1
 

    EXECUTE [Audit].[pAutoAuditDrop] 
	  @SchemaName
	 ,@StagingTableName
	 ,@DropBaseTableDDLColumns
	 ,@DropBaseTableTriggers
	 ,@DropBaseTableViews

END
ELSE
BEGIN
    PRINT 'BI BUILDER MESSAGE: You must have AutoAudit installed before it can be applied to the objects created by BI Builder'
END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[BIB_Increment_Version_Major]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[BIB_Increment_Version_Major] AS' 
END
GO

ALTER PROCEDURE [BIB].[BIB_Increment_Version_Major](@RevisionNotes nvarchar(MAX) = NULL)
AS
/*+ Version alpha-0.1.0.948 20141005.170751 -------------------------------------------------------------- 
Stored Procedure  [bib].[BIB_Increment_Version_Major]

Increments the minor major number of the current build 
-- -----------------------------------------------------------+*/
BEGIN

    WITH CurrentVersionRow AS
    (
    SELECT   VersionType
			 , MajorVersion
			 , MinorVersion
			 , Revision
       FROM bib.BIB_Versions
       WHERE BIBVersion_Id IN (SELECT MAX(BIBVersion_Id) FROM bib.BIB_Versions)

   )

INSERT INTO [bib].[BIB_Versions]
           ([MajorVersion]
           ,[MinorVersion]
           ,[Revision]
           ,[VersionType]
           ,[ReleaseNotes])
     SELECT 
		  [MajorVersion] + 1
           ,0  
           ,0
           ,[VersionType]
           ,@RevisionNotes
     FROM CurrentVersionRow

	 SELECT   VersionType
			 , MajorVersion
			 , MinorVersion
			 , Revision
       FROM bib.BIB_Versions
       WHERE BIBVersion_Id IN (SELECT MAX(BIBVersion_Id) FROM bib.BIB_Versions)

END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[BIB_Increment_Version_Minor]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[BIB_Increment_Version_Minor] AS' 
END
GO

ALTER PROCEDURE [BIB].[BIB_Increment_Version_Minor](@RevisionNotes nvarchar(MAX) = NULL)
AS
/*+ Version alpha-0.1.0.944 20141005.170751 -------------------------------------------------------------- 
Stored Procedure  [bib].[BIB_Increment_Version_Minor]

Increments the minor version number of the current build 
-- -----------------------------------------------------------+*/
BEGIN

    WITH CurrentVersionRow AS
    (
    SELECT   VersionType
			 , MajorVersion
			 , MinorVersion
			 , Revision
       FROM bib.BIB_Versions
       WHERE BIBVersion_Id IN (SELECT MAX(BIBVersion_Id) FROM bib.BIB_Versions)

   )

INSERT INTO [bib].[BIB_Versions]
           ([MajorVersion]
           ,[MinorVersion]
           ,[Revision]
           ,[VersionType]
           ,[ReleaseNotes])
     SELECT 
		  [MajorVersion]
           ,[MinorVersion]  + 1
           ,0
           ,[VersionType]
           ,@RevisionNotes
     FROM CurrentVersionRow

	 SELECT   VersionType
			 , MajorVersion
			 , MinorVersion
			 , Revision
       FROM bib.BIB_Versions
       WHERE BIBVersion_Id IN (SELECT MAX(BIBVersion_Id) FROM bib.BIB_Versions)

END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[BIB_Increment_Version_Revision]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[BIB_Increment_Version_Revision] AS' 
END
GO

ALTER PROCEDURE [BIB].[BIB_Increment_Version_Revision](@RevisionNotes nvarchar(MAX) = NULL)
AS
/*+ Version alpha-0.1.0.940 20141005.170750 -------------------------------------------------------------- 
Stored Procedure  [bib].[BIB_Increment_Version_Revision]

Increments the revision number of the current build 
-- -----------------------------------------------------------+*/
BEGIN

    WITH CurrentVersionRow AS
    (
    SELECT   VersionType
			 , MajorVersion
			 , MinorVersion
			 , Revision
       FROM bib.BIB_Versions
       WHERE BIBVersion_Id IN (SELECT MAX(BIBVersion_Id) FROM bib.BIB_Versions)

   )

INSERT INTO [bib].[BIB_Versions]
           ([MajorVersion]
           ,[MinorVersion]
           ,[Revision]
           ,[VersionType]
           ,[ReleaseNotes])
     SELECT 
		  [MajorVersion]
           ,[MinorVersion]
           ,[Revision] + 1
           ,[VersionType]
           ,@RevisionNotes
     FROM CurrentVersionRow

	 SELECT   VersionType
			 , MajorVersion
			 , MinorVersion
			 , Revision
       FROM bib.BIB_Versions
       WHERE BIBVersion_Id IN (SELECT MAX(BIBVersion_Id) FROM bib.BIB_Versions)

END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ColumnDefinitions_AddColumnsFromTable]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[ColumnDefinitions_AddColumnsFromTable] AS' 
END
GO

-- EXECUTE [BIB].[ColumnDefinitions_AddColumnsFromTable] 'Models', 'RescueCalls'

ALTER PROCEDURE [BIB].[ColumnDefinitions_AddColumnsFromTable]
( @StagingSchemaName nvarchar( 255 )
, @StagingTableName nvarchar( 255 )
)
AS
/*+ Version alpha-0.1.0.1014 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [bib].[ColumnDefinitions_AddColumnsFromTable]  

Captures the metadata for the columns in the staging table that will be used
to generate the dimensions and ETL stored procedures.
-- -----------------------------------------------------------+*/
BEGIN

    SET NOCOUNT ON;

    -- Clean out records from previous builds
     DELETE FROM  [bib].[ColumnDefinitions] 
    WHERE 
				StagingTableSchema = @StagingSchemaName 
				AND
				StagingTableName = @StagingTableName
    
    INSERT INTO  bib.ColumnDefinitions
				( 	  TableCatalog
					, StagingTableSchema
					, StagingTableName
					, StagingColumnName 
					, OrdinalPosition
					, ColumnDefault
					, IsNullable
					, DataType
					, CharacterMaximumLength
					, DataTypeBestAsInt
					, DataTypeBestAsNumeric
					, DataTypeBestAsDatetime
					, DimensionDataType
					, DimensionColumnName
					, IsAllNull
					, NullPercent
					, IncludeInDWH
					, UseColumnForSCD

				)
		  SELECT
				TOP ( 100 )  PERCENT
				 [TableCatalog]
				  ,[Schema]
				  ,[StagingTableName]
				  ,[ColumnName]
				  ,[OrdinalPosition]
				  ,[ColumnDefault]
				  ,[IsNullable]
				  ,[DataType]
				  ,[CharacterMaximumLength]
				  ,[DataTypeBestASInt]
				  ,[DataTypeBestASNumeric]
				  ,[DataTypeBestASDatetime]
				  ,[NewDataType]
				  ,[NewFieldName]
				  ,[IsAllNull]
				  ,[NullPercent]
				  ,[IncludeInDWH]
				  ,[UseColumnForSCD]
			   FROM [bib].[vwStagingColumnDefinitions]
			 WHERE [StagingTableName]
							 =
							 @StagingTableName
						  AND [Schema]
							 =
							 @StagingSchemaName
						  AND
			 [ColumnName] NOT IN (SELECT ColumnName FROM bib.ColumnDefinitions WHERE StagingTableName = @StagingTableName AND [Schema] = @StagingSchemaName )
	 ORDER BY	OrdinalPosition;

	  	 
	 --  UPDATE [bib].[ColumnDefinitions]
		-- SET [TableCatalog] = s.TableCatalog
		--    ,[StagingTableSchema] = s.[Schema] 
		--    ,[StagingTableName] = s.[StagingTableName]
		--    ,[StagingColumnName] = s.[ColumnName]
		--    ,[OrdinalPosition] = s.[OrdinalPosition]
		--    ,[ColumnDefault] = s.[ColumnDefault]
		--    ,[IsNullable] = s.[IsNullable]
		--    ,[DataType] = s.DataType 
		--    ,[CharacterMaximumLength] = s.CharacterMaximumLength 
		--    ,[DataTypeBestAsInt] = NULL 
		--    ,[DataTypeBestAsNumeric] = NULL
		--    ,[DataTypeBestAsDatetime] = NULL
		--    ,[DimensionDataType] = NULL
		--    ,[DimensionColumnName] = NULL
		--    ,[IsAllNull] = NULL
		--    ,[NullPercent] = NULL
		--    ,[IncludeInDWH] = 1
		--    ,[UseColumnForSCD] = 0
     
	 --   FROM [bib].[vwStagingColumnDefinitions] s
		--		INNER JOIN [bib].[ColumnDefinitions] cd
		--		ON cd.StagingTableSchema = s.[Schema] 
		--		AND
		--		cd.StagingTableName = s.StagingTableName 
		--		AND
		--		cd.StagingColumnName =  s.ColumnName
	 --WHERE s.StagingTableName 
		--		=
		--		@StagingTableName
		--	 AND s.[Schema] 
		--		=
		--		@StagingSchemaName

  --  -- Delete now non-existant columns

  --  DELETE FROM  [bib].[ColumnDefinitions] 
  --  WHERE 
		--		StagingTableSchema = @StagingSchemaName 
		--		AND
		--		StagingTableName = @StagingTableName
		--		AND
		--		StagingColumnName NOT IN  (SELECT ColumnName FROM bib.vwStagingColumnDefinitions WHERE StagingTableName = @StagingTableName AND [Schema] = @StagingSchemaName )

    SET NOCOUNT OFF;
END;


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ColumnDefinitions_AddETLColumnsFromTable]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[ColumnDefinitions_AddETLColumnsFromTable] AS' 
END
GO

ALTER PROCEDURE [BIB].[ColumnDefinitions_AddETLColumnsFromTable]
( @StagingSchemaName nvarchar( 255 )
, @StagingTableName nvarchar( 255 )
)
AS
/*+ Version alpha-0.1.0.1018 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [bib].[ColumnDefinitions_AddETLColumnsFromTable]

Called from within the ETL build process, this routine captures the metadata 
for the specialised ETL management fields that have been automatically 
added to the staging table.
-- -----------------------------------------------------------+*/
BEGIN

    SET NOCOUNT ON;
    SET XACT_ABORT ON
    BEGIN TRANSACTION

    -- Add new columns

    IF NOT EXISTS(
	   SELECT StagingColumnName
		 FROM bib.ColumnDefinitions
		 WHERE StagingTableName = @StagingTableName
		   AND StagingTableSchema = @StagingSchemaName
		   AND StagingColumnName IN ( 'Staging_Id' , 'ETLBatch_Id' , 'DataState_Id' , 'SourceSystem_Id' )
    )
    BEGIN

    INSERT INTO  bib.ColumnDefinitions
				( 	  TableCatalog
					, StagingTableSchema
					, StagingTableName
					, StagingColumnName 
					, OrdinalPosition
					, ColumnDefault
					, IsNullable
					, DataType
					, CharacterMaximumLength
					, DataTypeBestAsInt
					, DataTypeBestAsNumeric
					, DataTypeBestAsDatetime
					, DimensionDataType
					, DimensionColumnName
					, IsAllNull
					, NullPercent
					, IncludeInDWH
					, UseColumnForSCD

				)
		  SELECT
				TOP ( 100 )  PERCENT
				 [TableCatalog]
				  ,[Schema]
				  ,[StagingTableName]
				  ,[ColumnName]
				  ,[OrdinalPosition]
				  ,[ColumnDefault]
				  ,[IsNullable]
				  ,[DataType]
				  ,[CharacterMaximumLength]
				  ,[DataTypeBestASInt]
				  ,[DataTypeBestASNumeric]
				  ,[DataTypeBestASDatetime]
				  ,'int'
				  ,[NewFieldName]
				  ,[IsAllNull]
				  ,[NullPercent]
				  ,[IncludeInDWH]
				  ,[UseColumnForSCD]
			   FROM [bib].[vwStagingColumnDefinitions]
			 WHERE [StagingTableName]
							 =
							 @StagingTableName
						  AND [Schema]
							 =
							 @StagingSchemaName
						  AND
			 [ColumnName] IN ('Staging_Id', 'ETLBatch_Id', 'DataState_Id', 'SourceSystem_Id')
	 ORDER BY	OrdinalPosition;

	  UPDATE [bib].[ColumnDefinitions]
	   SET	  IncludeInDWH = 1, IsNullable = 0
	   FROM	  [bib].[ColumnDefinitions]
	   WHERE
			 StagingTableSchema	   = @StagingSchemaName 
			 AND
			 StagingTableName	   = @StagingTableName
			 AND
			 StagingColumnName  IN ('Staging_Id', 'ETLBatch_Id', 'DataState_Id', 'SourceSystem_Id')

     UPDATE [bib].[ColumnDefinitions]
	   SET	  IsBusinessKey = 1
	   FROM	  [bib].[ColumnDefinitions]
	   WHERE
			 StagingTableSchema	   = @StagingSchemaName 
			 AND
			 StagingTableName	   = @StagingTableName
			 AND
			 StagingColumnName = 'SourceSystem_Id'

    UPDATE [bib].[ColumnDefinitions]
	   SET	  IsBusinessKey = 1
	   FROM	  [bib].[ColumnDefinitions]
	   WHERE
			 StagingTableSchema	   = @StagingSchemaName 
			 AND
			 StagingTableName	   = @StagingTableName
			 AND
			 StagingColumnName = 'SourceSystem_Id'

	 -- update existing columns
	 
	   UPDATE [bib].[ColumnDefinitions]
		 SET [OrdinalPosition] = s.[OrdinalPosition]     
	    FROM [bib].[vwStagingColumnDefinitions] s
				INNER JOIN [bib].[ColumnDefinitions] cd
				ON cd.StagingTableSchema = s.[Schema] 
				AND
				cd.StagingTableName = s.StagingTableName 
				AND
				cd.StagingColumnName =  s.ColumnName
	 WHERE s.StagingTableName 
				=
				@StagingTableName
			 AND s.[Schema] 
				=
				@StagingSchemaName
				END

     COMMIT
	
    SET NOCOUNT OFF;
END;


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ConvertBusinessKeysToUniqueIndexOnStagingTable]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[ConvertBusinessKeysToUniqueIndexOnStagingTable] AS' 
END
GO

ALTER PROCEDURE [BIB].[ConvertBusinessKeysToUniqueIndexOnStagingTable]
(
  @StagingSchemaName nvarchar( 255 )
, @StagingTableName nvarchar( 255 )
, @Filegroup nvarchar(255)
)
AS
/*+ Version alpha-0.1.0.1022 20141005.170752 -------------------------------------------------------------- 
Stored Procedure  [bib].[ConvertBusinessKeysToUniqueIndexOnStagingTable]

Called from within the ETL build process, this routine takes those fields flagged
as business keys earlier on and uses them to make a unique index to enforce no duplicates.

The SourceSysytem_Id field will also be part of that unique index.

The index is also applied to the generated dimension table when it gets built later on.
-- -----------------------------------------------------------+*/
BEGIN

SET NOCOUNT ON

DECLARE @SQL nvarchar(MAX)
DECLARE @IndexColumns nvarchar(1024)
DECLARE @IndexColumnCount int

-- Check that we have more keys than simply staging_Id
SELECT @IndexColumnCount = COUNT(*)
FROM bib.ColumnDefinitions cd
WHERE StagingTableSchema = @StagingSchemaName
    AND StagingTableName = @StagingTableName 
    AND
    IsBusinessKey = 1

IF @IndexColumnCount <2
BEGIN
    DECLARE @MSg nvarchar(MAX)
    SET @Msg = 'BI Builder did not find a primary key in the staging table it can turn into a unique index:
    
    The error was raised in [bib].[ConvertBusinessKeysToUniqueIndexOnStagingTable]
    '
    RAISERROR(@Msg, 16,1)
    RETURN
END

SET @SQL= ''
SET @IndexColumns = NULL
 
SELECT @IndexColumns = ISNULL(@IndexColumns+',','') + 
	   '['+StagingColumnName +'] ASC'
FROM bib.ColumnDefinitions cd
WHERE StagingTableSchema = @StagingSchemaName
    AND StagingTableName = @StagingTableName 
    AND
    IsBusinessKey = 1

SELECT @SQL = 
'
SET XACT_ABORT ON
BEGIN TRANSACTION

CREATE UNIQUE NONCLUSTERED INDEX [BK_'+@StagingSchemaName+'_'+@StagingTableName+'] ON ['+@StagingSchemaName+'].['+@StagingTableName+']
(
	'+@IndexColumns+'
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON ['+[bib].[FileGroupThatThisTableIsIn](@StagingSchemaName,@StagingTableName )+']

COMMIT
'
  --EXEC bib.LongPrint @SQL
  EXEC sp_ExecuteSQL @SQL

END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[CreateColumnNamesForDimension]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[CreateColumnNamesForDimension] AS' 
END
GO

ALTER PROCEDURE [BIB].[CreateColumnNamesForDimension]
( @StagingSchemaName nvarchar( 255 )
  ,
  @StagingTableName nvarchar( 255 )
)
AS
/*+ Version alpha-0.1.0.1026 20141005.170752 -------------------------------------------------------------- 
Stored Procedure  [bib].[CreateColumnNamesForDimension]

Called from within the ETL build process, this routine uses a function
to determine the best names for the generated dimension table columns.

The logic for the name transformation rules are contained within
bib.MakeDimensionColumnNameFromStagingColumn.

You would use this to make the column names that report users will ultimately
see as readable as they can be.

For example, your data source might use abbreviations for common terms such as "cust" for "Customer" or "prd" for "Product"

If the function bib.MakeDimensionColumnNameFromStagingColumn, you can set a rule that expands this out to "Customer".

The function also introduces "_" to PascalCase field names, converting a field like "CustOrder" to "Customer_Order" 
in the generated dimension.

When that field is imported into Analysis Services, it will read to the end consumer as "Customer Order" without you
having to edit anything.

Do note that the routine does not meddle with fields that end in "Id" as these are most likely keys and there are benefits in keeping these names
consistent with the source. These fields are also unlikely to appear in user reports and so there would be little to gain by transforming them.
-- -----------------------------------------------------------+*/
BEGIN

    SET XACT_ABORT ON;
    BEGIN TRANSACTION;

    UPDATE bib.ColumnDefinitions
    SET
    DimensionColumnName = bib.MakeDimensionColumnNameFromStagingColumn( StagingColumnName, @StagingTableName )
        FROM  bib.ColumnDefinitions
           WHERE StagingTableSchema = @StagingSchemaName
             AND StagingTableName = @StagingTableName

    COMMIT
END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[CreateDataTypesForDimension]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[CreateDataTypesForDimension] AS' 
END
GO

ALTER PROCEDURE [BIB].[CreateDataTypesForDimension]
( @StagingSchemaName nvarchar( 255 )
  ,
  @StagingTableName nvarchar( 255 )
)
AS
/*+ Version alpha-0.1.0.1030 20141005.170752 -------------------------------------------------------------- 
Stored Procedure  [bib].[CreateDataTypesForDimension]

Called within the ETL build process, this routine examines the data types
used in the staging table and determines the data types to be used in the dimension
table.

Thescalar functions that specify the rules are:
    bib.MakeDimensionDataTypeFromStagingColumn
    bib.MakeDimensionDataTypeLengthFromStagingColumn

If you want to create your own rules, edit those scalar functions above.
-- -----------------------------------------------------------+*/
BEGIN

    SET XACT_ABORT ON;
    BEGIN TRANSACTION;

    UPDATE bib.ColumnDefinitions
    SET
       DimensionDataType  = bib.MakeDimensionDataTypeFromStagingColumn( StagingColumnName, DataType, CharacterMaximumLength )
    ,  DimensionDataTypeLength   = bib.MakeDimensionDataTypeLengthFromStagingColumn( StagingColumnName,  DataType, CharacterMaximumLength )
        FROM  bib.ColumnDefinitions
           WHERE StagingTableSchema = @StagingSchemaName
             AND StagingTableName = @StagingTableName

    -- if we have converted varchars to nvarchars, we need to double the space required

    UPDATE bib.ColumnDefinitions
    SET
        DimensionDataTypeLength   = DimensionDataTypeLength * 2
        FROM  bib.ColumnDefinitions
           WHERE StagingTableSchema = @StagingSchemaName
             AND StagingTableName = @StagingTableName
		   AND DimensionDataType = 'n' + DataType
		   AND CharacterMaximumLength > -1

    COMMIT
END


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[CreateStagingTableFromModel]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[CreateStagingTableFromModel] AS' 
END
GO

ALTER PROCEDURE [BIB].[CreateStagingTableFromModel](
      @ModelSchemaName nvarchar(255)
    , @ModelTableName nvarchar(255)
    , @StagingFilegroupName nvarchar(255)
    , @StagingSchemaName nvarchar(255)
    , @StagingTableName nvarchar(255)
    , @ExecuteGeneratedScript bit = 0
)
AS

/*+ Version alpha-0.1.0.1038 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [bib].[CreateStagingTableFromModel] 

Called form within the ETL build process, this routine creates and 
executes a script to build the staging table from your model table.

-- -----------------------------------------------------------+*/
BEGIN

DECLARE 
      @object_name SYSNAME
    , @object_id INT

DECLARE @Error int

SELECT 
      @object_name = '[' + s.name + '].[' + o.name + ']'
    , @object_id = o.[object_id]
FROM sys.objects o WITH (NOWAIT)
JOIN sys.schemas s WITH (NOWAIT) ON o.[schema_id] = s.[schema_id]
WHERE s.name  = @ModelSchemaName
AND o.name = @ModelTableName
    AND o.[type] = 'U'
    AND o.is_ms_shipped = 0

    --PRINT @object_id
    --PRINT @object_name

   EXEC  [bib].[ForceSchemaCreation] @StagingSchemaName

DECLARE @SQL NVARCHAR(MAX) = ''
DECLARE @DropScriptSQL NVARCHAR(MAX) = ''

SET @DropScriptSQL =  
'IF EXISTS (SELECT * FROM sys.objects WHERE [object_id] = OBJECT_ID(N''['+@StagingSchemaName+'].[' + @StagingTableName + ']'') and OBJECTPROPERTY([object_id], N''IsTable'') = 1)
DROP TABLE ['+@StagingSchemaName+'].[' + @StagingTableName + ']

'

;WITH index_column AS 
(
    SELECT 
          ic.[object_id]
        , ic.index_id
        , ic.is_descending_key
        , ic.is_included_column
        , c.name
    FROM sys.index_columns ic WITH (NOWAIT)
    JOIN sys.columns c WITH (NOWAIT) ON ic.[object_id] = c.[object_id] AND ic.column_id = c.column_id
    WHERE ic.[object_id] = @object_id
)

SELECT @SQL = 'CREATE TABLE [' + @StagingSchemaName +'].['+ @StagingTableName +']' + CHAR(13) + '(' + CHAR(13) + STUFF((
    SELECT CHAR(9) + ', [' + c.name + '] ' + 
        CASE WHEN c.is_computed = 1
            THEN 'AS ' + cc.[definition] 
            ELSE UPPER(tp.name) + 
                CASE WHEN tp.name IN ('varchar', 'char', 'varbinary', 'binary', 'text')
                       THEN '(' + CASE WHEN c.max_length < 1 THEN 'MAX' ELSE CAST(c.max_length AS VARCHAR(5)) END + ')'
                     WHEN tp.name IN ('nvarchar', 'nchar', 'ntext')
                       THEN '(' + CASE WHEN c.max_length < 1  THEN 'MAX' ELSE CAST(c.max_length / 2 AS VARCHAR(5)) END + ')' --CAST(tp.max_length / 2 AS VARCHAR(5)) END + ')'
                     WHEN tp.name IN ('datetime2', 'time2', 'datetimeoffset') 
                       THEN '(' + CAST(c.scale AS VARCHAR(5)) + ')'
                     WHEN tp.name = 'decimal' 
                       THEN '(' + CAST(c.[precision] AS VARCHAR(5)) + ',' + CAST(c.scale AS VARCHAR(5)) + ')'
				
                    ELSE ''
                END +
                CASE WHEN c.collation_name IS NOT NULL THEN ' /* COLLATE ' + c.collation_name +' */' ELSE '' END +
                CASE WHEN c.is_nullable = 1 THEN ' NULL' ELSE ' NOT NULL' END +
                CASE WHEN dc.[definition] IS NOT NULL THEN ' DEFAULT' + dc.[definition] ELSE '' END + 
                CASE WHEN ic.is_identity = 1 THEN ' /* IDENTITY(' + CAST(ISNULL(ic.seed_value, '0') AS CHAR(1)) + ',' + CAST(ISNULL(ic.increment_value, '1') AS CHAR(1)) + ') */' ELSE '' END 
        END + CHAR(13)

FROM            sys.columns AS c WITH (NOWAIT) INNER JOIN
                         sys.types AS tp WITH (NOWAIT) ON c.user_type_id = tp.user_type_id LEFT OUTER JOIN
                         sys.computed_columns AS cc WITH (NOWAIT) ON c.object_id = cc.object_id AND c.column_id = cc.column_id LEFT OUTER JOIN
                         sys.default_constraints AS dc WITH (NOWAIT) ON c.default_object_id <> 0 AND c.object_id = dc.parent_object_id AND 
                         c.column_id = dc.parent_column_id LEFT OUTER JOIN
                         sys.identity_columns AS ic WITH (NOWAIT) ON c.is_identity = 1 AND c.object_id = ic.object_id AND c.column_id = ic.column_id 

    WHERE c.[object_id] = @object_id  
    ORDER BY c.column_id
    FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 2, CHAR(9) + ' ')
    +  ISNULL((SELECT CHAR(9) + ', CONSTRAINT [PK_' + @StagingSchemaName +'_'+ @StagingTableName +'_SID] PRIMARY KEY (' + 
                    (SELECT STUFF((
                         SELECT ', [' + col.name  + '] ' + CASE WHEN indcol.is_descending_key = 1 THEN 'DESC' ELSE 'ASC' END
                         FROM            sys.tables AS ta INNER JOIN
                         sys.indexes AS ind ON ind.object_id = ta.object_id INNER JOIN
                         sys.index_columns AS indcol ON indcol.object_id = ta.object_id AND indcol.index_id = ind.index_id INNER JOIN
                         sys.columns AS col ON col.object_id = ta.object_id AND col.column_id = indcol.column_id 
                         WHERE indcol.is_included_column = 0
                             AND indcol.[object_id] = k.parent_object_id 
                             AND indcol.index_id = k.unique_index_id     
                         FOR XML PATH(N''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 2, ''))
            + ')' + CHAR(13)
            FROM sys.key_constraints k WITH (NOWAIT)
            WHERE k.parent_object_id = @object_id 
                AND k.[type] = 'PK'),'') + ')'  + CHAR(13)

DECLARE @SQL2 nvarchar(MAX)
SET @SQL2 = '----- Check Constraints -----

'
SELECT @SQL2 = @SQL2 + 
'
ALTER TABLE [' + @StagingSchemaName+'].['+ @StagingTableName  +'] ADD CONSTRAINT CK_' + @StagingSchemaName+'_'+ @StagingTableName  + '_'+ sys.columns.name  +'
    CHECK '+ definition +'
    '

FROM            sys.check_constraints INNER JOIN
                         sys.schemas ON sys.check_constraints.schema_id = sys.schemas.schema_id INNER JOIN
                         sys.columns ON sys.check_constraints.parent_object_id = sys.columns.object_id AND 
                         sys.check_constraints.parent_column_id = sys.columns.column_id  INNER JOIN
                         sys.tables ON sys.schemas.schema_id = sys.tables.schema_id AND sys.columns.object_id = sys.tables.object_id
WHERE 
 SCHEMA_NAME(sys.tables.schema_id)  = @ModelSchemaName
AND 
sys.tables.name = @ModelTableName

SET @SQL = 'SET XACT_ABORT ON
BEGIN TRANSACTION
'+@SQL +'
'
+ @SQL2  +'

COMMIT
'

IF (@ExecuteGeneratedScript = 0) -- only display the script
BEGIN
    EXECUTE [bib].[LongPrint] @DropScriptSQL 
    PRINT '
GO

'
    EXECUTE [bib].[LongPrint] @SQL
    RETURN 0
END
ELSE
BEGIN
    EXECUTE sp_ExecuteSQL  @DropScriptSQL 

    EXECUTE sp_ExecuteSQL  @SQL 	
    SET @Error = @@ERROR

    -- Now populate the table from the model

    DECLARE @PopScript nvarchar(1024)
    SET @PopScript = 
    'INSERT INTO ['+@StagingSchemaName+'].['+@StagingTableName+']  SELECT * FROM ['+@ModelSchemaName+'].['+@ModelTableName+'] 
    '
     EXECUTE sp_ExecuteSQL  @PopScript	
	--EXEC bib.LongPrint @PopScript 	
	RETURN @Error	    
END
END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[DeletePrimaryKeyFromStagingTable]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[DeletePrimaryKeyFromStagingTable] AS' 
END
GO

ALTER PROCEDURE [BIB].[DeletePrimaryKeyFromStagingTable]
(
  @StagingSchemaName nvarchar( 255 )
, @StagingTableName nvarchar( 255 )
)
AS
/*+ Version alpha-0.1.0.1042 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [bib].[DeletePrimaryKeyFromStagingTable]

Called from within the ETL build process, this routine removes the
primary key from the staging table and replaces with a surrogate key.

The original primary key has already been noted and flagged as a "business Key"
to be used in the logic of the generated ETL stored procedures.
-- -----------------------------------------------------------+*/
BEGIN

SET NOCOUNT ON

DECLARE @IndexName sysname
DECLARE @SQL nvarchar(MAX)

-- We will only play with the primary keys if we haven't already been through this process.
-- To allow a full recapture of the staging table metadata, run the routine:
-- EXECUTE [bib].[RemoveTableMetadataFromBIBuilder] '<schema>', 'table>'

IF NOT EXISTS(

	   SELECT StagingColumnName
			FROM bib.ColumnDefinitions
			WHERE StagingTableSchema = @StagingSchemaName
			  AND StagingTableName = @StagingTableName
			  AND StagingColumnName = 'Staging_Id'

)
    BEGIN

SET @SQL= ''

SELECT        @IndexName = sys.indexes.name
       FROM
            sys.indexes
            INNER JOIN sys.tables ON sys.indexes.object_id = sys.tables.object_id
            INNER JOIN sys.schemas ON sys.tables.schema_id = sys.schemas.schema_id
       WHERE sys.indexes.is_primary_key = 1
        AND sys.tables.name = @StagingTableName
        AND sys.schemas.name = @StagingSchemaName

SELECT @SQL = @SQL +
'
SET XACT_ABORT ON
BEGIN TRANSACTION
ALTER TABLE '+@StagingSchemaName+'.'+@StagingTableName+'
	DROP CONSTRAINT '+@IndexName+'

ALTER TABLE  '+@StagingSchemaName+'.'+@StagingTableName+' SET (LOCK_ESCALATION = TABLE)

COMMIT
'
    --EXEC bib.LongPrint @SQL
   EXEC sp_ExecuteSQL @SQL
END

END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[DetectIdentityColumnInStagingTable]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[DetectIdentityColumnInStagingTable] AS' 
END
GO

ALTER PROCEDURE [BIB].[DetectIdentityColumnInStagingTable]
( @StagingSchemaName nvarchar( 255 )
, @StagingTableName nvarchar( 255 )
)
AS
/*+ Version alpha-0.1.0.1046 20141005.170752 -------------------------------------------------------------- 
Stored Procedure  [bib].[DetectIdentityColumnInStagingTable]

A check routine run from within the ETL build process to verify there 
is no IDENTITY column other than Staging_Id on the staging table.
-- -----------------------------------------------------------+*/
BEGIN
IF EXISTS(
   SELECT   
		   1
		 FROM
			 sys.columns c
			 INNER JOIN sys.objects o ON c.object_id = o.object_id
			 INNER JOIN sys.schemas s ON s.schema_id = o.schema_id
			 					AND c.object_id = o.object_id
          
		 WHERE o.Name = @StagingTableName
		   AND s.name = @StagingSchemaName
		   AND c.is_identity = 1
		   AND c.Name NOT IN ('Staging_Id')
	   )
	   BEGIN
		  RAISERROR ('Staging Table contains an IDENTITY column - this attribute must be removed in order to run BI Builder.', 
               16, 
               1  
               );
	   END
END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ExcludeColumnsFromDWHBasedOnRules]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[ExcludeColumnsFromDWHBasedOnRules] AS' 
END
GO

ALTER PROCEDURE [BIB].[ExcludeColumnsFromDWHBasedOnRules]
(@StagingSchemaName sysname, @StagingTableName sysname)
AS
/*+ Version alpha-0.1.0.1048 20141005.170752 -------------------------------------------------------------- 
Stored Procedure  [bib].[ExcludeColumnsFromDWHBasedOnRules]

Called automatically from within the ETL build process, this routine
applies rules you specify to exclude staging columns from being represented
within the generated dimension table.

All the tables in your data source might have a commonly named field that you know to be useless
from a data warehouse perspective. This lets you set a rule to exclude themwithout you having to think
about it each time to build a new dimension.

There is a commented-out example rule that would have you exclude any column where the sample data
is 100% NULL.
-- -----------------------------------------------------------+*/
BEGIN

    PRINT 'BI Builder Note:No column exclusion rules active'

 -- Reset all columns to be included 
--UPDATE [bib].[ColumnDefinitions]
--   SET [IncludeInDWH] = 1
-- FROM   [bib].[ColumnDefinitions]
-- WHERE StagingTableName = @StagingTableName AND StagingTableSchema = @StagingSchemaName

 /*  
-- EXAMPLE OF EXCLUSION RULE: Exclude all columns that are flagged at 100% NULL (the assumption being this field is no longer used in the source system)
UPDATE [bib].[ColumnDefinitions]
   SET [IncludeInDWH] = 0
 FROM   [bib].[ColumnDefinitions]
 WHERE StagingTableName = @StagingTableName AND StagingTableSchema = @StagingSchemaName
    AND NullPercent = 100
    AND StagingColumnName NOT IN ('IsDeleted')
*/

END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ExtractDocumentationFromBIBuilderComponents]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[ExtractDocumentationFromBIBuilderComponents] AS' 
END
GO

ALTER PROCEDURE [BIB].[ExtractDocumentationFromBIBuilderComponents]
AS
/*+ Version alpha-0.1.0.1052 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [bib].[ExtractDocumentationFromBIBuilderComponents]

This routine extracts the documentation from BIB Builder objects
such as stored procedures and functions.
-- -----------------------------------------------------------+*/
BEGIN
    SET NOCOUNT ON   

    DECLARE @DocumentedObjectTable TABLE([id] int IDENTITY(1,1) NOT NULL, [object_id] int NOT NULL, [Object_Name] sysname NOT NULL)

    INSERT INTO @DocumentedObjectTable([object_id], [Object_Name])
    SELECT p.[object_id], p.name  FROM sys.all_objects  p
    INNER JOIN sys.all_sql_modules m ON m.object_id = p.object_id 
    WHERE m.definition LIKE '%/*+ Version %'
    AND  p.type_desc IN ('SQL_STORED_PROCEDURE', 'SQL_SCALAR_FUNCTION')
    ORDER BY p.name  
    
    DECLARE @RoutineBody nvarchar(MAX)
    DECLARE @NewRoutineBody nvarchar(MAX) 
    DECLARE @DocumentationTextPosition int
    DECLARE @DocumentationTextEndPosition int
    DECLARE @CurrentDocumentationText nvarchar(MAX)
    DECLARE @SchemaAuditId int
    DECLARE @ObjectName sysname
	   
    DECLARE @Ctr int 
    SET @Ctr = 1

    PRINT '
<HTML>
<HEAD>
</HEAD>
<BODY>
'

    WHILE EXISTS(SELECT [id] FROM @DocumentedObjectTable WHERE [Id] = @Ctr)
    BEGIN
	   SELECT @RoutineBody = m.definition
	   FROM sys.all_sql_modules m WHERE m.object_id = 
		  (SELECT [object_id] FROM @DocumentedObjectTable WHERE [Id] = @Ctr)

	   SET @DocumentationTextPosition = CHARINDEX('/*+ Version ',@RoutineBody,1)
	   SET @DocumentationTextEndPosition = CHARINDEX('+*/',@RoutineBody,@DocumentationTextPosition)
	   
		IF @DocumentationTextEndPosition > @DocumentationTextPosition
		BEGIN
		  SET @CurrentDocumentationText = SUBSTRING(@RoutineBody, @DocumentationTextPosition, @DocumentationTextEndPosition - @DocumentationTextPosition + 1)
		  SET @CurrentDocumentationText = SUBSTRING(@CurrentDocumentationText, CHARINDEX(CHAR(10),@CurrentDocumentationText,1), LEN(@CurrentDocumentationText))

		  WHILE CHARINDEX('--',@CurrentDocumentationText) > 1
		  BEGIN
			 SET @CurrentDocumentationText = REPLACE(@CurrentDocumentationText ,'--','')
		  END

		  SET @CurrentDocumentationText = REPLACE(@CurrentDocumentationText ,'-+','')
		  SELECT @ObjectName = [Object_Name] FROM @DocumentedObjectTable WHERE [Id] = @Ctr

		  PRINT '<h3>'+@ObjectName+'</h3>'
		  PRINT '<p>'+ REPLACE(@CurrentDocumentationText,CHAR(13)+CHAR(10)+CHAR(13)+CHAR(10), '</p><p>') + '</p>'
		  PRINT '

'	   
	   END
	   SET @Ctr = @Ctr + 1
    END
    PRINT '

</BODY>
</HTML>
'
END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ExtractDocumentationFromBIBuilderComponents_DependencyVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[ExtractDocumentationFromBIBuilderComponents_DependencyVersion] AS' 
END
GO

ALTER PROCEDURE [BIB].[ExtractDocumentationFromBIBuilderComponents_DependencyVersion]
AS
/*+ Version alpha-0.1.0.1052 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [bib].[ExtractDocumentationFromBIBuilderComponents_DependencyVersion]

This routine extracts the documentation from BIB Builder objects in the order in which they have been mapped in the
the Dependencies table using " EXECUTE [DWHUtils].Dependencies_MapAll_For_Procedure 'bib', 'ROUTINE_NAME_HERE' ,  1"
-- -----------------------------------------------------------+*/
BEGIN
    SET NOCOUNT ON   

    DECLARE @DocumentedObjectTable TABLE([id] int IDENTITY(1,1) NOT NULL, [object_id] int NOT NULL, [Object_Name] sysname NOT NULL)

    INSERT INTO @DocumentedObjectTable([object_id], [Object_Name])
    SELECT        TOP (100) PERCENT p.object_id, p.name
    FROM            sys.all_objects AS p INNER JOIN
					    sys.all_sql_modules AS m ON m.object_id = p.object_id INNER JOIN
					    DWHUtils.Dependencies ON p.name = DWHUtils.Dependencies.referenced_entity_name
    WHERE        (m.definition LIKE '%/*+ Version %') AND (p.type_desc IN ('SQL_STORED_PROCEDURE', 'SQL_SCALAR_FUNCTION'))
    ORDER BY DWHUtils.Dependencies.Dependencies_Id, p.name
    
    DECLARE @RoutineBody nvarchar(MAX)
    DECLARE @NewRoutineBody nvarchar(MAX) 
    DECLARE @DocumentationTextPosition int
    DECLARE @DocumentationTextEndPosition int
    DECLARE @CurrentDocumentationText nvarchar(MAX)
    DECLARE @SchemaAuditId int
    DECLARE @ObjectName sysname
	   
    DECLARE @Ctr int 
    SET @Ctr = 1

    PRINT '
<HTML>
<HEAD>
</HEAD>
<BODY>
'

    WHILE EXISTS(SELECT [id] FROM @DocumentedObjectTable WHERE [Id] = @Ctr)
    BEGIN
	   SELECT @RoutineBody = m.definition
	   FROM sys.all_sql_modules m WHERE m.object_id = 
		  (SELECT [object_id] FROM @DocumentedObjectTable WHERE [Id] = @Ctr)

	   SET @DocumentationTextPosition = CHARINDEX('/*+ Version ',@RoutineBody,1)
	   SET @DocumentationTextEndPosition = CHARINDEX('+*/',@RoutineBody,@DocumentationTextPosition)
	   
		IF @DocumentationTextEndPosition > @DocumentationTextPosition
		BEGIN
		  SET @CurrentDocumentationText = SUBSTRING(@RoutineBody, @DocumentationTextPosition, @DocumentationTextEndPosition - @DocumentationTextPosition + 1)
		  SET @CurrentDocumentationText = SUBSTRING(@CurrentDocumentationText, CHARINDEX(CHAR(10),@CurrentDocumentationText,1), LEN(@CurrentDocumentationText))

		  WHILE CHARINDEX('--',@CurrentDocumentationText) > 1
		  BEGIN
			 SET @CurrentDocumentationText = REPLACE(@CurrentDocumentationText ,'--','')
		  END

		  SET @CurrentDocumentationText = REPLACE(@CurrentDocumentationText ,'-+','')
		  SELECT @ObjectName = [Object_Name] FROM @DocumentedObjectTable WHERE [Id] = @Ctr

		  PRINT '<h3>'+@ObjectName+'</h3>'
		  PRINT '<p>'+ REPLACE(@CurrentDocumentationText,CHAR(13)+CHAR(10)+CHAR(13)+CHAR(10), '</p><p>') + '</p>'
		  PRINT '

'	   
	   END
	   SET @Ctr = @Ctr + 1
    END
    PRINT '

</BODY>
</HTML>
'
END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[FlagBusinessKeysFromStagingTable]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[FlagBusinessKeysFromStagingTable] AS' 
END
GO

ALTER PROCEDURE [BIB].[FlagBusinessKeysFromStagingTable]
(
  @StagingSchemaName nvarchar( 255 )
, @StagingTableName nvarchar( 255 )
)
AS
/*+ Version alpha-0.1.0.1054 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [bib].[FlagBusinessKeysFromStagingTable]

The model table you specify to build the tables and ETL stored procedures from
will have a primary key (and possibly a composite key).

This routine flags those fields in the metadata in order to use them as business keys in 
the generated ETL routines and so they form part of the unique indexes on both the generated 
staging and dimension tables as a way of defending against storing duplicate records.
-- -----------------------------------------------------------+*/
BEGIN

    SET NOCOUNT ON
    SET XACT_ABORT ON
    BEGIN TRANSACTION

    DECLARE @IndexName sysname

    SET        @IndexName = (SELECT sys.indexes.name
       FROM
            sys.indexes
            INNER JOIN sys.tables ON sys.indexes.object_id = sys.tables.object_id
            INNER JOIN sys.schemas ON sys.tables.schema_id = sys.schemas.schema_id
       WHERE sys.indexes.is_primary_key = 1
        AND sys.tables.name = @StagingTableName
        AND sys.schemas.name = @StagingSchemaName)

    UPDATE cd
    SET 
		  IsBusinessKey = 0
    FROM bib.ColumnDefinitions cd
    WHERE StagingTableSchema = @StagingSchemaName
	   AND StagingTableName = @StagingTableName 

    ;WITH KeyColumns AS
    (
    SELECT   
		   i.name As IndexName,
		   s.name AS StagingSchemaName ,
		   o.Name AS StagingTableName ,
		   c.name AS BusinessKeyName
		 FROM
			 sys.index_columns ic
			 INNER JOIN sys.objects o ON ic.object_id = o.object_id
			 INNER JOIN sys.schemas s ON s.schema_id = o.schema_id
			 INNER JOIN sys.columns c ON c.column_id = ic.column_id
								AND c.object_id = o.object_id
			  INNER JOIN sys.indexes i on i.index_id = ic.index_id and i.object_id = o.object_id 
           
		 WHERE o.Name = @StagingTableName
		   AND s.name = @StagingSchemaName
		   AND i.name  = @IndexName
    )
    UPDATE cd
    SET 
		  IsBusinessKey = 1
    FROM bib.ColumnDefinitions cd
    INNER JOIN KeyColumns k
			 ON 
				k.StagingSchemaName = cd.StagingTableSchema AND
				k.StagingTableName = cd.StagingTableName  AND
				k.BusinessKeyName = cd.StagingColumnName
    COMMIT
END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[FlagDeletedBitFieldInStagingTable]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[FlagDeletedBitFieldInStagingTable] AS' 
END
GO

ALTER PROCEDURE [BIB].[FlagDeletedBitFieldInStagingTable]
(
  @StagingTableSchema nvarchar( 255 )
, @StagingTableName nvarchar( 255 )
)
AS
/*+ Version alpha-0.1.0.1056 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [bib].[FlagDeletedBitFieldInStagingTable]

This routine is called within an ETL build in order to flag a column that indicates whether or not
the record is deleted.

If your data sources conform to some naming convention around columns used for soft deletes, you can 
ensure that this routine below detects them and flags them.

It is currently dependent on the "deleted" field being a BIT field. This field is encoded into the
ELT stored procedures to both delete existing expired records from the dimension (if desired) and also 
to ensure deleted records are not entered into the dimension.

If there is no column to indicate if a record has been deleted in the source system, the 
generated ETL will still function.
-- -----------------------------------------------------------+*/
BEGIN

    SET NOCOUNT ON
    SET XACT_ABORT ON
    BEGIN TRANSACTION

     IF NOT EXISTS (SELECT 1 FROM [bib].[ColumnDefinitions]
			  WHERE
           ColumnDefinitions.StagingTableSchema = @StagingTableSchema
       AND ColumnDefinitions.StagingTableName = @StagingTableName
	  AND
	   IsDeletedFlag   = 1
	   )
	   BEGIN

    IF EXISTS (SELECT 1 FROM [bib].[ColumnDefinitions]
			  WHERE
           ColumnDefinitions.StagingTableSchema = @StagingTableSchema
       AND ColumnDefinitions.StagingTableName = @StagingTableName
	  AND
	   StagingColumnName LIKE '%delete%'
       AND
	   DataType like '%bit%'
	   )

	   BEGIN
     UPDATE  [bib].[ColumnDefinitions]
	SET
		  IsDeletedFlag  = 1 
     FROM [bib].[ColumnDefinitions]
           WHERE
           ColumnDefinitions.StagingTableSchema = @StagingTableSchema
       AND ColumnDefinitions.StagingTableName = @StagingTableName
	   AND
	   StagingColumnName LIKE '%delete%'
       AND
	   DataType like '%bit%'
	   END
	   ELSE
	   BEGIN

	       DECLARE @Message nvarchar(1024)
		  SET @Message = '
		  **** WARNING FROM BI BUILDER ---------------------------------------------------------------------
		  BI BUilder will only generate a placeholder routine for deleting records from the dimension
		  as there is not yet detected a  field that flags records in the 
		  staging table  ['+@StagingTableSchema+'].['+@StagingTableName+'] as deleted

		  Steps to stop this message from displaying:
		  Either 
		  A) Needs Manual Intervention to flag one column in ['+@StagingTableSchema+'].['+@StagingTableName+']
		  Use this rountine:

		      UPDATE  [bib].[ColumnDefinitions]
			  SET
				    IsDeletedFlag  = 1
			  FROM [bib].[ColumnDefinitions]
				   WHERE
				   ColumnDefinitions.StagingTableSchema = '''+@StagingTableSchema+'''
			    AND ColumnDefinitions.StagingTableName = '''+@StagingTableName+'''
			    AND StagingColumnName =''PUT "[IS DELETED" BIT FLAG COLUMN NAME HERE]''
			    
		  B) Modify the stored procedure [bib].[FlagDeletedBitFieldInStagingTable] so 
		     it detects the columns your source system uses for soft deletes. Then BI Builder
			will correctly flag these when you run the [bib].[Main] procedure

	   **** END OF WARNING FROM BI BUILDER ---------------------------------------------------------------------

		  '
		  PRINT @Message
	   END

	   END

    COMMIT
END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[FlagModifiedDateFieldInStagingTable]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[FlagModifiedDateFieldInStagingTable] AS' 
END
GO

ALTER PROCEDURE [BIB].[FlagModifiedDateFieldInStagingTable]
(
  @StagingTableSchema nvarchar( 255 )
, @StagingTableName nvarchar( 255 )
)
AS
/*+ Version alpha-0.1.0.1058 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [bib].[FlagModifiedDateFieldInStagingTable]

This routine is called within an ETL build in order to flag a column that indicates when 
the record was either created or last modified.

If you data sources conform to some naming convention around columns used for Modified Dates, you can 
ensure that this routine below detects them and flags them.

If there is no column to indicate when a record has been created or modified in the source system, the 
generated ETL will still function but you may lose the capacity to tell if you are overwriting current information 
with stale records that have somehow been fed into the staging layer.
-- -----------------------------------------------------------+*/
BEGIN

    SET NOCOUNT ON
    SET XACT_ABORT ON
    BEGIN TRANSACTION

     IF NOT EXISTS (SELECT 1 FROM [bib].[ColumnDefinitions]
			  WHERE
           ColumnDefinitions.StagingTableSchema = @StagingTableSchema
       AND ColumnDefinitions.StagingTableName = @StagingTableName
	  AND
	   IsDataCaptureDateTime  = 1
	   )
	   BEGIN

    IF EXISTS (SELECT 1 FROM [bib].[ColumnDefinitions]
			  WHERE
           ColumnDefinitions.StagingTableSchema = @StagingTableSchema
       AND ColumnDefinitions.StagingTableName = @StagingTableName
	  AND
	   StagingColumnName LIKE '%modified%'
       AND
	   DataType like '%datetime%'
	   )

	   BEGIN

	   UPDATE  [bib].[ColumnDefinitions]
	SET
		  IsDataCaptureDateTime  = 1
		  , IsNullable = 0
     FROM [bib].[ColumnDefinitions]
           WHERE
           ColumnDefinitions.StagingTableSchema = @StagingTableSchema
       AND ColumnDefinitions.StagingTableName = @StagingTableName
	   AND
	   StagingColumnName LIKE '%modified%'
       AND
	   DataType like '%datetime%'
	   END
	   ELSE
	    IF EXISTS (SELECT 1 FROM [bib].[ColumnDefinitions]
			  WHERE
           ColumnDefinitions.StagingTableSchema = @StagingTableSchema
       AND ColumnDefinitions.StagingTableName = @StagingTableName
	  AND
	   StagingColumnName LIKE '%update%'
       AND
	   DataType like '%datetime%'
	   )

	   BEGIN
     UPDATE  [bib].[ColumnDefinitions]
	SET
		  IsDataCaptureDateTime  = 1
		  , IsNullable = 0
     FROM [bib].[ColumnDefinitions]
           WHERE
           ColumnDefinitions.StagingTableSchema = @StagingTableSchema
       AND ColumnDefinitions.StagingTableName = @StagingTableName
	   AND
	   StagingColumnName LIKE '%update%'
       AND
	   DataType like '%datetime%'
	   END


-- ***  THIS CLAUSE IS AN EXAMPLE THAT SUPPORTS "EXAMPLE 4 - Custom Type Conversions" and can be deleted

	    ELSE
	    IF EXISTS (SELECT 1 FROM [bib].[ColumnDefinitions]
			  WHERE
           ColumnDefinitions.StagingTableSchema = @StagingTableSchema
       AND ColumnDefinitions.StagingTableName = @StagingTableName
	  AND
	   StagingColumnName = 'Integer_Style_Timestamp'
       AND
	   DataType = 'int'
	   )

	   BEGIN
     UPDATE  [bib].[ColumnDefinitions]
	SET
		  IsDataCaptureDateTime  = 1
		  , IsNullable = 0
     FROM [bib].[ColumnDefinitions]
           WHERE
           ColumnDefinitions.StagingTableSchema = @StagingTableSchema
       AND ColumnDefinitions.StagingTableName = @StagingTableName
	   AND
	   StagingColumnName = 'Integer_Style_Timestamp'
       AND
	   DataType = 'int'
	   END
-- ***  END OF EXAMPLE CLAUSE ---------------------------------------------------------------


	   ELSE
	   BEGIN

	       DECLARE @Message nvarchar(1024)
		  SET @Message = '-- Needs Manual Intervention to flag one column in ['+@StagingTableSchema+'].['+@StagingTableName+']
		  Use this rountine:

		      UPDATE  [bib].[ColumnDefinitions]
			  SET
				    IsDataCaptureDateTime  = 1
				  , IsNullable = 0
			  FROM [bib].[ColumnDefinitions]
				   WHERE
				   ColumnDefinitions.StagingTableSchema = '''+@StagingTableSchema+'''
			    AND ColumnDefinitions.StagingTableName = '''+@StagingTableName+'''
			    AND StagingColumnName =''PUT MODIFIED-DATE NAME HERE''

		  '
		  RAISERROR(@Message, 1,16)
	   END

	   END

    COMMIT
END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[FlagSCDKeyColumnsFromStagingTable]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[FlagSCDKeyColumnsFromStagingTable] AS' 
END
GO

ALTER PROCEDURE [BIB].[FlagSCDKeyColumnsFromStagingTable]
(
  @StagingSchemaName nvarchar( 255 )
, @StagingTableName nvarchar( 255 )
, @SlowlyChangingDimensionColumnList nvarchar( 2048 )
)
AS
/*+ Version alpha-0.1.0.1060 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [bib].[FlagSCDKeyColumnsFromStagingTable]

This routine flags the staging columns  that have been chosen as
columns to track within a Type 2 Slowly Changing Dimension.

Changes in these columns trigger the creation of a new active record in the 
generated dimension.

To create a SCD Type 2 Dimension and ETL, you supply a comma delimited list
of staging column names in the parameters for [bib].[Main]. There is a placeholder
in the script generated by [bib].[Main_PrintScriptToBuildETLFromModelTable]
for listing the SCD columns.
-- -----------------------------------------------------------+*/
BEGIN

    SET NOCOUNT ON
    SET XACT_ABORT ON
    BEGIN TRANSACTION

    -- reset any existing flags for SCD columns to 0
    UPDATE cd
    SET 
		  UseColumnForSCD = 0
    FROM bib.ColumnDefinitions cd
    WHERE StagingTableSchema = @StagingSchemaName
	   AND StagingTableName = @StagingTableName 

    DECLARE @SCDField sysname
    DECLARE @SCDColumnCount int
    DECLARE @Ctr int

    SET @SCDColumnCount =  [bib].[CountDelimitersInString](@SlowlyChangingDimensionColumnList, ',') + 1
    SET @Ctr = 1

    WHILE @Ctr <= @SCDColumnCount
    BEGIN
	   SET @SCDField = LTRIM(RTRIM([bib].[ExtractNthTextSection](@SlowlyChangingDimensionColumnList,',',@Ctr)))

	   UPDATE cd
	   SET 
		  UseColumnForSCD = 1
	   FROM bib.ColumnDefinitions cd
	    WHERE StagingTableSchema = @StagingSchemaName
	   AND StagingTableName = @StagingTableName 
	   AND StagingColumnName = @SCDField
	   AND IsBusinessKey = 0

	   SET @Ctr = @Ctr + 1
    END

    COMMIT
END


GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[ForceSchemaCreation]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[ForceSchemaCreation] AS' 
END
GO

 
ALTER PROCEDURE [BIB].[ForceSchemaCreation] (
@SchemaName nvarchar(255))
AS
/*+ Version alpha-0.1.0.1064 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [bib].[ForceSchemaCreation]

When you build the tables and ETL routines from a Model Table,
you can specify what SCHEMAs the staging and dimension tables will
be created within.

If the SCHEMA does not exist, this routine is called to create it.
-- -----------------------------------------------------------+*/

BEGIN

DECLARE @SQL nvarchar(MAX)
DECLARE @Msg nvarchar(255)

IF NOT EXISTS(SELECT Name
       FROM
		  sys.schemas 
		  WHERE  name = @SchemaName 
)
BEGIN
	   SET @SQL = 'CREATE SCHEMA ['+@SchemaName+']'
	   BEGIN TRY
		  EXECUTE sp_ExecuteSQL @SQL
	   END TRY
	   BEGIN CATCH
		  SET @Msg = 'Problem creating the schema "'+@SchemaName+'"in stored procedure [bib].[ForceSchemaCreation]'
		  RAISERROR(@Msg, 16, 1);
	   END CATCH
  END
  ELSE
  BEGIN
    PRINT '-- Schema '+@SchemaName+' Already Exists'
  END
END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateDefaultValuesForUnknownDimensionKey]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[GenerateDefaultValuesForUnknownDimensionKey] AS' 
END
GO

ALTER PROCEDURE [BIB].[GenerateDefaultValuesForUnknownDimensionKey]
( @StagingTableSchema sysname
, @StagingTableName sysname
, @ExecuteGeneratedScript bit = 0
)
AS
/*+ Version alpha-0.1.0.1066 20141005.170752 -------------------------------------------------------------- 
Stored Procedure  [bib].[GenerateDefaultValuesForUnknownDimensionKey]

Each dimension will have a default record that is guaranteed to be 'present
by a generated stored procedure that is executed each time you run the ETL.

The surrogate key for this record is always "-1" and it is used when the fact table
has a NULL value for the key into a particular dimension. IN that case, you et the fact table to 
hold -1 instead of NULL and this points to the default record. The text columns in that default record
would show values such as "Not Applicable" or "Blank" or something meaningful so report 
users can easily tell that data  does not exist for that field in a fact table row. 

As an example, imagine a source system that flags people as stricly either "M"(ale) or "F"(emale).
Some records have NULL values and you as BI developer may not be able to tell if that means A) they refused to give their sex
so the data entry operator skipped the field or B) they are transgender and don't fit the two fixed categories or 
C) the data comes from multiple systems out in the field and only one of those system fills in the gender field.

In this case, you could change the NULLs to -1 in the fact table and set the default record in the Gender dimension
to show "Gender information not avaliable".

-- -----------------------------------------------------------+*/
BEGIN
SET NOCOUNT ON

DECLARE  @DimensionTableName nvarchar(50)
DECLARE  @DimensionTableSchema nvarchar(50)
DECLARE  @DropScriptSQL nvarchar(MAX)
DECLARE  @DefaultValuesScriptSQL nvarchar(MAX)
DECLARE  @ProcScriptSQL nvarchar(MAX)

SELECT @DimensionTableName =	  RelatedDimensionTableName
       ,
       @DimensionTableSchema =  RelatedDimensionTableSchema
       FROM bib.TableDefinitions
       WHERE
       StagingTableSchema =    @StagingTableSchema
   AND StagingTableName =	    @StagingTableName

SET @ProcScriptSQL ='
CREATE PROCEDURE ['+@DimensionTableSchema+'].[Load_'+@DimensionTableName+'_SetDefaultValues]
AS 
BEGIN

SET NOCOUNT ON
SET XACT_ABORT ON
BEGIN TRANSACTION

IF NOT EXISTS(SELECT 1 FROM ['+@DimensionTableSchema+'].[' + @DimensionTableName + '] WHERE ['+@DimensionTableName+'_DID] = -1)
BEGIN

SET IDENTITY_INSERT ['+@DimensionTableSchema+'].[' + @DimensionTableName + '] ON

INSERT INTO ['+@DimensionTableSchema+'].[' + @DimensionTableName + '](
	  '+ bib.CommaListOfDimensionColumns(@StagingTableSchema, @StagingTableName) + '
)

SELECT 
	  -1
	, **@DefaultValuesScriptSQL**

SET IDENTITY_INSERT ['+@DimensionTableSchema+'].[' + @DimensionTableName + '] OFF

COMMIT
END 

'

DECLARE @ID uniqueidentifier
SET @ID = NEWID()

SELECT @DefaultValuesScriptSQL = ISNULL(@DefaultValuesScriptSQL+'
,','') + 
[bib].[DefaultValueForUnknownDimensionColumn](StagingTableSchema,StagingTableName, StagingColumnName ,DimensionDataType, DimensionDataTypeLength, IsNullable, @ID)
  
           FROM bib.ColumnDefinitions
           WHERE
           ColumnDefinitions.StagingTableSchema = @StagingTableSchema
       AND ColumnDefinitions.StagingTableName = @StagingTableName
	  ORDER BY ColumnDefinitions.OrdinalPosition ASC

SET @ProcScriptSQL = REPLACE(@ProcScriptSQL, '**@DefaultValuesScriptSQL**', @DefaultValuesScriptSQL)

EXECUTE [bib].[LongPrint] @ProcScriptSQL

END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateDimensionTableScript]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[GenerateDimensionTableScript] AS' 
END
GO


ALTER PROCEDURE [BIB].[GenerateDimensionTableScript] (  
@SchemaName sysname,           
@StagingTableName sysname,
@ApplyAutoAudit bit = 0,
@ExecuteGeneratedScript bit = 0)            
AS   
/*+ Version alpha-0.1.0.1068 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [bib].[GenerateDimensionTableScript] 

This routine creates and executes a script to build the dimension table.

It bases the table on the staging table that was in turn created from the model table supplied
as a parameter to the build.

It uses the dimension column names and data types from the bib.ColumnDefinitions table - which are 
automatically derived but can be tweaked manually if you want.

It recreates the DEFAULT CONSTRAINTS and CHECK CONSTRAINTS from staging but not references to foreign keys.

It creates a surrogate key also. 

If you specify to have auditing applied through the build process 
for this dimension, that will be applied later in the build after the table has been created.
-- -----------------------------------------------------------+*/
SET NOCOUNT ON

DECLARE 
      @object_name SYSNAME
    , @object_id INT

DECLARE @RelatedDimensionTableSchema sysname
DECLARE @RelatedDimensionTableName sysname
DECLARE @RelatedDimensionTableFileGroup sysname

SELECT
	 @RelatedDimensionTableName	=	RelatedDimensionTableName
	, @RelatedDimensionTableSchema	=	RelatedDimensionTableSchema
	, @RelatedDimensionTableFileGroup	=	RelatedDimensionTableFileGroup
FROM bib.TableDefinitions 
WHERE 
StagingTableSchema = @SchemaName
AND 
StagingTableName = @StagingTableName 

-- Determine if FileGROUP needs to be created
EXECUTE [bib].[ForceFileGroupCreation] @RelatedDimensionTableFileGroup

EXECUTE [bib].[ForceSchemaCreation] @RelatedDimensionTableSchema

SELECT 
      @object_name = '[' + s.name + '].[' + o.name + ']'
    , @object_id = o.[object_id]
FROM sys.objects o WITH (NOWAIT)
JOIN sys.schemas s WITH (NOWAIT) ON o.[schema_id] = s.[schema_id]
WHERE s.name  = @SchemaName
AND o.name = @StagingTableName
    AND o.[type] = 'U'
    AND o.is_ms_shipped = 0

DECLARE @SQL NVARCHAR(MAX) = ''
DECLARE @DropScriptSQL NVARCHAR(MAX) = ''

DECLARE  @DimensionTableName nvarchar(50)
DECLARE  @DimensionTableSchema nvarchar(50)

SELECT @DimensionTableName =	  RelatedDimensionTableName
       ,
       @DimensionTableSchema =  RelatedDimensionTableSchema
       FROM bib.TableDefinitions
       WHERE
       StagingTableSchema =    @SchemaName
   AND StagingTableName =	    @StagingTableName

SET @DropScriptSQL =  
'IF EXISTS (SELECT * FROM sys.objects WHERE [object_id] = OBJECT_ID(N''['+@DimensionTableSchema+'].[' + @DimensionTableName + ']'') and OBJECTPROPERTY([object_id], N''IsTable'') = 1)
DROP TABLE ['+@DimensionTableSchema+'].[' + @DimensionTableName + ']

'

;WITH index_column AS 
(
   SELECT        bib.ColumnDefinitions.StagingTableSchema ,
              bib.ColumnDefinitions.StagingTableName ,
              bib.ColumnDefinitions.DimensionColumnName ,
              bib.ColumnDefinitions.DimensionDataType ,
              bib.ColumnDefinitions.DimensionDataTypeLength ,
              ic.object_id ,
              ic.index_id ,
              ic.is_descending_key ,
              ic.is_included_column ,
              c.name
       FROM
            sys.index_columns AS ic WITH ( NOWAIT )
            INNER JOIN sys.columns AS c WITH ( NOWAIT )ON ic.object_id = c.object_id
                                                      AND ic.column_id = c.column_id
            INNER JOIN bib.ColumnDefinitions ON c.name = bib.ColumnDefinitions.StagingColumnName
            INNER JOIN sys.tables ON c.object_id = sys.tables.object_id
                                 AND bib.ColumnDefinitions.StagingTableName = sys.tables.name
       WHERE ic.object_id = @object_id
)
SELECT @SQL = 'CREATE TABLE [' + @RelatedDimensionTableSchema +'].['+ @RelatedDimensionTableName +']' + CHAR(13) + '(' + CHAR(13) + STUFF((
    SELECT CHAR(9) + ', [' + DimensionColumnName + '] ' + 
        CASE WHEN c.is_computed = 1
            THEN 'AS ' + cc.[definition] 
            ELSE UPPER(DimensionDataType) + 
                CASE WHEN DimensionDataType IN ('varchar', 'char', 'varbinary', 'binary', 'text')
                       THEN '(' + CASE WHEN DimensionDataTypeLength < 1 THEN 'MAX' ELSE CAST(DimensionDataTypeLength AS VARCHAR(5)) END + ')'
                     WHEN DimensionDataType IN ('nvarchar', 'nchar', 'ntext')
                       THEN '(' + CASE WHEN DimensionDataTypeLength  < 1 THEN 'MAX' ELSE CAST(DimensionDataTypeLength / 2 AS VARCHAR(5)) END + ')'
                     WHEN DimensionDataType IN ('datetime2', 'time2', 'datetimeoffset') 
                       THEN '(' + CAST(c.scale AS VARCHAR(5)) + ')'
                     WHEN DimensionDataType = 'decimal' 
                       THEN '(' + CAST(c.[precision] AS VARCHAR(5)) + ',' + CAST(c.scale AS VARCHAR(5)) + ')'
                    ELSE ''
                END +
                --CASE WHEN c.collation_name IS NOT NULL THEN ' COLLATE ' + c.collation_name ELSE '' END +
                CASE WHEN c.is_nullable = 1 THEN ' NULL' ELSE ' NOT NULL' END +
                CASE WHEN dc.[definition] IS NOT NULL THEN ' DEFAULT' + dc.[definition] ELSE '' END + 
                CASE WHEN ic.is_identity = 1 THEN ' IDENTITY(' + CAST(ISNULL(ic.seed_value, '0') AS CHAR(1)) + ',' + CAST(ISNULL(ic.increment_value, '1') AS CHAR(1)) + ')' ELSE '' END 
        END + CHAR(13)

FROM            sys.columns AS c WITH (NOWAIT) INNER JOIN
                         sys.types AS tp WITH (NOWAIT) ON c.user_type_id = tp.user_type_id LEFT OUTER JOIN
                         sys.computed_columns AS cc WITH (NOWAIT) ON c.object_id = cc.object_id AND c.column_id = cc.column_id LEFT OUTER JOIN
                         sys.default_constraints AS dc WITH (NOWAIT) ON c.default_object_id <> 0 AND c.object_id = dc.parent_object_id AND 
                         c.column_id = dc.parent_column_id LEFT OUTER JOIN
                         sys.identity_columns AS ic WITH (NOWAIT) ON c.is_identity = 1 AND c.object_id = ic.object_id AND c.column_id = ic.column_id INNER JOIN
                         bib.ColumnDefinitions ON c.name = bib.ColumnDefinitions.StagingColumnName INNER JOIN
                         sys.tables ON c.object_id = sys.tables.object_id AND bib.ColumnDefinitions.StagingTableName = sys.tables.name INNER JOIN
                         bib.TableDefinitions ON bib.ColumnDefinitions.StagingTableSchema = bib.TableDefinitions.StagingTableSchema AND 
                         bib.ColumnDefinitions.StagingTableName = bib.TableDefinitions.StagingTableName
    WHERE c.[object_id] = @object_id AND bib.ColumnDefinitions.IncludeInDWH = 1
    ORDER BY OrdinalPosition
    FOR XML PATH(''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 2, CHAR(9) + ' ')
    +  ISNULL((SELECT CHAR(9) + ', CONSTRAINT [PK_' + @RelatedDimensionTableSchema +'_'+ @RelatedDimensionTableName +'_DID] PRIMARY KEY (' + 
                    (SELECT STUFF((
                         SELECT ', [' + bib.ColumnDefinitions.DimensionColumnName + '] ' + CASE WHEN indcol.is_descending_key = 1 THEN 'DESC' ELSE 'ASC' END
                         FROM            sys.tables AS ta INNER JOIN
                         sys.indexes AS ind ON ind.object_id = ta.object_id INNER JOIN
                         sys.index_columns AS indcol ON indcol.object_id = ta.object_id AND indcol.index_id = ind.index_id INNER JOIN
                         sys.columns AS col ON col.object_id = ta.object_id AND col.column_id = indcol.column_id INNER JOIN
                         bib.ColumnDefinitions ON col.name = bib.ColumnDefinitions.StagingColumnName AND ta.name = bib.ColumnDefinitions.StagingTableName INNER JOIN
                         sys.schemas ON ta.schema_id = sys.schemas.schema_id AND bib.ColumnDefinitions.StagingTableSchema = sys.schemas.name
                         WHERE indcol.is_included_column = 0
                             AND indcol.[object_id] = k.parent_object_id 
                             AND indcol.index_id = k.unique_index_id     
                         FOR XML PATH(N''), TYPE).value('.', 'NVARCHAR(MAX)'), 1, 2, ''))
            + ')' + CHAR(13)
            FROM sys.key_constraints k WITH (NOWAIT)
            WHERE k.parent_object_id = @object_id 
                AND k.[type] = 'PK'),'') + ')  ON ['+@RelatedDimensionTableFileGroup+']'  + CHAR(13)
   
  --  Script any CHECK CONSTRAINTS

DECLARE @SQL2 nvarchar(MAX)
SET @SQL2 = '----- Check Constraints -----
'
SELECT @SQL2 = @SQL2 + 
'
ALTER TABLE [' + @RelatedDimensionTableSchema+'].['+ @RelatedDimensionTableName  +'] ADD CONSTRAINT CK_' + @RelatedDimensionTableSchema+'_'+ @RelatedDimensionTableName  + '_'+ DimensionColumnName +'
    CHECK '+ REPLACE(definition,'['+StagingColumnName +']','['+DimensionColumnName+']') +'
    '

FROM            sys.check_constraints INNER JOIN
                         sys.schemas ON sys.check_constraints.schema_id = sys.schemas.schema_id INNER JOIN
                         sys.columns ON sys.check_constraints.parent_object_id = sys.columns.object_id AND 
                         sys.check_constraints.parent_column_id = sys.columns.column_id INNER JOIN
                         bib.ColumnDefinitions ON sys.schemas.name = bib.ColumnDefinitions.StagingTableSchema AND 
                         sys.columns.name = bib.ColumnDefinitions.StagingColumnName INNER JOIN
                         sys.tables ON sys.schemas.schema_id = sys.tables.schema_id AND sys.columns.object_id = sys.tables.object_id AND 
                         bib.ColumnDefinitions.StagingTableName = sys.tables.name
WHERE 
 bib.ColumnDefinitions.StagingTableSchema = @SchemaName
AND 
 bib.ColumnDefinitions.StagingTableName = @StagingTableName

SELECT @SQL2 = REPLACE(@SQL2, StagingColumnName, DimensionColumnName)
FROM bib.ColumnDefinitions
WHERE 
 bib.ColumnDefinitions.StagingTableSchema = @SchemaName
AND 
 bib.ColumnDefinitions.StagingTableName = @StagingTableName

-- Unique index to enforce business keys

DECLARE @SQL3 nvarchar(MAX)
DECLARE @IndexColumns nvarchar(1024)

SET @SQL3= ''
SET @IndexColumns = NULL
 
SELECT @IndexColumns = ISNULL(@IndexColumns+',','') + 
	   '['+DimensionColumnName  +'] ASC'
FROM bib.ColumnDefinitions cd
WHERE StagingTableSchema = @SchemaName
    AND StagingTableName = @StagingTableName 
    AND
    (IsBusinessKey = 1 OR UseColumnForSCD = 1)

SELECT @SQL3 = 
'

CREATE UNIQUE NONCLUSTERED INDEX [BK_'+@RelatedDimensionTableSchema +'_'+@RelatedDimensionTableName +'] ON ['+@RelatedDimensionTableSchema+'].['+@RelatedDimensionTableName+']
(
	'+@IndexColumns+'
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON ['+@RelatedDimensionTableFileGroup+']

COMMIT
'

IF @ApplyAutoAudit = 1
BEGIN
   SET @SQL3  = @SQL3 +'

EXECUTE bib.AuditAddToTable '''+@RelatedDimensionTableSchema+''','''+ @RelatedDimensionTableName +'''

'
END

--SELECT @SQL as [DDL]
SET @SQL = 'SET XACT_ABORT ON
BEGIN TRANSACTION
'+@SQL +'
'
+ @SQL2 +'
' + @SQL3

IF (@ExecuteGeneratedScript = 0) -- only display the script
BEGIN
    EXECUTE [bib].[LongPrint] @DropScriptSQL 
    PRINT '
GO

'
    EXECUTE [bib].[LongPrint] @SQL
    PRINT '
GO

'
    IF [bib].[TableIsSCD](@SchemaName, @StagingTableName) = 1
	BEGIN
	   EXECUTE [bib].[AddSCDColumnsToDimensionTable] @SchemaName, @StagingTableName, @ExecuteGeneratedScript
	END
END
ELSE
BEGIN
    EXECUTE sp_ExecuteSQL  @DropScriptSQL  
	EXECUTE sp_ExecuteSQL  @SQL 
	IF [bib].[TableIsSCD](@SchemaName, @StagingTableName) = 1
	BEGIN
	   EXECUTE [bib].[AddSCDColumnsToDimensionTable] @SchemaName, @StagingTableName, @ExecuteGeneratedScript
	END
END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[GenerateDimLoadETLStoredProcedures]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[GenerateDimLoadETLStoredProcedures] AS' 
END
GO

ALTER PROCEDURE [BIB].[GenerateDimLoadETLStoredProcedures]

( @ModelSchemaName sysname,
  @ModelTableName sysname,
  @StagingTableSchema sysname,
  @StagingTableName sysname
, @ExecuteGeneratedScript bit = 0
)
AS
/*+ Version alpha-0.1.0.1070 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [bib].[GenerateDimLoadETLStoredProcedures]

This routine creates the set of stored procedures that 
manage the dimension you are building.

One of the created routines drives all the others. It is the one
named [Load_<DimensionName>].

If you look into that procedure after the build, you will see a
header that contains all the SQL you need to easily test the newly
created routines - using the data that was in the model table you started with.
-- -----------------------------------------------------------+*/
BEGIN
SET NOCOUNT ON

DECLARE  @DimensionTableName nvarchar(50)
DECLARE  @DimensionTableSchema nvarchar(50)
DECLARE  @DropScriptSQL nvarchar(MAX)
DECLARE  @DebugHeaderScriptSQL nvarchar(MAX)
DECLARE  @ProcScriptSQL nvarchar(MAX)
DECLARE  @DefaultDataProcedure nvarchar(MAX)
DECLARE  @LoadCandidateFlagging nvarchar(MAX)
DECLARE  @DeletionProcedure nvarchar(MAX)
DECLARE  @ManualTestingProcedureSQL nvarchar(MAX)

SELECT @DimensionTableName =	  RelatedDimensionTableName
       ,
       @DimensionTableSchema =  RelatedDimensionTableSchema
       FROM bib.TableDefinitions
       WHERE
       StagingTableSchema =    @StagingTableSchema
   AND StagingTableName =	    @StagingTableName

SET @DropScriptSQL =  
'IF EXISTS (SELECT * FROM sys.objects WHERE [object_id] = OBJECT_ID(N''['+@DimensionTableSchema+'].[Load_' + @DimensionTableName + ']'') and OBJECTPROPERTY([object_id], N''IsProcedure'') = 1)
DROP PROCEDURE ['+@DimensionTableSchema+'].[Load_' + @DimensionTableName + ']

IF EXISTS (SELECT * FROM sys.objects WHERE [object_id] = OBJECT_ID(N''['+@DimensionTableSchema+'].[Load_' + @DimensionTableName +'_SetDefaultValues]'') and OBJECTPROPERTY([object_id], N''IsProcedure'') = 1)
DROP PROCEDURE ['+@DimensionTableSchema+'].[Load_' + @DimensionTableName +'_SetDefaultValues]

IF EXISTS (SELECT * FROM sys.objects WHERE [object_id] = OBJECT_ID(N''['+@DimensionTableSchema+'].[Load_' +@DimensionTableName+'_Flag_Records_For_Loading]'') and OBJECTPROPERTY([object_id], N''IsProcedure'') = 1)
DROP PROCEDURE ['+@DimensionTableSchema+'].[Load_' +@DimensionTableName+'_Flag_Records_For_Loading]

IF EXISTS (SELECT * FROM sys.objects WHERE [object_id] = OBJECT_ID(N''['+@DimensionTableSchema+'].[Load_' +@DimensionTableName+'_HandleDeletedRecords]'') and OBJECTPROPERTY([object_id], N''IsProcedure'') = 1)
DROP PROCEDURE ['+@DimensionTableSchema+'].[Load_' +@DimensionTableName+'_HandleDeletedRecords]

IF EXISTS (SELECT * FROM sys.objects WHERE [object_id] = OBJECT_ID(N''['+@DimensionTableSchema+'].[Load_' +@DimensionTableName+'_ManualTesting]'') and OBJECTPROPERTY([object_id], N''IsProcedure'') = 1)
DROP PROCEDURE ['+@DimensionTableSchema+'].[Load_' +@DimensionTableName+'_ManualTesting]

'

SET @DefaultDataProcedure = 
  [bib].[GenerateDefaultValuesProcForUnknownDimensionKey]( @StagingTableSchema, @StagingTableName, 0, NEWID())

SET @DeletionProcedure = 
  [bib].[GenerateHandleDeletedRecordsSQL]( @StagingTableSchema, @StagingTableName, 0)

SET @LoadCandidateFlagging = 
  [bib].[GenerateStagingLoadCandidateFlaggingRoutine](  @StagingTableSchema, @StagingTableName,	1)  

SET @ManualTestingProcedureSQL = 
    [bib].[GenerateManualLoadTestingProcedure]( @ModelSchemaName, @ModelTableName, @StagingTableSchema,  @StagingTableName)
  
SET @DebugHeaderScriptSQL =
    [bib].[GenerateDebuggingScriptForDimension](@StagingTableSchema,  @StagingTableName)

DECLARE @Dateformat nvarchar(32)
SET @Dateformat =  [bib].[DefaultDateformatFromSettings]()

SET @ProcScriptSQL =
'

CREATE PROCEDURE ['+@DimensionTableSchema+'].[Load_' + @DimensionTableName+']
AS 
BEGIN
--***************************************************************************************
-- This is an ETL routine that conducts data (new or updated or deleted as well as possibly stale/redundant)  
-- from the staging table ['+@StagingTableSchema+'].['+@StagingTableName+'] to the 
-- dimension table ['+@DimensionTableSchema+'].['+@DimensionTableName+']
-----------------------------------------------------------------------------------------

SET NOCOUNT ON
-- (Uncomment if required) SET DATEFORMAT '+@Dateformat+' 

-- Ensure that the dimension has an unknown "-1" key record holding default values
-- for when the fact table has no proper key into the dimension
DECLARE @ErrorCode int 
SET @ErrorCode = 0 
EXECUTE @ErrorCode = ['+@DimensionTableSchema+'].[Load_' + @DimensionTableName+'_SetDefaultValues]
IF @ErrorCode <> 0
BEGIN
    RETURN
END
   
DECLARE @UnloadedCount int
SET @UnloadedCount = (SELECT COUNT(*) FROM ['+@StagingTableSchema+'].['+@StagingTableName+'] WHERE ETLBatch_Id IS NULL)
WHILE @UnloadedCount > 0
    BEGIN 

	   DECLARE @Batch_ID bigint  
	   DECLARE @Step_ID bigint  
	   DECLARE @ETLLoadStatus_Id int  
	   DECLARE @ProcessName varchar(50)
	   DECLARE @Message nvarchar( 255 )
	   DECLARE @RecordsAffected int
	   DECLARE @Success bit

	    SET @ProcessName = ''['+@DimensionTableSchema+'].[Load_' + @DimensionTableName+']''
	    EXECUTE @Batch_ID = [ETL].[InitiateETLBatch] @ProcessName	
	
	   
	    EXECUTE ['+@DimensionTableSchema+'].[Load_'+@DimensionTableName+'_Flag_Records_For_Loading] @Batch_ID

	    SET @ETLLoadStatus_Id = 3

	    EXECUTE ['+@DimensionTableSchema+'].[Load_'+@DimensionTableName+'_HandleDeletedRecords] @Batch_ID

	   -- Insert the key fields and non-nullable fields for any new records
	    EXECUTE @Step_Id = [ETL].[AddETLBatchStepStatus] @Batch_ID , @ETLLoadStatus_Id , ''Inserting New Records into Dimension'' , NULL;

	    BEGIN TRY 
'

DECLARE @InsertStatement nvarchar(MAX)

SET @InsertStatement = 
 [bib].[GenerateInsertOfNewRecordsSQLForDimensionLoad]( @StagingTableSchema, @StagingTableName, 0)+'

			 -- SUCCESS LOGGING -------------------------------------------------
			 SET @RecordsAffected = @@ROWCOUNT
			 SET @Message = ''Inserting new records succeeded''
			 SET @Success = 1
			 SET @ErrorCode = NULL    

			 EXECUTE [ETL].[UpdateETLBatchStepStatus]
			   @Step_Id
			 , @ETLLoadStatus_Id
			 , @Message
			 , @RecordsAffected
			 , @Success
			 , @ErrorCode
			 --------------------------------------------------------------------

		 END TRY
		  BEGIN CATCH

			 -- FAILURE LOGGING -------------------------------------------------		  	  
			 SET @RecordsAffected = -1
			 SET @Message = ERROR_MESSAGE()
			 SET @Success = 0
			 SET @ErrorCode = ERROR_NUMBER()
		  
			 EXECUTE [ETL].[UpdateETLBatchStepStatus]
						@Step_Id
					   , @ETLLoadStatus_Id
					   , @Message
					   , @RecordsAffected
					   , @Success
					   , @ErrorCode   ;
			 --------------------------------------------------------------------
			  UPDATE src
				SET DataState_Id = 3 -- indicating there was an error loading this batch of staged records
			 FROM ['+@StagingTableSchema+'].['+@StagingTableName+'] src  
			 WHERE
				ETLBatch_Id = @Batch_ID
				AND
				DataState_Id = 1;

			 RAISERROR(@Message, 16, 1);
		  END CATCH

'

SET @ProcScriptSQL = @ProcScriptSQL + @InsertStatement

-- This is an SCD Type 1 Dimension where updated records are overwritten

DECLARE @UpdateStatement nvarchar(MAX)

SET @UpdateStatement = '
	    SET @ETLLoadStatus_Id = 4

	    -- Insert the key fields and non-nullable fields for any new records
	    EXECUTE @Step_Id = [etl].[AddETLBatchStepStatus] @Batch_ID , @ETLLoadStatus_Id , ''Updating dimension records from staging data'' , NULL;
	    BEGIN TRY

'+
 [bib].[GenerateUpdateSQLForDimensionLoad]( @StagingTableSchema, @StagingTableName, 0)

  SET @ProcScriptSQL = @ProcScriptSQL + @UpdateStatement +'
			 -- SUCCESS LOGGING -------------------------------------------------
			 SET @RecordsAffected = @@ROWCOUNT
			 SET @Message = ''Updating records succeeded''
			 SET @Success = 1
			 SET @ErrorCode = NULL    

			 EXECUTE [ETL].[UpdateETLBatchStepStatus]
			   @Step_Id
			 , @ETLLoadStatus_Id
			 , @Message
			 , @RecordsAffected
			 , @Success
			 , @ErrorCode

			 --------------------------------------------------------------------	
			  
			 -- Records have been ingested, can delete them from staging.
			 DELETE
			 FROM ['+@StagingTableSchema+'].['+@StagingTableName+']  
			 WHERE
				ETLBatch_Id = @Batch_ID
				AND
				DataState_Id = 1

			 
			 '+ [bib].[GenerateSCDCurrentRecordClauseSQL](@StagingTableSchema,@StagingTableName)+'

	   END TRY
		  BEGIN CATCH
  		 
			  -- ON-ERROR CLEANUP OF BATCH RECORDS ------------------------------
		   		  
			  -- The new records had their non-nullable fields inserted successfully 
			  -- in the earlier INSERT TRY-CATCH section 
			  -- BUT there was a major problem with the fields being UPDATED,
			  -- we need to remove the new key records until the problem is resolved

			  -- AS the UPDATE has been rolled back, all records with the current ETLBatch_ID
			  -- must be new records

			  DELETE FROM ['+@DimensionTableSchema+'].['+@DimensionTableName+']
			   WHERE [ETLBatch_Id] = @Batch_ID 		  

			 -- FAILURE LOGGING -------------------------------------------------		  	  
			 SET @RecordsAffected = -1
			 SET @Message = ERROR_MESSAGE()
			 SET @Success = 0
			 SET @ErrorCode = ERROR_NUMBER()
		  
			 EXECUTE [ETL].[UpdateETLBatchStepStatus]
						@Step_Id
					   , @ETLLoadStatus_Id
					   , @Message
					   , @RecordsAffected
					   , @Success
					   , @ErrorCode   ;
			 --------------------------------------------------------------------
			  UPDATE src
				SET DataState_Id = 3 -- indicating there was an error loading this batch of staged records
			 FROM [dbo].[TestTable_NoModifiedDatePresent] src  
			 WHERE
				ETLBatch_Id = @Batch_ID
				AND
				DataState_Id = 1;

			 RAISERROR(@Message, 16, 1);
		  END CATCH
 
'

SET @ProcScriptSQL = @DebugHeaderScriptSQL + @ProcScriptSQL +'
	   SET @UnloadedCount = (SELECT COUNT(*) FROM ['+@StagingTableSchema+'].['+@StagingTableName+'] WHERE ETLBatch_Id IS NULL)
    END
END 
'

IF @ExecuteGeneratedScript = 1
BEGIN

    EXECUTE sp_ExecuteSQL @DropScriptSQL
    EXECUTE sp_ExecuteSQL @DeletionProcedure
    EXECUTE sp_ExecuteSQL @LoadCandidateFlagging
    EXECUTE sp_ExecuteSQL @DefaultDataProcedure
    EXECUTE sp_ExecuteSQL @DebugHeaderScriptSQL
    EXECUTE sp_ExecuteSQL @ManualTestingProcedureSQL  
    EXECUTE sp_ExecuteSQL @ProcScriptSQL  
             
END
ELSE
    BEGIN
	   EXECUTE [bib].[LongPrint] @DropScriptSQL
	   PRINT '
	   GO

	   '

	    EXECUTE [bib].[LongPrint] @DeletionProcedure
	   PRINT '
	   GO

	   '

	   EXECUTE [bib].[LongPrint] @LoadCandidateFlagging
	   
	   PRINT '
	   GO

	   '

	   EXECUTE [bib].[LongPrint] @DefaultDataProcedure
	   PRINT '
	   GO

	   '

	   EXECUTE [bib].[LongPrint] @ProcScriptSQL
	   PRINT '
	   GO

	   '

	    EXECUTE [bib].[LongPrint] @ManualTestingProcedureSQL
	   PRINT '
	   GO

	   '
    END
END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[LockTableToPreventOverwriting]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[LockTableToPreventOverwriting] AS' 
END
GO

ALTER PROCEDURE [BIB].[LockTableToPreventOverwriting]
(
      @StagingSchemaName nvarchar(255)
    , @StagingTableName nvarchar(255)
)
AS
/*+ Version alpha-0.1.0.1072 20141005.170752 -------------------------------------------------------------- 
Stored Procedure  [bib].[LockTableToPreventOverwriting]

This routine locks down the metadata and related build for the staging table specified in the parameters.

If locked down, you cannot use BI Builder to overwrite previously generated staging and dimension tables
as well as the associated generated ETL routines
-- -----------------------------------------------------------+*/
BEGIN
    UPDATE [bib].[TableDefinitions] 
    SET Locked = 1
    FROM  [bib].[TableDefinitions] 
    WHERE
    StagingTableSchema = @StagingSchemaName
    AND
    StagingTableName = @StagingTableName
END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[LongPrint]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[LongPrint] AS' 
END
GO

ALTER PROCEDURE [BIB].[LongPrint]( @string nvarchar(max) )
AS
/*+ Version alpha-0.1.0.1074 20141005.170752 -------------------------------------------------------------- 
Stored Procedure  [bib].[LongPrint]

Prints out text of any length into the SMSS output window without having to worry 
about long text being truncated

This routine was created by Adam Anderson.
Refer to the original posting:
http://blog.falafel.com/t-sql-exceeding-the-8000-byte-limit-of-the-print-statement/
-- -----------------------------------------------------------+*/
SET NOCOUNT ON
 
set @string = rtrim( @string )
 
declare @cr char(1), @lf char(1)
set @cr = char(13)
set @lf = char(10)
 
declare @len int, @cr_index int, @lf_index int, @crlf_index int, @has_cr_and_lf bit, @left nvarchar(4000), @reverse nvarchar(4000)
set @len = 4000
 
while ( len( @string ) > @len )
begin
   set @left = left( @string, @len )
   set @reverse = reverse( @left )
   set @cr_index = @len - charindex( @cr, @reverse ) + 1
   set @lf_index = @len - charindex( @lf, @reverse ) + 1
   set @crlf_index = case when @cr_index < @lf_index then @cr_index else @lf_index end
   set @has_cr_and_lf = case when @cr_index < @len and @lf_index < @len then 1 else 0 end
   print left( @string, @crlf_index - 1 )
   set @string = right( @string, len( @string ) - @crlf_index - @has_cr_and_lf )
end
 
print @string


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[Main]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[Main] AS' 
END
GO

ALTER PROCEDURE [BIB].[Main]
(   

-- Model Table Details -----
	@ModelSchemaName nvarchar(255)
    ,@ModelTableName nvarchar(255)
-- Staging Table Details ------------
    ,@StagingSchemaName nvarchar(255)
    ,@StagingTableName nvarchar(255)
    ,@StagingFilegroupName nvarchar(255)
    ,@SourceSystem_Id int
    ,@SlowlyChangingDimensionColumnList nvarchar(2048)
-- Dimension Table Details ------------
    ,@DimSchemaName nvarchar(255)
    ,@DimTableName nvarchar(255)
    ,@DimFilegroupName nvarchar(255)
-- Control Flags for BI Builder Main()
    ,@SkipDataAnalysis bit
    ,@PauseForManualEditsToMetadata bit
    ,@UseCurrentMetadataForBuild bit
    ,@ApplyAutoAudit bit
)
AS
/*+ Version alpha-0.1.0.1076 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [bib].[Main]

This is the routine that drives the entire ETL creation process.

To generate a script that helps you build an ETL from a Model Table, run this routine:
 
EXECUTE [bib].[Main_PrintScriptToBuildETLFromModelTable] '<schema_of_model_table>', '<name_of_model_table>'

-- -----------------------------------------------------------+*/
BEGIN

SET NOCOUNT ON
SET XACT_ABORT ON

DECLARE @ExecuteGeneratedDimensionScript bit
SET	   @ExecuteGeneratedDimensionScript = 1 

DECLARE @StartAtStepIfPossible int
SET	   @StartAtStepIfPossible  = 0

IF @PauseForManualEditsToMetadata = 1
BEGIN
    PRINT '-- As you have selected to pause before the actual build to edit the metadata used in the build,
--   look to the end of this output for a prepared script that will make manual edits easier.
--   When you have executed the editing script, you can protect your changes by running [bib].[Main]
--   with the @UseCurrentMetadataForBuild set to = 1

'

END

PRINT '-- BI Builder Log =============================================================================
Build started ...
'

DECLARE @ResumeBuildAfterLastSuccessfulStep bit
SET @ResumeBuildAfterLastSuccessfulStep = 0

IF @UseCurrentMetadataForBuild = 1 SET @ResumeBuildAfterLastSuccessfulStep = 1

    IF [bib].[TableIsLockedToOverwriting]( @StagingSchemaName , @StagingTableName) = 1
    BEGIN
	   DECLARE @Msg nvarchar(MAX)
	   SET @Msg = 'This table is locked to prevent recreation and overwrite of the existing related dimension and ETL procedures:

	   To unock the table, run this procedure
		EXECUTE  [bib].[UnLockTableToAllowOverwriting] '''+@StagingSchemaName+''','''+@StagingTableName+'''	  
		'
	   RAISERROR(@Msg, 16, 1)
	   RETURN
    END
    
    DECLARE @LastSuccessfulBuildStepId int
    DECLARE @ProcError int
    
    IF @ResumeBuildAfterLastSuccessfulStep = 0
    BEGIN
	   EXECUTE [bib].[Restart_ETLBuildProgress]			   @StagingSchemaName , @StagingTableName
	   SET @LastSuccessfulBuildStepId = 0

	   IF @UseCurrentMetadataForBuild = 0
	   BEGIN
		  EXECUTE [bib].[RemoveTableMetadataFromBIBuilder]  @StagingSchemaName , @StagingTableName
		  PRINT 'Clearing out existing metadata (if any)'
	   END
    END 
    ELSE
    BEGIN
	   SELECT @LastSuccessfulBuildStepId = MAX(LastBuildStep_Id) FROM bib.ETLBuildProgress WHERE StagingSchemaName =  @StagingSchemaName AND StagingTableName =  @StagingTableName
	   IF @LastSuccessfulBuildStepId IS NULL 
	   BEGIN
		  EXECUTE [bib].[Restart_ETLBuildProgress]			   @StagingSchemaName , @StagingTableName
		  SET @LastSuccessfulBuildStepId = 0
	   END
    END   

    IF EXISTS (SELECT StagingColumnName
       FROM bib.ColumnDefinitions
       WHERE   StagingTableSchema = @StagingSchemaName
           AND StagingTableName = @StagingTableName
           AND StagingColumnName = 'Staging_Id')
    AND @UseCurrentMetadataForBuild = 1
    BEGIN
    PRINT 'DEBUGGING - SET @LastSuccessfulBuildStepId = 19'
	   SET @LastSuccessfulBuildStepId = 19
	  DELETE FROM bib.ETLBuildProgress
       WHERE bib.ETLBuildProgress.LastBuildStep_Id > 19
         AND bib.ETLBuildProgress.StagingSchemaName = @StagingSchemaName
         AND StagingTableName = @StagingTableName
    END

    IF (@StartAtStepIfPossible > 0) AND ( @StartAtStepIfPossible  <= @LastSuccessfulBuildStepId) 
    BEGIN
	   SET @LastSuccessfulBuildStepId = @StartAtStepIfPossible - 1
	    DELETE FROM bib.ETLBuildProgress
       WHERE bib.ETLBuildProgress.LastBuildStep_Id > @StartAtStepIfPossible - 1
         AND bib.ETLBuildProgress.StagingSchemaName = @StagingSchemaName
         AND StagingTableName = @StagingTableName
    END
    
    IF (@ModelSchemaName IS NOT NULL)
	   BEGIN

		  IF @LastSuccessfulBuildStepId < 1 
			 BEGIN
				IF [bib].[ModelTableHasPrimaryKey](@ModelSchemaName , @ModelTableName) = 0
				BEGIN
				    RAISERROR('Model Table has no primary key - you must set the primary key in order to successfully build the dimension and related ETL procedures', 16,1)
				    RETURN
				END

				EXECUTE [bib].[Update_ETLBuildProgress]				   @StagingSchemaName , @StagingTableName, 'Checked Model Table for Primary Key', 1
	  
			    END

			    IF @LastSuccessfulBuildStepId < 2 
				BEGIN
				  EXECUTE @ProcError = [bib].[CreateStagingTableFromModel]   
				  @ModelSchemaName
				, @ModelTableName
				, @StagingFilegroupName
				, @StagingSchemaName
				, @StagingTableName
				, 1

				IF @ProcError <> 0
				BEGIN
				    RAISERROR('Error caught in stored procedure bib.CreateStagingTableFromModel', 16,1)
				    RETURN;
				END

				 EXECUTE [bib].[Update_ETLBuildProgress]				   @StagingSchemaName , @StagingTableName, 'CreateStagingTableFromModel]', 2
				  PRINT 'Created staging table from model table'
				END
	  

	   END
	   ELSE
	   BEGIN -- If Model names are NULL THEN skip the "building from model" steps

	   IF @LastSuccessfulBuildStepId < 1
		  BEGIN
			 EXECUTE bib.Update_ETLBuildProgress				   @StagingSchemaName , @StagingTableName , 'Skipped - AddIsDeletedBitFlagColumnToModelTable' , 1
		  END

	   IF @LastSuccessfulBuildStepId < 2
		  BEGIN
			 EXECUTE bib.Update_ETLBuildProgress				   @StagingSchemaName , @StagingTableName , 'Skipped - CreateStagingTableFromModel]' , 2
		  END
	   END   

	  
	      
   IF @LastSuccessfulBuildStepId < 3 
    BEGIN
	   EXECUTE @ProcError = [bib].[PrebuildCheckingForStagingTable]				   @StagingSchemaName , @StagingTableName

	   IF @ProcError <> 0
	   BEGIN
		  RAISERROR('Error caught in stored procedure bib.PrebuildCheckingForStagingTable', 16,1)
		  RETURN;
	   END	 

	   EXECUTE [bib].[Update_ETLBuildProgress]				   @StagingSchemaName , @StagingTableName, 'PrebuildCheckingForStagingTable', 3
	   
	   PRINT 'Ran prebuild check on staging table'
	   PRINT '
	   
****** START OF METADATA COLLECTION *******************************************************'
    END    
    
    IF @LastSuccessfulBuildStepId < 4 
    BEGIN
	   EXECUTE [bib].[TableDefinitions_AddTable]
	   @StagingSchemaName
	   , @StagingTableName
	   , @DimSchemaName
	   , @DimTableName
	   , @DimFilegroupName
	   , @SourceSystem_Id

	   EXECUTE [bib].[Update_ETLBuildProgress]				   @StagingSchemaName , @StagingTableName, 'TableDefinitions_AddTable', 4
	   PRINT 'Added staging table to bib.TableDefinitions'
    END
    
    IF @LastSuccessfulBuildStepId < 5
    BEGIN
	   EXECUTE [bib].[ColumnDefinitions_AddColumnsFromTable]		   @StagingSchemaName , @StagingTableName
	   EXECUTE [bib].[Update_ETLBuildProgress]				   @StagingSchemaName , @StagingTableName, 'ColumnDefinitions_AddColumnsFromTable', 5
	    PRINT 'Added staging table columns to bib.ColumnDefinitions'
    END

    IF @LastSuccessfulBuildStepId < 6 
    BEGIN
	   IF @SkipDataAnalysis = 0
	   BEGIN
		  EXECUTE [bib].[AnalyseStagingTable]						   @StagingSchemaName , @StagingTableName
		  EXECUTE [bib].[Update_ETLBuildProgress]				   @StagingSchemaName , @StagingTableName, 'AnalyseStagingTable', 6
		   PRINT 'Ran data analysis routines'
	   END
	   ELSE
	   BEGIN
		  EXECUTE [bib].[Update_ETLBuildProgress]				   @StagingSchemaName , @StagingTableName, 'Skipped - AnalyseStagingTable', 6
	   END
	   
    END

    IF @LastSuccessfulBuildStepId < 7 
    BEGIN
	   EXECUTE [bib].[CreateDataTypesForDimension]				   @StagingSchemaName , @StagingTableName
	   EXECUTE [bib].[Update_ETLBuildProgress]				   @StagingSchemaName , @StagingTableName, 'CreateDataTypesForDimension', 7
	    PRINT 'Defined data types for dimension columns'
    END
    
    IF @LastSuccessfulBuildStepId < 8
    BEGIN
	   EXECUTE [bib].[FlagBusinessKeysFromStagingTable]			   @StagingSchemaName , @StagingTableName
	   EXECUTE [bib].[FlagSCDKeyColumnsFromStagingTable]			   @StagingSchemaName , @StagingTableName , @SlowlyChangingDimensionColumnList
	   EXECUTE [bib].[Update_ETLBuildProgress]				   @StagingSchemaName , @StagingTableName, 'FlagBusinessAndSCDKeysFromStagingTable', 8
        PRINT 'Flagged Business Keys and Slowly Changing Dimension columns for dimension columns'
    END    
 
    IF @LastSuccessfulBuildStepId < 9 
    BEGIN
	   EXECUTE [bib].[DeletePrimaryKeyFromStagingTable]			   @StagingSchemaName , @StagingTableName
	   EXECUTE [bib].[Update_ETLBuildProgress]				   @StagingSchemaName , @StagingTableName, 'DeletePrimaryKeyFromStagingTable', 9
	   PRINT 'Removed primary key from staging table'
    END

    IF @LastSuccessfulBuildStepId < 10
    BEGIN
	   EXECUTE [bib].[AddETLColumnsToStagingTable]				   @StagingSchemaName , @StagingTableName
	   EXECUTE [bib].[Update_ETLBuildProgress]				   @StagingSchemaName , @StagingTableName, 'AddETLColumnsToStagingTable', 10
	   PRINT 'Added columns to support ETL to staging table'
    END
    
    IF @LastSuccessfulBuildStepId < 11 
    BEGIN
	   EXECUTE [bib].[ColumnDefinitions_AddETLColumnsFromTable]	   @StagingSchemaName , @StagingTableName
	   EXECUTE [bib].[Update_ETLBuildProgress]				   @StagingSchemaName , @StagingTableName, 'ColumnDefinitions_AddETLColumnsFromTable', 11
	   PRINT 'Added new ETL columns to to bib.ColumnDefinitions'
    END    

    IF @LastSuccessfulBuildStepId < 12 
    BEGIN
	   EXECUTE [bib].[ExcludeColumnsFromDWHBasedOnRules]			   @StagingSchemaName , @StagingTableName
	   EXECUTE [bib].[Update_ETLBuildProgress]				   @StagingSchemaName , @StagingTableName, 'ExcludeColumnsFromDWHBasedOnRules', 12
	   PRINT 'Applied rules to exclude unwanted columns from dimension table'
    END    

    IF @LastSuccessfulBuildStepId < 13 
    BEGIN
	   EXECUTE [bib].[CreateColumnNamesForDimension]				   @StagingSchemaName , @StagingTableName
	   EXECUTE [bib].[Update_ETLBuildProgress]				   @StagingSchemaName , @StagingTableName, 'Update_ETLBuildProgress', 13
	   PRINT 'Adjusted column names for dimension table according to rules'
    END
    
    IF @LastSuccessfulBuildStepId < 14 
    BEGIN
	   EXECUTE [bib].[RepositionColumnsForDimension]				   @StagingSchemaName , @StagingTableName
	   EXECUTE [bib].[Update_ETLBuildProgress]				   @StagingSchemaName , @StagingTableName, 'RepositionColumnsForDimension', 14
	   PRINT 'Re-ordered columns in dimension table'
    END    

    IF @LastSuccessfulBuildStepId < 15 
    BEGIN
	   EXECUTE [bib].[SetSurrogateKeyNameForDimension]			   @StagingSchemaName , @StagingTableName
	   EXECUTE [bib].[Update_ETLBuildProgress]				   @StagingSchemaName , @StagingTableName, 'SetSurrogateKeyNameForDimension', 15
	   PRINT 'Applied surrogate key to dimension table'
    END    

    IF @LastSuccessfulBuildStepId < 16
    BEGIN
	   EXECUTE [bib].[SetCustomTypeConversionExpressionThroughRules]   @StagingSchemaName , @StagingTableName
	   EXECUTE [bib].[Update_ETLBuildProgress]				   @StagingSchemaName , @StagingTableName, 'SetCustomTypeConversionExpressionThroughRules', 16
	   PRINT 'Set custom type conversion expressions through rules'
    END    

    IF @LastSuccessfulBuildStepId < 17
    BEGIN
	   EXECUTE [bib].[ConvertBusinessKeysToUniqueIndexOnStagingTable]  @StagingSchemaName , @StagingTableName , @DimFilegroupName
	   EXECUTE [bib].[Update_ETLBuildProgress]				   @StagingSchemaName , @StagingTableName, 'ConvertBusinessKeysToUniqueIndexOnStagingTable', 17
	   PRINT 'Applying business keys to unique index on staging table'
    END    

    IF @LastSuccessfulBuildStepId < 18 
    BEGIN
	   EXECUTE [bib].[FlagModifiedDateFieldInStagingTable]		   @StagingSchemaName , @StagingTableName
    EXECUTE [bib].[Update_ETLBuildProgress]				   @StagingSchemaName , @StagingTableName, 'FlagModifiedDateFieldInStagingTable', 18
    PRINT 'Flagging field to use as Modified-Date'
    END
    
     IF @LastSuccessfulBuildStepId < 19 
    BEGIN
	   EXECUTE [bib].[FlagDeletedBitFieldInStagingTable]		   @StagingSchemaName , @StagingTableName
        EXECUTE [bib].[Update_ETLBuildProgress]				   @StagingSchemaName , @StagingTableName, 'FlagDeletedBitFieldInStagingTable', 19
       PRINT 'Flagging field to use as indicator that record is deleted'
    END

      IF @LastSuccessfulBuildStepId < 19 PRINT '****** END OF METADATA COLLECTION *******************************************************'

	 IF @PauseForManualEditsToMetadata = 1
	 BEGIN
	   DECLARE @EditScript nvarchar(MAX)
	   SET @EditScript =  [bib].[GenerateMetadataEditingScript](@StagingSchemaName , @StagingTableName)
	   EXECUTE [bib].[LongPrint] @EditScript
	   RETURN
	 END
    
    IF @LastSuccessfulBuildStepId < 20
    BEGIN
      PRINT '****** START OF OBJECT BUILDING  *******************************************************'
	   EXECUTE [bib].[GenerateDimensionTableScript]				   @StagingSchemaName , @StagingTableName , @ApplyAutoAudit,@ExecuteGeneratedDimensionScript
	   EXECUTE [bib].[Update_ETLBuildProgress]				   @StagingSchemaName , @StagingTableName, 'GenerateDimensionTableScript', 20
	   PRINT 'Created Dimension table'
    END    
   
    IF @LastSuccessfulBuildStepId < 21
    BEGIN
	   EXECUTE [bib].[GenerateDimLoadETLStoredProcedures]					   @ModelSchemaName, @ModelTableName ,@StagingSchemaName , @StagingTableName , @ExecuteGeneratedDimensionScript
	   EXECUTE [bib].[Update_ETLBuildProgress]				   @StagingSchemaName , @StagingTableName, 'GenerateDimLoadETLStoredProcedures', 21
	   PRINT 'Created ETL stored procedures for dimension'

	   DECLARE @RelatedDimensionTableSchema sysname
	   DECLARE @RelatedDimensionTableName sysname 
	   SET @RelatedDimensionTableSchema = NULL

	   SELECT
			 @RelatedDimensionTableName	=	RelatedDimensionTableName
			 , @RelatedDimensionTableSchema	=	RelatedDimensionTableSchema 
	   FROM bib.TableDefinitions 
	   WHERE 
		  StagingTableSchema = @StagingSchemaName
		  AND 
		  StagingTableName = @StagingTableName 

	   PRINT 'Look at the newly created stored procedure ['+@RelatedDimensionTableSchema+'].[Load_'+@RelatedDimensionTableName+']'
	   PRINT 'to inspect and test the results of the build'
	   PRINT '****** END OF OBJECT BUILDING  *******************************************************'
    END
    
SET @Msg = ' ---------------------------------------------------------------------------------------------------------------------------------
-- If you want to protect this build from being overwritten, you can lock the table using the routine below:
   EXECUTE  [bib].[LockTableToPreventOverwriting] '''+@StagingSchemaName+''','''+@StagingTableName+'''	  

 -- To unlock the table, use the routine below:
 -- EXECUTE  [bib].[LockTableToPreventOverwriting] '''+@StagingSchemaName+''','''+@StagingTableName+'''	 
 
 ---------------------------------------------------------------------------------------------------------------------------------
 '
 PRINT @Msg

DECLARE @SQL nvarchar(MAX)
SET @SQL =  [bib].[GenerateDebuggingScriptForDimension](@StagingSchemaName,  @StagingTableName)

PRINT '
Build finished, 
-- END of BI Builder Log =============================================================================

'   
EXECUTE bib.LongPrint @SQL
END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[Main_PrintScriptToBuildETLFromModelTable]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[Main_PrintScriptToBuildETLFromModelTable] AS' 
END
GO

ALTER PROCEDURE [BIB].[Main_PrintScriptToBuildETLFromModelTable]
(
 @ModelSchemaName sysname,
 @ModelTableName sysname
)
AS
/*+ Version alpha-0.1.0.1078 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [bib].[Main_PrintScriptToBuildETLFromModelTable]

This routine is for the developer - it prints out a script to be used
to drive the ETL building process for an individual Model Table.

First create your model table, then run this routine to generate the build script.
Copy and paste the script into an SSMS query window and edit the parameters to suit
the build you are planning.
-- -----------------------------------------------------------+*/
BEGIN

DECLARE @SQL nvarchar(MAX)

SET @SQL =  '

-- ETL BUILD SCRIPT FOR TABLE ['+@ModelSchemaName+'].['+@ModelTableName+']
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
    SET @ModelSchemaName = '''+@ModelSchemaName+''' 
    SET @ModelTableName = '''+@ModelTableName+'''

-- Staging Table Details ------------
    SET @StagingFilegroupName = ''<Put Staging Table FILEGROUP Name Here>''
    SET @StagingSchemaName = ''<Put Staging Table Schema Name Here>'' 
    SET @StagingTableName = ''<Put Staging Table Name Here>''
    SET @SlowlyChangingDimensionColumnList = NULL

-- Dimension Table Details ------------
    SET @DimFilegroupName  = ''<Put Dimension FILEGROUP Name Here>''
    SET @DimSchemaName = ''<Put Dimension Table Schema Name Here>''
    SET @DimTableName = ''<Put Dimension Table Name Here>''
    SET @SourceSystem_Id  = 1 

-- Control Flags for BI Builder Main()    
    SET @SkipDataAnalysis = 0
    SET @ApplyAutoAudit = 0 

    -- CHOOSE ONE OF THE FOLLOWING THREE OPTION SETS, DEPENDING ON HOW YOU WANT TO BUILD THE ETL
    ----------------------------------------------------------------------------------------------

    ---- 1) Control Flags for automated end-to-end build process
    SET @PauseForManualEditsToMetadata = 0   
    SET @UseCurrentMetadataForBuild = 0

    ---- 2) Control Flags to pause build process in order to manually edit the metadata from a script that is generated in the build print output 
    --SET @PauseForManualEditsToMetadata = 1   
    --SET @UseCurrentMetadataForBuild = 0

    -- 3) Control Flags to build from your manual changes to the metadata 
    -- This configuration skips the metadata creation process that would otherwise overwrite your changes 
    --SET @PauseForManualEditsToMetadata = 0   
    --SET @UseCurrentMetadataForBuild = 1

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

GO
'
EXECUTE [bib].[LongPrint] @SQL

END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[PrebuildCheckingForStagingTable]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[PrebuildCheckingForStagingTable] AS' 
END
GO

ALTER PROCEDURE [BIB].[PrebuildCheckingForStagingTable]
( @StagingSchemaName nvarchar( 255 )
, @StagingTableName nvarchar( 255 )
)
AS
/*+ Version alpha-0.1.0.1080 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [bib].[PrebuildCheckingForStagingTable]

This routine is called within the build to verify that the staging table
conforms to BI Builder's requirements.

You do have the option of starting with an existing staging table (rather than a model table 
from which a staging table is created). If you are doing this and you wnat to build in checks
that suit your changes to BI Builder, add those checks here.

For example, you might enforce that staging tables all have a standard column name for a column
that indicates the record is deleted or that certain columns have certain CHECK CONSTRAINTS. 
You would run those checks in here
-- -----------------------------------------------------------+*/
BEGIN
    DECLARE @Error int

    -- Currently only one check, to determine if the Identity column is Staging_Id 
    -- - if not, then an error reported that requires a fix to the staging table before the build can proceed

    EXECUTE [bib].[DetectIdentityColumnInStagingTable] @StagingSchemaName, @StagingTableName
     
    --PRINT 'ERROR: ' + LTRIM(@@ERROR)

    SET @Error = @@ERROR

    RETURN @Error
END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[RemoveTableMetadataFromBIBuilder]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[RemoveTableMetadataFromBIBuilder] AS' 
END
GO

ALTER PROCEDURE [BIB].[RemoveTableMetadataFromBIBuilder]
(@StagingSchemaName sysname, @StagingTableName sysname)
AS
/*+ Version alpha-0.1.0.1082 20141005.170752 -------------------------------------------------------------- 
Stored Procedure  [bib].[RemoveTableMetadataFromBIBuilder]

Removes all metadata concerning an individual staging table
from BI Builder. Any subsequent ETL builds for that staging table
will start from scratch.
-- -----------------------------------------------------------+*/
BEGIN

    DELETE FROM bib.ColumnDefinitions 
    WHERE StagingTableName = @StagingTableName 
    AND StagingTableSchema = @StagingSchemaName 

    DELETE FROM bib.TableDefinitions 
    WHERE StagingTableName = @StagingTableName 
    AND StagingTableSchema = @StagingSchemaName 
    
END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[RepositionColumnsForDimension]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[RepositionColumnsForDimension] AS' 
END
GO

ALTER PROCEDURE [BIB].[RepositionColumnsForDimension]
(
  @StagingSchemaName nvarchar( 255 )
, @StagingTableName nvarchar( 255 )
)
AS
/*+ Version alpha-0.1.0.1084 20141005.170752 -------------------------------------------------------------- 
Stored Procedure  [bib].[RepositionColumnsForDimension]

Adjusts the ordinal position of the columns in the generated dimension
table. It pushes the ETL-process columns to the end, the business keys
to the front and orders the rest in between alphabetically
-- -----------------------------------------------------------+*/
BEGIN

    DECLARE @StagingOriginalPosition int

    SELECT @StagingOriginalPosition = OrdinalPosition  FROM bib.ColumnDefinitions
    WHERE StagingTableSchema = @StagingSchemaName 
	   AND
	   StagingTableName = @StagingTableName 
	   AND
	   StagingColumnName = 'Staging_Id'

    ;WITH ColumnOrderTable AS
    (
    SELECT 1  AS 'Ordinal_ID' , 'Staging_Id' AS StagingColumnName
    UNION ALL
    SELECT 
    	ROW_NUMBER() OVER (ORDER BY StagingColumnName ASC) + 1 AS 'Ordinal_ID' 
     , StagingColumnName From bib.ColumnDefinitions 
        WHERE StagingTableSchema = @StagingSchemaName 
	   AND
	   StagingTableName = @StagingTableName 
	   AND
	   StagingColumnName NOT IN ( 'Staging_Id')
	   AND 
	   OrdinalPosition < @StagingOriginalPosition
    UNION ALL
    SELECT 
    	 OrdinalPosition  AS 'Ordinal_ID' 
     , StagingColumnName From bib.ColumnDefinitions 
        WHERE StagingTableSchema = @StagingSchemaName 
	   AND
	   StagingTableName = @StagingTableName 
	   AND
	   StagingColumnName NOT IN ( 'Staging_Id')
	   AND 
	   OrdinalPosition > @StagingOriginalPosition
	)
	   UPDATE cd
	   SET OrdinalPosition = co.Ordinal_ID
	   FROM bib.ColumnDefinitions cd
	   INNER JOIN ColumnOrderTable co on co.StagingColumnName  = cd.StagingColumnName
	   WHERE 
	   StagingTableSchema = @StagingSchemaName 
	   AND
	   StagingTableName = @StagingTableName 

END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[Restart_ETLBuildProgress]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[Restart_ETLBuildProgress] AS' 
END
GO

ALTER PROCEDURE [BIB].[Restart_ETLBuildProgress]
(@StagingSchemaName sysname, @StagingTableName sysname)
AS
/*+ Version alpha-0.1.0.1086 20141005.170752 -------------------------------------------------------------- 
Stored Procedure  [bib].[Restart_ETLBuildProgress]

Restarts the logging for an ETL build based on a particular
staging table.
-- -----------------------------------------------------------+*/

DELETE FROM  [bib].[ETLBuildProgress]
WHERE
    StagingSchemaName = @StagingSchemaName
    AND
    StagingTableName = @StagingTableName

INSERT INTO [bib].[ETLBuildProgress]
           ([StagingSchemaName]
           ,[StagingTableName]
           ,[LastBuildStepCompleted]
           ,[LastBuildStep_Id])
     VALUES
           (@StagingSchemaName
           ,@StagingTableName
           , 'Initiating ETL Build'
           ,0)


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[SetBusinessKeyforColumn]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[SetBusinessKeyforColumn] AS' 
END
GO

ALTER PROCEDURE [BIB].[SetBusinessKeyforColumn]
( @StagingSchemaName nvarchar( 255 )
, @StagingTableName nvarchar( 255 )
, @StagingColumnName nvarchar( 255 )
, @ColumnIsBusinessKey bit
)
AS
/*+ Version alpha-0.1.0.1098 20141005.170752 -------------------------------------------------------------- 
Stored Procedure  [bib].[SetBusinessKeyforColumn]

Used to flag a particular column as being a business key (Primary key in the source data)

You will not need to call this routine manually.
-- -----------------------------------------------------------+*/
BEGIN

SET NOCOUNT ON

    SET XACT_ABORT ON;
    BEGIN TRANSACTION;

    UPDATE bib.ColumnDefinitions
    SET
    IsBusinessKey = @ColumnIsBusinessKey
        FROM  bib.ColumnDefinitions
           WHERE StagingTableSchema = @StagingSchemaName
             AND StagingTableName = @StagingTableName
		    AND StagingColumnName = @StagingColumnName

    COMMIT

END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[SetCustomTypeConversionExpressionThroughRules]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[SetCustomTypeConversionExpressionThroughRules] AS' 
END
GO

ALTER PROCEDURE [BIB].[SetCustomTypeConversionExpressionThroughRules](  
@SchemaName sysname,           
@StagingTableName sysname
)            
AS
/*+ Version alpha-0.1.0.1100 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [bib].[SetCustomTypeConversionExpressionThroughRules]

Sometimes your staging table data will come in with data expressed in a type you want to 
change. 

An example might be a Integer style data field in which the value is expressed as the number of seconds
since 1 Jan 1970. In your DWH, you want this to be expressed as a DateTime but in staging the data 
comes through as an integer.

In order to achieve that conversion of data types in the the generated ETL stored procedures,
you specify a custom type conversion.

In this routine now, there is an example conversion for the scenario described above.
The assumption behind the example is that you will deal with many tables from that source
that all use that date format and are detectable through name/data-type combinations - therefore 
it is built into the stored procedures that govern the ETL build and you dont have to think about it too much.

When you refer to the column in the expression, put "<COLUMN>" into the clause instead of any actual column name.
When BI Builder creates the ETL stored procedures, it will resolve the name to the "Dimension" name you have chosen for that column.
Refer to the example in the current version of this stored procedure.

If you only strike one table that needs a particular transformation, you can optionally just edit the
[bib].[ColumnDefinitions] table directly when building that particular dimension table and related ETL.

One of the options when you run [bib].[Main] is to pause to edit the collected metadata. When you 
select that option, you are provided with an SQL script that makes this process simple.
-- -----------------------------------------------------------+*/
BEGIN

    SET NOCOUNT ON

    -- EXAMPLE OF A TYPE CONVERSION EXPRESSION RULE
    -- THESE GET APPLIED IN THE SP THAT LOADS THE DIMENSION

    -- In the model table [ExampleTypeConversion] there is a column that is a Integer style date
    -- These are integers equating to the number of seconds since Jan 1 1970

    -- In the data warehouse dimensions, we want to have this column expressed as a DateTimes instead of an integer

    -- To achieve this as part of the automated ETL build in this example, we will detect this column by "name" and data-type
    -- and put a custom type conversion that uses the function [DWHUtils].[IntegerTimestampToDatetime]

    
    UPDATE bib.ColumnDefinitions 
	   SET 
		  CustomTypeConversionExpression =  '[DWHUtils].[IntegerTimestampToDatetime](<COLUMN>)'
		  , DimensionDataType = 'Datetime'
    --SELECT *    
    FROM	  bib.ColumnDefinitions 
    WHERE 
    DataType in ('int', 'bigint') 
    AND 
    CustomTypeConversionExpression IS NULL
    AND
    StagingColumnName = 'Integer_Style_Timestamp' -- for this example, we are assuming this column is named consistently in any tables from this source you will import as models
    
       
END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[SetInclusionStateforColumn]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[SetInclusionStateforColumn] AS' 
END
GO

 
ALTER PROCEDURE [BIB].[SetInclusionStateforColumn]
( @StagingSchemaName nvarchar( 255 )
, @StagingTableName nvarchar( 255 )
, @StagingColumnName nvarchar( 255 )
, @IncludeColumnInDWH bit
)
AS
/*+ Version alpha-0.1.0.1102 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [bib].[SetInclusionStateforColumn] 

Columns in the model table can be excluded from being built into the
generated dimension table. This happens as part of the ETL build process
if you put your exclusion rules into tbe stored procedure [BIB].[ExcludeColumnsFromDWHBasedOnRules]

You would do this if you cannot exlude a column known to be useless
from arriving in the data load from outside your database. An example
could be some legacy ETL tool that is beyond your control to adjust.

You can also pause the ETL build in order to exclude columns manually. One of the options 
when you run [bib].[Main] is to pause to edit the collected metadata. When you 
select that option, you are provided with an SQL script that makes this process simple.
-- -----------------------------------------------------------+*/
BEGIN

SET NOCOUNT ON

    SET XACT_ABORT ON;
    BEGIN TRANSACTION;

    UPDATE bib.ColumnDefinitions
    SET
    IncludeInDWH = @IncludeColumnInDWH
        FROM  bib.ColumnDefinitions
           WHERE StagingTableSchema = @StagingSchemaName
             AND StagingTableName = @StagingTableName
		    AND StagingColumnName = @StagingColumnName

    COMMIT

END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[SetSCDFlagforColumn]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[SetSCDFlagforColumn] AS' 
END
GO

ALTER PROCEDURE [BIB].[SetSCDFlagforColumn]
( @StagingSchemaName nvarchar( 255 )
, @StagingTableName nvarchar( 255 )
, @StagingColumnName nvarchar( 255 )
, @UseColumnForSCD bit
)
AS 
/*+ Version alpha-0.1.0.1104 20141005.170752 -------------------------------------------------------------- 
Stored Procedure  [bib].[SetSCDFlagforColumn]

Using this routine, the automated build of the ETL will flag any 
SCD columns you supply as a comma-delimited list to the [bib].[Main] routine 
- so that changes to those column values triggers new dimension records rather than overwrites.

You can optionaly use this procedure to manually flag a column
as being as SCD Type 2 trigger column. You would do this if you are opting to pause 
the ETL build process to edit metadata before creating the dimension table
and ETL stored procedures.
-- -----------------------------------------------------------+*/
BEGIN

SET NOCOUNT ON

    SET XACT_ABORT ON;
    BEGIN TRANSACTION;

    UPDATE bib.ColumnDefinitions
    SET
    UseColumnForSCD = @UseColumnForSCD
        FROM  bib.ColumnDefinitions
           WHERE StagingTableSchema = @StagingSchemaName
             AND StagingTableName = @StagingTableName
		    AND StagingColumnName = @StagingColumnName

    COMMIT

END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[SetSurrogateKeyNameForDimension]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[SetSurrogateKeyNameForDimension] AS' 
END
GO

 
ALTER PROCEDURE [BIB].[SetSurrogateKeyNameForDimension]
(
  @StagingSchemaName nvarchar( 255 )
, @StagingTableName nvarchar( 255 )
)
AS
/*+ Version alpha-0.1.0.1106 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [bib].[SetSurrogateKeyNameForDimension]  

Called within the build process, this routine applies a standardised
naming convention to the surrogate key.

By default, the surrogate key is named [<DimensionTableName>_did].

Did is used instead of Id to differentiate dimension keys from business keys,
Did stands for Dimension Id.

If you wish to change that, you can edit this routine to suit your naming standards.
-- -----------------------------------------------------------+*/
BEGIN
    
    UPDATE cd
	   SET 
		   DimensionColumnName = td.RelatedDimensionTableName  + '_did'
		  ,DimensionDataType  = 'bigint'
		  , DimensionDataTypeLength = NULL
	   FROM bib.ColumnDefinitions cd
	   INNER JOIN bib.TableDefinitions td on td.StagingTableSchema = cd.StagingTableSchema 
		  AND td.StagingTableName = cd.StagingTableName 
	   WHERE 
	   cd.StagingTableSchema = @StagingSchemaName 
	   AND
	   cd.StagingTableName = @StagingTableName 
	   AND
	   cd.StagingColumnName  = 'Staging_Id'

END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[TableDefinitions_AddTable]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[TableDefinitions_AddTable] AS' 
END
GO

ALTER PROCEDURE [BIB].[TableDefinitions_AddTable]
( @StagingSchemaName nvarchar( 255 ), @StagingTableName nvarchar( 255 )
, @DimSchemaName nvarchar( 255 ) = 'dbo'
, @DimTableName nvarchar( 255 ) = NULL
, @DimFilegroupName nvarchar( 255 ) = 'PRIMARY'
, @SourceSystem_Id int = 1)
AS
/*+ Version alpha-0.1.0.1108 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [bib].[TableDefinitions_AddTable]

Called within the ETL build process to store metadata about
the staging table (not the columns). 
-- -----------------------------------------------------------+*/
BEGIN

    SET NOCOUNT ON;

    IF @DimTableName IS NULL
    BEGIN
	   SET @DimTableName = 'Dim' + @StagingTableName
    END

    IF NOT EXISTS( SELECT *
                     FROM  TableDefinitions
                     WHERE StagingTableName
                           =
                           @StagingTableName 
					  AND
					  StagingTableSchema = @StagingSchemaName)

        BEGIN

            INSERT INTO bib.TableDefinitions
            (
			 DatabaseName ,
			 StagingTableSchema ,
			 StagingTableName ,
			 TableType ,
			 RelatedDimensionTableName ,
			 RelatedDimensionTableSchema,
			 RelatedDimensionTableFileGroup,
			 IncludeInDWH,
			 SourceSystem_Id

            )
          SELECT
				DB_NAME (  ) 
			   , SCHEMA_NAME (  o.uid ) 
			   , o.name
			   , CASE o.xtype
				   WHEN 'U' THEN 'TABLE'
				   WHEN 'V' THEN 'VIEW'
				 END
			   , @DimTableName
			   , @DimSchemaName
			   , @DimFilegroupName
			   , 1
			   ,@SourceSystem_Id
		  FROM sysobjects o
			   WHERE
			   o.xtype IN ( 'U' )
			  
			 AND o.name
				=
				@StagingTableName
			 AND SCHEMA_NAME( o.uid )
				=
				@StagingSchemaName;
	   END

	   ELSE
	   BEGIN
		  

			 UPDATE [bib].[TableDefinitions]
			    SET [DatabaseName] = DB_NAME (  ) 
				  ,[RelatedDimensionTableName] = @DimTableName
				  ,[RelatedDimensionTableSchema] = @DimSchemaName
				  ,[RelatedDimensionTableFileGroup] = @DimFilegroupName
				  ,[TableType] =  CASE o.xtype
								   WHEN 'U' THEN 'TABLE'
								   WHEN 'V' THEN 'VIEW'
								 END
				  ,[IncludeInDWH] = 1
				  ,[RowCountWhenSampled] = NULL
				  ,[SourceSystem_Id] = @SourceSystem_Id
			 FROM    [bib].[TableDefinitions]
			 INNER JOIN sysobjects o
				ON  o.name
				=
				@StagingTableName
			 AND SCHEMA_NAME( o.uid )
				=
				@StagingSchemaName;
	   END

    SET NOCOUNT OFF;
END;


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[TruncateTablesStoringBuildMetadata]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[TruncateTablesStoringBuildMetadata] AS' 
END
GO

ALTER PROCEDURE [BIB].[TruncateTablesStoringBuildMetadata]
AS
/*+ Version alpha-0.1.0.1110 20141005.170752 -------------------------------------------------------------- 
Stored Procedure  [bib].[TruncateTablesStoringBuildMetadata]

Clears out the two tables 
( bib.ColumnDefinitions & bib.TableDefinitions & bib.ETLBuildProgress)
that store metadata about the generated staging tables and dimensions.
-- -----------------------------------------------------------+*/
BEGIN

    TRUNCATE TABLE bib.ColumnDefinitions
    TRUNCATE TABLE bib.TableDefinitions
    TRUNCATE TABLE bib.ETLBuildProgress
END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[UnLockTableToAllowOverwriting]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[UnLockTableToAllowOverwriting] AS' 
END
GO

ALTER PROCEDURE [BIB].[UnLockTableToAllowOverwriting]
(
      @StagingSchemaName nvarchar(255)
    , @StagingTableName nvarchar(255)
)
AS
/*+ Version alpha-0.1.0.1112 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [bib].[UnLockTableToAllowOverwriting]

Running this procedure lets you overwite existing metadata, ETL procedures and
dimensions when you run a  new build process using that staging table. 
-- -----------------------------------------------------------+*/
BEGIN
    UPDATE [bib].[TableDefinitions] 
    SET Locked = 0
    FROM  [bib].[TableDefinitions] 
    WHERE
    StagingTableSchema = @StagingSchemaName
    AND
    StagingTableName = @StagingTableName
END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BIB].[Update_ETLBuildProgress]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [BIB].[Update_ETLBuildProgress] AS' 
END
GO

ALTER PROCEDURE [BIB].[Update_ETLBuildProgress]
(@StagingSchemaName sysname, @StagingTableName sysname, @LastBuildStepCompleted nvarchar(255), @LastBuildStep_Index int)
AS
/*+ Version alpha-0.1.0.1114 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [bib].[Update_BIB_ETL_Build_Progress]

Used within the ETL build process to track what steps have been performed successfully. 

You will never need to call this routine manually.
-- -----------------------------------------------------------+*/

DECLARE @MaxCompletedStep int
SELECT @MaxCompletedStep = MAX([LastBuildStep_Id]) FROM [bib].[ETLBuildProgress] WHERE StagingSchemaName = @StagingSchemaName AND StagingTableName = @StagingTableName

IF (@LastBuildStep_Index != @MaxCompletedStep + 1) BEGIN
    DECLARE @Msg nvarchar(255)
    SET @Msg = 'ETL Build Steps are occurring out of sequence: '+ @LastBuildStepCompleted
    RAISERROR(@Msg,16,1)
END

INSERT INTO [bib].[ETLBuildProgress] 
           ([StagingSchemaName]
           ,[StagingTableName]
           ,[LastBuildStepCompleted]
           ,[LastBuildStep_Id])
     VALUES
           (@StagingSchemaName
           ,@StagingTableName
           ,@LastBuildStepCompleted
           ,@LastBuildStep_Index)


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[DWHUtils].[CreateCalendarTableAndData]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [DWHUtils].[CreateCalendarTableAndData] AS' 
END
GO
ALTER  PROCEDURE [DWHUtils].[CreateCalendarTableAndData]

    @StartDate AS datetime = '20000101',  -- The First Date record in the Calendar

    @EndDate   AS datetime = '20301231',  -- The Last Date record in the Calendar

    @DropTable  AS char(1) = 'Y'          -- 'Y' Will drop and recreate the table, any other value will truncate the exititng table
AS

SET NOCOUNT ON
SET DATEFIRST 1 -- First day of week Monday = 1

DECLARE @CurrentDate datetime

SET @CurrentDate = @StartDate

-- Prepare Dimension Table

IF UPPER(@DropTable) = 'Y'

    IF EXISTS (SELECT * FROM sys.sysobjects WHERE id = object_id(N'dwhUtils.Calendar') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)

        DROP TABLE dwhUtils.Calendar

IF EXISTS (SELECT * FROM sys.sysobjects WHERE id = object_id(N'dwhUtils.Calendar') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)

BEGIN

    TRUNCATE TABLE dwhUtils.Calendar

END

ELSE

BEGIN

    CREATE TABLE dwhUtils.Calendar (
    	 Date_DID int NOT NULL 
	, Date_Value datetime NULL
	, Date_Std varchar ( 14 )  NOT NULL
	, Date_Long varchar ( 17 )  NOT NULL
	, Date_Short varchar ( 10 )  NOT NULL
	, Calendar_Year varchar ( 7 )  NOT NULL
	, Calendar_Quarter varchar ( 10 )  NOT NULL
	, Calendar_Quarter_SK varchar ( 7 )  NOT NULL
	, Calendar_Month varchar ( 9 )  NOT NULL
	, Calendar_Month_SK varchar ( 7 )  NOT NULL
	, Day_Of_Month varchar ( 7 )  NOT NULL
	, Day_Of_Week varchar ( 9 )  NOT NULL
	, Week_Number [smallint] NULL
	, Day_Number_Of_Week [smallint] NULL
	, Cal_Week_End_SK [int] NULL
	, Cal_Week_Start_SK [int] NULL
	, Cal_Week_End_Short [char] ( 10 )  NULL
	, Fiscal_Year varchar ( 13 )  NOT NULL
	, Fiscal_Year_Short varchar ( 7 )  NOT NULL
	, Fiscal_Year_SK varchar ( 7 )  NOT NULL
	, Fiscal_Quarter varchar ( 12 )  NOT NULL
	, Fiscal_Quarter_SK varchar ( 7 )  NOT NULL
	, Fiscal_Period varchar ( 16 )  NOT NULL
	, Fiscal_Month varchar ( 50 ) 
	, Fiscal_Period_SK varchar ( 7 )  NOT NULL
	, Fiscal_Week varchar ( 14 )  NOT NULL
	, Fiscal_Week_SK varchar ( 7 )  NOT NULL
	, Fiscal_Half_Year varchar ( 25 )  NULL
	, Month_Name_SK int NULL

    	

    )

    ALTER TABLE dwhUtils.Calendar WITH NOCHECK ADD 
    	CONSTRAINT PK_Calendar PRIMARY KEY  CLUSTERED 
    	(Date_DID) 

END

-- Add Unknown record

    INSERT INTO dwhUtils.Calendar

           (Date_DID, Date_Value, Date_Std, Date_Long, Date_Short, Calendar_Year, Calendar_Quarter, Calendar_Quarter_SK, Calendar_Month, Calendar_Month_SK, Day_Of_Month, Day_Of_Week, Fiscal_Year, Fiscal_Year_Short, Fiscal_Year_SK, Fiscal_Quarter, Fiscal_Quarter_SK, Fiscal_Period, Fiscal_Month, Fiscal_Period_SK, Fiscal_Week, Fiscal_Week_SK)

    VALUES ( -1,     NULL,       'Unknown', 'Unknown', 'Unknown',  'Unknown',     'Unknown',        'Unknown',           'Unknown',      'Unknown',         'Unknown',    'Unknown',   'Unknown',   'Unknown',         'Unknown',      'Unknown',      'Unknown',         'Unknown',     'Unknown',    'Unknown',     'Unknown',   'Unknown'     )          

-- Add default records

WHILE @CurrentDate <= @EndDate

BEGIN

    INSERT INTO dwhUtils.Calendar

        (Date_DID, Date_Value, Date_Std, Date_Long, Date_Short, Calendar_Year, Calendar_Quarter, Calendar_Quarter_SK, Calendar_Month, Calendar_Month_SK, Day_Of_Month, Day_Of_Week, Week_Number,  Day_Number_Of_Week, Cal_Week_End_SK, Cal_Week_Start_SK, Cal_Week_End_Short, Fiscal_Year, Fiscal_Year_Short, Fiscal_Year_SK, Fiscal_Quarter, Fiscal_Quarter_SK, Fiscal_Period, Fiscal_Period_SK, Fiscal_Week, Fiscal_Week_SK)

    SELECT
        -- Primary Key
       CONVERT(int,CONVERT(varchar,@CurrentDate,112)) AS Date_DID,
        -- The Date
        @CurrentDate AS Date_Value,
       -- Date Descriptions

        DATENAME(day,@CurrentDate) + ' ' + LEFT(DATENAME(month,@CurrentDate),3) + ' ' + DATENAME(year,@CurrentDate)AS Date_Std,

	   DATENAME(day,@CurrentDate) + ' ' + DATENAME(month,@CurrentDate) + ' ' + DATENAME(year,@CurrentDate)AS Date_Long,

        CONVERT(varchar,@CurrentDate,103) AS Date_Short,

        -- Calendar Year

        DATENAME(year,@CurrentDate) AS Calendar_Year,
        -- Calendar Quarter

        DATENAME(year,@CurrentDate) + ' Qtr ' + DATENAME(quarter,@CurrentDate) AS Calendar_Quarter,

        DATENAME(year,@CurrentDate) + REPLACE(STR(DATENAME(quarter,@CurrentDate),2,0),' ','0') AS Calendar_Quarter_SK,
        -- Calendar Month

        DATENAME(month,@CurrentDate) AS Calendar_Month,

        DATENAME(year,@CurrentDate) + REPLACE(STR(DATEPART(month,@CurrentDate),2,0),' ','0') AS Calendar_Month_SK,

        DATENAME(day,@CurrentDate) AS Day_Of_Month,

        -- Calendar Week

        DATENAME(weekday,@CurrentDate) AS Day_Of_Week,

        -- Calendar Week Number

	DATEPART(Week,@CurrentDate) As Week_Number, 

 	DATEPART(dw, @CurrentDate)As Day_Number_Of_Week,

	CAST(CONVERT(char,CASE WHEN DATEPART(dw, @CurrentDate) = 7

				THEN @CurrentDate

				ELSE DATEADD(d, 7-DATEPART(dw, @CurrentDate),@CurrentDate)END,112) as int) As Cal_Week_End_SK,

 	CAST(CONVERT(char,CASE WHEN DATEPART(dw, @CurrentDate) = 1

				THEN @CurrentDate

				ELSE DATEADD(d, -DATEPART(dw, @CurrentDate) + 1,@CurrentDate)END ,112) as int) As Cal_Week_Start_SK,

	CONVERT(char,CASE WHEN DATEPART(dw, @CurrentDate) = 7

				THEN @CurrentDate

				ELSE DATEADD(d, 7-DATEPART(dw, @CurrentDate),@CurrentDate)END,103) As Cal_Week_End_Short,
        -------------------------------------------------------------------------------------------------------

        -- Fiscal Calendar calculations below assume a month based period with the Fiscal Year starting 1 July

        -- Modify below if different calendar is required.

        -------------------------------------------------------------------------------------------------------

        -- Fiscal Year

    	CASE 

            WHEN DATEPART(month,@CurrentDate) > 6 

                THEN  DATENAME(year,@CurrentDate) + ' - ' + DATENAME(year,DATEADD(Year,1,@CurrentDate)) 

    		    ELSE  DATENAME(year,DATEADD(Year,-1,@CurrentDate)) + ' - '+ DATENAME(year,@CurrentDate)

        END AS Fiscal_Year,

    	CASE 

            WHEN DATEPART(month,@CurrentDate) > 6 

                THEN  DATENAME(year,DATEADD(Year,1,@CurrentDate)) 

        		ELSE  DATENAME(year,@CurrentDate)

        END AS Fiscal_Year_Short,

    	CASE 

            WHEN DATEPART(month,@CurrentDate) > 6 

                THEN DATENAME(year,DATEADD(Year,1,@CurrentDate)) 

        		ELSE DATENAME(year,@CurrentDate)

        END AS Fiscal_Year_SK,

        

        -- Fiscal Quarter

    	CASE 

            WHEN DATEPART(month,@CurrentDate) > 6 

                THEN  'Qtr ' + CONVERT(varchar,DATEPART(quarter,@CurrentDate) - 2) + ' ' + DATENAME(year,DATEADD(Year,1,@CurrentDate)) 

        		ELSE  'Qtr ' + CONVERT(varchar,DATEPART(quarter,@CurrentDate) + 2) + ' ' + DATENAME(year,@CurrentDate)

        END AS Fiscal_Quarter,

    	CASE 

            WHEN DATEPART(month,@CurrentDate) > 6 

                THEN DATENAME(year,DATEADD(Year,1,@CurrentDate)) + REPLACE(STR(DATEPART(quarter,@CurrentDate) - 2,2,0),' ','0')

        		ELSE DATENAME(year,@CurrentDate) + REPLACE(STR(DATEPART(quarter,@CurrentDate) + 2,2,0),' ','0')

        END AS Fiscal_Quarter_SK,

    

        -- Fiscal Period

    	CASE 

            WHEN DATEPART(month,@CurrentDate) > 6 

                THEN  DATENAME(year,DATEADD(Year,1,@CurrentDate)) + ' Period ' + CONVERT(varchar,DATEPART(month,@CurrentDate) - 6)

        		ELSE  DATENAME(year,@CurrentDate) + ' Period ' + CONVERT(varchar,DATEPART(month,@CurrentDate) + 6)

        END AS Fiscal_Period,

    	CASE 

            WHEN DATEPART(month,@CurrentDate) > 6 

                THEN DATENAME(year,DATEADD(Year,1,@CurrentDate)) + REPLACE(STR(DATEPART(month,@CurrentDate) - 6,2,0),' ','0')

        		ELSE DATENAME(year,@CurrentDate) + REPLACE(STR(DATEPART(month,@CurrentDate) + 6,2,0),' ','0')

        END AS Fiscal_Period_SK,

    

        -- Fiscal Week

    	CASE 

            WHEN DATEPART(month,@CurrentDate) > 6 

                THEN   'Wk ' + CONVERT(varchar,DATEPART(week,@CurrentDate) - 26) + ' ' + DATENAME(year,DATEADD(Year,1,@CurrentDate)) 

        		ELSE  'Wk ' + CONVERT(varchar,DATEPART(week,@CurrentDate) + 26) + ' '  + DATENAME(year,@CurrentDate)

        END AS Fiscal_Week,

    	CASE 

            WHEN DATEPART(month,@CurrentDate) > 6 

                THEN DATENAME(year,DATEADD(Year,1,@CurrentDate)) + REPLACE(STR(DATEPART(week,@CurrentDate) - 26,2,0),' ','0')

        		ELSE DATENAME(year,@CurrentDate) + REPLACE(STR(DATEPART(week,@CurrentDate) + 26,2,0),' ','0')

        END AS Fiscal_Week_SK

    SET @CurrentDate = DATEADD(day,1,@CurrentDate)

END -- end while loop

-----------------------------------------------------------------------------------------------------------

-- =============================

-- Update Fiscal Month

-- =============================

UPDATE dwhUtils.Calendar SET

Fiscal_Month = 

	CASE CAST(RIGHT(Calendar_Month_SK,2) As int) 

		WHEN 1 THEN 'Jan '

		WHEN 2 THEN 'Feb '

		WHEN 3 THEN 'Mar '

		WHEN 4 THEN 'Apr '

		WHEN 5 THEN 'May '

		WHEN 6 THEN 'Jun '

		WHEN 7 THEN 'Jul '

		WHEN 8 THEN 'Aug '

		WHEN 9 THEN 'Sep '

		WHEN 10 THEN 'Oct '

		WHEN 11 THEN 'Nov '

		WHEN 12 THEN 'Dec '

		ELSE ' ' END  +  SUBSTRING(Calendar_Month_SK,3,2) 

WHERE Date_DID != -1

;WITH HTable AS
(
SELECT
		 Date_DID
		, 
		CASE 
			WHEN Fiscal_Quarter LIKE 'Qtr 1 %' OR Fiscal_Quarter LIKE 'Qtr 2 %'  THEN 'H1 ' + LTRIM(Fiscal_Year)
			WHEN Fiscal_Quarter LIKE 'Qtr 3 %' OR Fiscal_Quarter LIKE 'Qtr 4 %'  THEN 'H2 ' + LTRIM(Fiscal_Year)
		END
			As Fiscal_Half_Year
			
FROM	dwhUtils.Calendar

)
UPDATE dwhUtils.Calendar
SET Fiscal_Half_Year = HTable.Fiscal_Half_Year
FROM dwhUtils.Calendar
INNER JOIN HTable
	ON HTable.Date_DID = dwhUtils.Calendar.Date_DID


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[DWHUtils].[ReportOnFilegroupTablesAndIndexes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [DWHUtils].[ReportOnFilegroupTablesAndIndexes] AS' 
END
GO

ALTER PROCEDURE [DWHUtils].[ReportOnFilegroupTablesAndIndexes]
AS
/*+ Version alpha-0.1.0.0 20141005.170752 -------------------------------------------------------------- 
Stored Procedure [DWHUtils].[ReportOnFilegroupTablesAndIndexes]  

Provides a listing of what tables are on what filegroups and other information
about them.
-- -----------------------------------------------------------+*/
BEGIN

SELECT
		 OBJECT_SCHEMA_NAME ( t.object_id )  AS schema_name
		, t.name AS table_name
		, i.index_id
		, i.name AS index_name
		, p.partition_number
		, fg.name AS filegroup_name
		, p.rows as rows --FORMAT ( p.rows, '#,##' )  AS rows
FROM
	 sys.tables t 
	INNER JOIN  sys.indexes i
	ON t.object_id	=	i.object_id 
	INNER JOIN  sys.partitions p
	ON i.object_id	=	p.object_id AND i.index_id	=	p.index_id 
	LEFT OUTER JOIN  sys.partition_schemes ps
	ON i.data_space_id	=	ps.data_space_id 
	LEFT OUTER JOIN  sys.destination_data_spaces dds
	ON ps.data_space_id	=	dds.partition_scheme_id AND p.partition_number	=	dds.destination_id 
	INNER JOIN  sys.filegroups fg
		 ON COALESCE ( dds.data_space_id, i.data_space_id  ) 	=	fg.data_space_id 
	 ORDER BY	OBJECT_SCHEMA_NAME ( t.object_id ) 
	, t.name
	, fg.name
	, p.partition_number
	, i.name

END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ETL].[AddETLBatchStepStatus]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [ETL].[AddETLBatchStepStatus] AS' 
END
GO

--[ETL].[Flag_Staging_Sales_SalesTerritory_Records_For_Loading] 1

ALTER PROCEDURE [ETL].[AddETLBatchStepStatus]
( @Batch_ID bigint , @ETLLoadStatusId int, @Message nvarchar(1024), @RecordsAffected int)
AS
BEGIN

INSERT INTO [ETL].[ETL_Batch_Details]
           ([ETL_Batch_Log_Id]
           ,[ETLLoadStatus_Id]
           ,[Start_Time]
           ,[End_Time]
           ,[Run_Duration]
           ,[Duration]
           ,[Success_Flag]
           ,[Error_Code]
           ,[RecordsAffected]
		 , [Message])
     VALUES
           (@Batch_ID
           ,@ETLLoadStatusId
           ,GETDATE()
           ,NULL
           ,NULL
           ,NULL
           ,NULL
           ,NULL
           ,@RecordsAffected
		 ,@Message )

RETURN SCOPE_IDENTITY()
END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ETL].[InitiateETLBatch]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [ETL].[InitiateETLBatch] AS' 
END
GO

ALTER PROCEDURE [ETL].[InitiateETLBatch] ( @ProcessName nvarchar( 1024 ))
AS
/*+ -------------------------------------------------------------- 
Stored Procedure [ETL].[InitiateETLBatch]

For each batch of records loaded from staging to dimensions table in an ETL cycle
there are logs stored to document the metrics and success/failure of each load.

This routine initiates the logging table [ETL].[ETL_Batch_Logs] for each batch.

It is called by the ETL stored procedure [Load_<DIMENSION_NAME>] that is generated by 
BI Builder
-- -----------------------------------------------------------+*/
BEGIN

    SET NOCOUNT ON;

    INSERT INTO [ETL].[ETL_Batch_Logs]
			([Process_Name]
			,[Start_Time]
			,[End_Time])
    VALUES     (@ProcessName
			 ,GETDATE( ) 
			 , @@DBTS)           

    DECLARE @ETL_Batch_Log_Id bigint
    SET @ETL_Batch_Log_Id = SCOPE_IDENTITY()

    INSERT INTO [ETL].[ETL_Batch_Details]
			([ETL_Batch_Log_Id]
			,[ETLLoadStatus_Id]
			,[Start_Time]
			,[End_Time]
			,[Run_Duration]
			,[Duration]
			,[Success_Flag]
			,[Error_Code]
			,[Message]
			,[RecordsAffected] )
	    VALUES
			(@ETL_Batch_Log_Id
			,1
			,GETDATE()
			,GETDATE()
			,'0:00:00'
			,0
			,1
			,NULL
			,'ETL Batch Initiated OK'
			,0)

    RETURN @ETL_Batch_Log_Id

END


GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ETL].[UpdateETLBatchStepStatus]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [ETL].[UpdateETLBatchStepStatus] AS' 
END
GO

ALTER PROCEDURE [ETL].[UpdateETLBatchStepStatus]
( @Step_ID bigint , @ETLLoadStatusId int, @Message nvarchar(255), @RecordsAffected int, @Success bit, @ErrorCode int)
AS
BEGIN

DECLARE
   @EndTime datetime;
   DECLARE @Batch_Id bigint;

SET @EndTime = GETDATE( );

UPDATE [ETL].[ETL_Batch_Details]
   SET  [ETLLoadStatus_Id] = @ETLLoadStatusId
      ,[End_Time] = GETDATE()
      ,[Run_Duration] =  LTRIM( DATEDIFF( ss , Start_Time , @EndTime ) / 3600 ) + ':' + RIGHT( '00' + LTRIM( DATEDIFF( ss , Start_Time , @EndTime ) / 60 % 60 ) , 2 ) + ':' + RIGHT( '00' + LTRIM( DATEDIFF( ss , Start_Time , @EndTime ) % 60 ) , 2 )
      ,[Duration] = CEILING( 1.0 * DATEDIFF( ms , Start_Time , @EndTime ) / 1000 ) / 60
      ,[Success_Flag] = @Success
      ,[Error_Code] = @ErrorCode
      ,[RecordsAffected] = @RecordsAffected
      ,[Message] = @Message
 WHERE [ETL_Batch_Details_Id] = @Step_ID

 SELECT @Batch_Id = ETL_Batch_Log_Id FROM [ETL].[ETL_Batch_Details] WHERE  [ETL_Batch_Details_Id] = @Step_ID

UPDATE [ETL].[ETL_Batch_Logs]
SET 
    End_Time = GETDATE()
    ,[Success_Flag] = @Success
    ,[Error_Code] = @ErrorCode
    , Load_Detail_Desc = ISNULL(Load_Detail_Desc +'
', '' )+ @Message
     ,[Run_Duration] =  LTRIM( DATEDIFF( ss , Start_Time , @EndTime ) / 3600 ) + ':' + RIGHT( '00' + LTRIM( DATEDIFF( ss , Start_Time , @EndTime ) / 60 % 60 ) , 2 ) + ':' + RIGHT( '00' + LTRIM( DATEDIFF( ss , Start_Time , @EndTime ) % 60 ) , 2 )
      ,[Duration] = CEILING( 1.0 * DATEDIFF( ms , Start_Time , @EndTime ) / 1000 ) / 60
FROM [ETL].[ETL_Batch_Logs]
WHERE ETL_Batch_Log_Id = @Batch_Id

IF @ETLLoadStatusId = 2 -- Flagging records to import
BEGIN
    UPDATE [ETL].[ETL_Batch_Logs]
    SET 
	   NoOfRecords = @RecordsAffected

    FROM [ETL].[ETL_Batch_Logs]
    WHERE ETL_Batch_Log_Id = @Batch_Id
END

IF @ETLLoadStatusId = 3 -- Loading New Records
BEGIN
    UPDATE [ETL].[ETL_Batch_Logs]
    SET 
	   NoOfNewRecords = @RecordsAffected

    FROM [ETL].[ETL_Batch_Logs]
    WHERE ETL_Batch_Log_Id = @Batch_Id
END

IF @ETLLoadStatusId = 4-- Updating Records
BEGIN
    UPDATE [ETL].[ETL_Batch_Logs]
    SET 
	   NoOfUpdatedRecords = @RecordsAffected - NoOfNewRecords
    FROM [ETL].[ETL_Batch_Logs]
    WHERE ETL_Batch_Log_Id = @Batch_Id
END

END


GO



-- POPULATE TABLES ****************************************************

-- Populate BIB tables with default data
SET IDENTITY_INSERT [bib].[BIB_Settings] ON 

GO
INSERT [bib].[BIB_Settings] ([BIB_Settings_Id], [SettingName], [SettingValue]) VALUES (1, N'ETLBatchSize', N'10000')
GO
INSERT [bib].[BIB_Settings] ([BIB_Settings_Id], [SettingName], [SettingValue]) VALUES (2, N'DateFormat', N'dmy')
GO
SET IDENTITY_INSERT [bib].[BIB_Settings] OFF
GO 
INSERT [bib].[DataStates] ([DataState_Id], [DataStateName]) VALUES (1, N'Staging - Flagged for load into dimension within batch')
GO
INSERT [bib].[DataStates] ([DataState_Id], [DataStateName]) VALUES (2, N'Staging - Loaded successfully into dimension within batch, ready for deletion')
GO
INSERT [bib].[DataStates] ([DataState_Id], [DataStateName]) VALUES (3, N'Staging - Error occurred loading records into dimension within batch')
GO
INSERT [bib].[DataStates] ([DataState_Id], [DataStateName]) VALUES (4, N'Dimension - Partial load of non-nullable columns (Part 1 of 2) - Not ready for reporting')
GO
INSERT [bib].[DataStates] ([DataState_Id], [DataStateName]) VALUES (5, N'Dimension - Load of all batched records complete (Part 2 of 2) - Ready for reporting')
GO
INSERT [bib].[DataStates] ([DataState_Id], [DataStateName]) VALUES (6, N'Dimension - Frozen, cannot be updated (Can only be set manually)')
GO
SET IDENTITY_INSERT [bib].[SourceSystems] ON 

GO
INSERT [bib].[SourceSystems] ([SourceSystem_Id], [SourceSystemName], [SourceSystemNotes]) VALUES (1, N'BI Builder Example Data Source', N'A placeholder used for the BI Builder examples')
GO
SET IDENTITY_INSERT [bib].[SourceSystems] OFF
GO
SET IDENTITY_INSERT [BIB].[BIB_Versions] ON 

GO
INSERT [BIB].[BIB_Versions] ([BIBVersion_Id], [MajorVersion], [MinorVersion], [Revision], [VersionType], [ReleaseNotes]) VALUES (1, 0, 1, 0, N'alpha', N'Initial Release to Codeplex')
GO
SET IDENTITY_INSERT [BIB].[BIB_Versions] OFF
GO


-- Applying AutoAudit to BIB Tables if is it installed ****************************


EXECUTE [bib].[AuditAddToTable] 'BIB','DataStates'
EXECUTE [bib].[AuditAddToTable] 'BIB','TableDefinitions'
EXECUTE [bib].[AuditAddToTable] 'BIB','SourceSystems'
EXECUTE [bib].[AuditAddToTable] 'BIB','ColumnDefinitions'
EXECUTE [bib].[AuditAddToTable] 'BIB','BIB_Settings'
EXECUTE [bib].[AuditAddToTable] 'BIB','BIB_Versions'
EXECUTE [bib].[AuditAddToTable] 'ETL','ETL_Batch_Logs'
EXECUTE [bib].[AuditAddToTable] 'ETL','ETL_Batch_Details'

GO
PRINT '---------------------------------------------------------------------------'
PRINT 'BI Builder version alpha-0.1.0 has been installed'

GO

