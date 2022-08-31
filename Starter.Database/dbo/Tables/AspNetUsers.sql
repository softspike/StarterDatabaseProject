CREATE TABLE [dbo].[AspNetUsers]
(
	[Id]                    NVARCHAR(250)     NOT NULL,
	[UserName]              NVARCHAR(250)     NULL,
    [NormalizedUserName]    NVARCHAR(250)     NULL,
	[Email]                 NVARCHAR(250)     NULL,
	[NormalizedEmail]       NVARCHAR(250)     NULL,
	[EmailConfirmed]        bit				  NOT NULL,   
	[PasswordHash]          NVARCHAR(MAX)     NULL,
	[SecurityStamp]         NVARCHAR(MAX)     NULL,
	[PhoneNumber]           NVARCHAR(MAX)     NULL,
	[PhoneNumberConfirmed]  bit				  NOT NULL,
	[LockoutEnd]            DATETIMEOFFSET(7) NULL,
	[LockoutEnabled]        bit				  NOT NULL,
	[AccessFailedCount]     int				  NOT NULL,
	[Discriminator]         NVARCHAR(MAX)	  NOT NULL,
	[FullName]				NVARCHAR(150)     NULL,
	[TwoFactorEnabled]      bit               NULL,
	[ConcurrencyStamp]      NVARCHAR(MAX)	  NULL,
	[isDeleted]             bit				  NOT NULL DEFAULT 0,

	CONSTRAINT [PK_AspNetUsers]		PRIMARY KEY CLUSTERED ([Id] ASC)
);
Go
