SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[update_instructor] @id int,@name nvarchar(50),@salary int
,@email nvarchar(100) , @password nvarchar(50), @dept_id int
as
begin 
update instructor set
Name= @name,
Salary= @salary,
Email= @email,
Password= @password,
Dept_id= @dept_id
where Ins_id=@id

end
GO