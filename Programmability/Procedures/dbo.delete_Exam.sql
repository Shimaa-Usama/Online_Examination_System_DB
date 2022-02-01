SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE proc [dbo].[delete_Exam] @id int
as
begin 
exec deleteex_st_ex_q @id
exec deleteex_Q_Ex @id
delete  from Exam  where Ex_id=@id

end
GO