SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

create proc [dbo].[insert_Exam] @id int,@grade int, @crs_id int
as
begin 
insert into Exam values(@id,@grade,@crs_id)

end
GO