SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[update_topic] @id int,@crs_id int ,@name nvarchar(50)
as
begin 
update topic set
Crs_id= @crs_id,
Name= @name
where Top_id=@id

end
GO