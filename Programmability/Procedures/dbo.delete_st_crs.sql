SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[delete_st_crs] @stid int
as
begin 
delete from st_crs where  St_id=@stid
end


GO