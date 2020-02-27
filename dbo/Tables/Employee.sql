CREATE TABLE [dbo].[Employee] (
    [EmployeeId] INT           IDENTITY (1, 1) NOT NULL,
    [Name]       VARCHAR (50)  NULL,
    [Address]    VARCHAR (MAX) NULL,
    CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED ([EmployeeId] ASC)
);

