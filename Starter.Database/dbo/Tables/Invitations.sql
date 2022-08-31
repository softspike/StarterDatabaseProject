CREATE TABLE [dbo].[Invitations]
(
	[Id]				INT				  NOT NULL    IDENTITY(1, 1),
	[CaptainId]			NVARCHAR(250)     NOT NULL,
	[PlayerId]			NVARCHAR(250)     NOT NULL,
    [CreatedDateTime]   DATE			  NOT NULL,
	[Accepted]			BIT				  NULL,
	[Rejeted]			BIT				  NULL,

	CONSTRAINT [PK_Invitations]		 PRIMARY KEY CLUSTERED ([Id] ASC),
	CONSTRAINT [FK_Invitations_CaptainId] FOREIGN KEY ([CaptainId]) REFERENCES [dbo].[AspNetUsers] ([Id]),
	CONSTRAINT [FK_Invitations_PlayerId] FOREIGN KEY ([PlayerId]) REFERENCES [dbo].[AspNetUsers] ([Id]),

);
GO
