CREATE TABLE [dbo].[FreeAgency]
(
	[Id]                INT             NOT NULL IDENTITY(1, 1),
    [PlayerId]          NVARCHAR(250)   NOT NULL,
    [CountryId]         INT             NOT NULL,
    [Postcode]          NVARCHAR(50)    NOT NULL,
    [Latitude]          FLOAT           NOT NULL DEFAULT 0,
    [Longitude]         FLOAT           NOT NULL DEFAULT 0,
    [AgeGroup]          NVARCHAR(50)    NOT NULL,
    [TournamentTypeId]  INT             NOT NULL DEFAULT 1, 
    [isInvited]         BIT             NULL, 
    CONSTRAINT [FK_FreeAgency_Country] FOREIGN KEY ([CountryId]) REFERENCES [dbo].[Country] ([Id]),
    CONSTRAINT [FK_UserRoles_PlayerId] FOREIGN KEY ([PlayerId]) REFERENCES [dbo].[AspNetUsers] ([Id]),
);
GO
