SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[deleteins_ins_crs] @insid int
as
begin 
delete from ins_crs where Ins_id=@insid
end
GO