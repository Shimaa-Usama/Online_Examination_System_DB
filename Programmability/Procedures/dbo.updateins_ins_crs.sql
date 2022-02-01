SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[updateins_ins_crs] @crs_id int,@ins_id int
as
begin 
update ins_crs set
Ins_id= @ins_id
where Crs_id=@crs_id

end
GO