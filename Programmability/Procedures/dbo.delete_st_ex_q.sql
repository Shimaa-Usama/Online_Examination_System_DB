SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[delete_st_ex_q]  @stid int
as
begin 
delete from st_ex_q  where St_id=@stid

end
GO