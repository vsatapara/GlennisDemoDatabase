﻿/*
Deployment script for GlennisDemoDatabase_3

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "GlennisDemoDatabase_3"
:setvar DefaultFilePrefix "GlennisDemoDatabase_3"
:setvar DefaultDataPath "C:\Users\vsatapara\AppData\Local\Microsoft\VisualStudio\SSDT\GlennisDemoDatabase"
:setvar DefaultLogPath "C:\Users\vsatapara\AppData\Local\Microsoft\VisualStudio\SSDT\GlennisDemoDatabase"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Creating [dbo].[Table8]...';


GO
CREATE TABLE [dbo].[Table8] (
    [Id]     INT        NOT NULL,
    [field1] NCHAR (10) NULL,
    [field2] INT        NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
GO

GO
PRINT N'Update complete.';


GO
