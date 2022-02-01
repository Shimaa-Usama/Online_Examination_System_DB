SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[update_Question] @id int,@type nvarchar(10),@quest nvarchar(max),
@grade int ,@model_ans nvarchar(10),@crs_id int 
as
begin 
update Question set
Type= @type,
Quest= @quest,
Grade= @grade,
Model_Ans= @model_ans,
Crs_id= @crs_id
where Q_id=@id

end
GO