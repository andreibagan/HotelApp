CREATE TABLE [dbo].[Bookings]
(
	[Id] INT NOT NULL PRIMARY KEY identity,
	[RoomId] int not null,
	[GuestId] int not null,
	[StartDate] date not null,
	[EndDate] date not null,
	[CheckedIn] bit not null default(0),
	[TotalCost] money not null,
	constraint [FK_Bookings_Rooms] foreign key (RoomId) references Rooms(Id),
	constraint [FK_Bookings_Guests] foreign key (GuestId) references Guests(Id)
)
