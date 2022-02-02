SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[insert_course] @id int,@name nvarchar(50),@duration int
as
begin 
insert into course values(@id,@name,@duration)

end
GO