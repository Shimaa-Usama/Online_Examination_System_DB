SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[update_course] @id int,@name nvarchar(50),@duration int
as
begin 
update course set
Name= @name,
Duration= @duration
where Crs_id=@id

end
GO