SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[insert_ins_crs] @crs_id int,@ins_id int
as
begin 
insert into ins_crs values(@crs_id,@ins_id)

end
GO