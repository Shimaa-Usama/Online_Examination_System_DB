SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE proc [dbo].[delete_course]  @id int
as
begin 
exec delete_topic @id
exec delete_Exam @id
exec deletecrs_st_crs @id
exec deletecrs_ins_crs @id

delete  from course  where Crs_id=@id

end
GO