SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[delete_topic] @id int
as
begin 
delete from topic  where Top_id=@id

end
GO