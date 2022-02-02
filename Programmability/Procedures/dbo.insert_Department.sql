SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

create proc [dbo].[insert_Department] @id int, @Description nvarchar(50), @name nvarchar(50)
,@hire_date date,@manager_id int
as
begin 
insert into Department values(@id,@Description,@name,@hire_date,@manager_id)

end


GO