SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[insert_Question] @id int,@type nvarchar(10),@quest nvarchar(max),
@grade int ,@model_ans nvarchar(10),@crs_id int 
as
begin 
insert into Question values(@id,@type,@quest,@grade,@model_ans,@crs_id)

end
GO