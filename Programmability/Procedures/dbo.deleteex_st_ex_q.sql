SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[deleteex_st_ex_q]  @exid int
as
begin 
delete from st_ex_q  where Ex_id=@exid

end
GO