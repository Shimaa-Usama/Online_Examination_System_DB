SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

create proc [dbo].[delete_instructor] @id int
as
begin 
update Department set Mgr_id=0 where Mgr_id=@id
exec deleteins_ins_crs @id
delete from instructor  where Ins_id=@id

end
GO