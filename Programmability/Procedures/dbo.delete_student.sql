SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[delete_student] @id int
as
begin 
exec delete_st_crs @id
exec delete_st_ex_q  @id
delete from student  where St_id=@id


end

GO