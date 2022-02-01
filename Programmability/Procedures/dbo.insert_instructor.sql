SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[insert_instructor] @id int,@name nvarchar(50),@salary int
,@email nvarchar(100) , @password nvarchar(50), @dept_id int
as
begin 
insert into instructor values(@id,@name,@salary,@email,@password,@dept_id)

end
GO