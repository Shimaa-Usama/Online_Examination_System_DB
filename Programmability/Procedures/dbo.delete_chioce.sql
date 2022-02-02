SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[delete_chioce] @id int
as
begin 
delete from Choice  where Q_id=@id

end
GO