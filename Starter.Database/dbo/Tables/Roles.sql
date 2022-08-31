CREATE TABLE [dbo].[Roles]
(
	[Id]				INT				  NOT NULL IDENTITY(1, 1),
	[Name]				NVARCHAR(250)     NULL,
    [Code]				NVARCHAR(250)     NULL,

	CONSTRAINT [PK_Roles]		PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO
