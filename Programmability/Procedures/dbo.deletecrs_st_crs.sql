SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO


create proc [dbo].[deletecrs_st_crs] @crsid int
as
begin 
delete from st_crs where  Crs_id=@crsid
end
GO