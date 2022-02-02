SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[insert_topic] @id int,@crs_id int ,@name nvarchar(50)
as
begin 
insert into topic values(@id,@crs_id,@name)

end
GO