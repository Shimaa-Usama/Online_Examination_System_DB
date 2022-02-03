SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

create proc [dbo].[update_Exam] @id int,@grade int, @crs_id int
as
begin 
update Exam set
 Grade= @grade,
  Crs_id= @crs_id
where Ex_id=@id

end

GO