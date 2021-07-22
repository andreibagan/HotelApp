CREATE TABLE [dbo].[RoomTypes]
(
	[Id] INT NOT NULL PRIMARY KEY identity,
	[Title] nvarchar(50) not null,
	[Description] nvarchar(2000) not null,
	[Price] money not null
)
