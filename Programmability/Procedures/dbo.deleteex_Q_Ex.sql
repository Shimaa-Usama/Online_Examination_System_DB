SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[deleteex_Q_Ex] @exid int
as
begin 
delete from Q_Ex where Ex_id=@exid

end
GO