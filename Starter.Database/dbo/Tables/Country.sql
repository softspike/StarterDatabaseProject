CREATE TABLE [dbo].[Country]
(
	[Id]            INT             NOT NULL    IDENTITY(1, 1),
	[Code]          NVARCHAR(50)    NOT NULL,
    [Name]          NVARCHAR(250)   NOT NULL,
	CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED ([Id] ASC), 
);
Go
