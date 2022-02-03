SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[delete_Question] @id int
as
begin 
exec delete_chioce @id

exec deleteq_st_ex_q @id
exec deleteque_Q_Ex @id
delete from Question where Q_id=@id

end
GO