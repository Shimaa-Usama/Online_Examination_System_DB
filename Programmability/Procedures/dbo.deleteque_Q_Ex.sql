SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[deleteque_Q_Ex] @qid int
as
begin 
delete from Q_Ex where Q_id=@qid

end
GO