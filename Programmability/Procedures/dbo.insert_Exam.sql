SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE proc [dbo].[insert_Exam] @grade int, @crs_id int
as
begin 
insert into Exam values(@grade,@crs_id)

end
GO