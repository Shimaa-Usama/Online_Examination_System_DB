SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[deletecrs_ins_crs] @crsid int
as
begin 
delete from ins_crs where Crs_id=@crsid
end
GO