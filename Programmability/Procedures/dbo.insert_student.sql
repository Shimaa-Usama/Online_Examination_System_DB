SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[insert_student] @id int, @fname nvarchar(50),@lname nvarchar(50)
,@email nvarchar(100),@Adresss nvarchar(50),@password nvarchar(50),@age int ,@dept_id int
as
begin 
insert into Student values(@id,@fname,@lname,@email,@password,@Adresss,@age,@dept_id)

end
GO