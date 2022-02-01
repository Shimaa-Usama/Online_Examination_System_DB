SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[update_Department] @id int, @Description nvarchar(50), @name nvarchar(50)
,@hire_date date,@manager_id int
as
begin 
update Department set 
Description= @Description,
Name= @name,
Hire_date= @hire_date,
Mgr_id= @manager_id
where Dept_id=@id

end
GO