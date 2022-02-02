SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[deleteq_st_ex_q]  @qid int
as
begin 
delete from st_ex_q  where Q_id=@qid

end
GO