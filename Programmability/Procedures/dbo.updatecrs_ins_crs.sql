SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[updatecrs_ins_crs] @crs_id int,@ins_id int
as
begin 
update ins_crs set
Crs_id= @crs_id
where Ins_id=@ins_id

end
GO