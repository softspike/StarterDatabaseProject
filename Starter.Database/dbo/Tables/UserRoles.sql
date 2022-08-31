CREATE TABLE [dbo].[UserRoles]
(
	[UserId]   NVARCHAR(250)     NOT NULL,
    [RoleId]   INT				 NOT NULL

	CONSTRAINT [PK_UserRoles]		 PRIMARY KEY CLUSTERED ([UserId], [RoleId]),
	CONSTRAINT [FK_UserRoles_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]),
	CONSTRAINT [FK_UserRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id])

);
GO
