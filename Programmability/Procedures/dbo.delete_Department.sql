SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE proc [dbo].[delete_Department] @id int
as
begin 
update student set  Dept_id=0 where Dept_id=@id 
update Instructor set  Dept_id=0 where Dept_id=@id 
delete from Department  where Dept_id=@id

end
GO