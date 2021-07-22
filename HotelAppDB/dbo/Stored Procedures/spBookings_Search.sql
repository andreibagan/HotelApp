CREATE PROCEDURE [dbo].[spBookings_Search]
	@lastName nvarchar(50),
	@startDate date
AS
begin
	set nocount on;

	select [b].[Id], [b].[RoomId], [b].[GuestId], [b].[StartDate], [b].[EndDate], [b].[CheckedIn], [b].[TotalCost], 
	[g].[FirstName], [g].[LastName], 
	[r].[RoomTypeId], [r].[RoomNumber], 
	[rt].[Title], [rt].[Description], [rt].[Price]
	from dbo.Bookings b
	inner join dbo.Guests g on g.Id = b.GuestId
	inner join dbo.Rooms r on r.id = b.RoomId
	inner join dbo.RoomTypes rt on rt.Id = r.RoomTypeId
	where g.LastName = @lastName and b.StartDate = @startDate;
end
