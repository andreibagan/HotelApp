/*
Шаблон скрипта после развертывания							
--------------------------------------------------------------------------------------
 В данном файле содержатся инструкции SQL, которые будут добавлены в скрипт построения.		
 Используйте синтаксис SQLCMD для включения файла в скрипт после развертывания.			
 Пример:      :r .\myfile.sql								
 Используйте синтаксис SQLCMD для создания ссылки на переменную в скрипте после развертывания.		
 Пример:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
if not exists (select 1 from dbo.RoomTypes)
begin
    insert into dbo.RoomTypes(Title, Description, Price) 
    values ('King Size Bed', 'A room with a king-size bed and a window.', 200),
    ('Two Queen Size Beds', 'A room with two queen-size beds and a window.', 350),
    ('Executive Suite', 'Two rooms, each with a king-size bed and a window.', 420)
end

if not exists (select 1 from dbo.Rooms)
begin
    declare @roomId1 int;
    declare @roomId2 int;
    declare @roomId3 int;

    select @roomId1 = Id from dbo.RoomTypes where Title = 'King Size Bed';
    select @roomId2 = Id from dbo.RoomTypes where Title = 'Two Queen Size Beds';
    select @roomId3 = Id from dbo.RoomTypes where Title = 'Executive Suite';
    
    insert into dbo.Rooms(RoomTypeId, RoomNumber)
    values (@roomId1, '101'),
    (@roomId1, '102'),
    (@roomId1, '103'),
    (@roomId2, '201'),
    (@roomId2, '202'),
    (@roomId3, '301')
end