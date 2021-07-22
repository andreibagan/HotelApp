CREATE TABLE [dbo].[Rooms]
(
	[Id] INT NOT NULL PRIMARY KEY identity,
	[RoomTypeId] int not null,
	[RoomNumber] varchar(10) not null,
	constraint [FK_Rooms_RoomTypes] foreign key (RoomTypeId) references RoomTypes(Id)
)