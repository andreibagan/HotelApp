CREATE TABLE [dbo].[Guests]
(
	[Id] INT NOT NULL PRIMARY KEY identity,
	[FirstName] nvarchar(50) not null,
	[LastName] nvarchar(50) not null
)
