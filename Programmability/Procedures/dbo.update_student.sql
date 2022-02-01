SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[update_student] @id int, @fname nvarchar(50),@lname nvarchar(50)
,@email nvarchar(100),@Adresss nvarchar(50),@password nvarchar(50),@age int ,@dept_id int
as
begin 
update Student set 
Fname=@fname,
Lname=@lname,
Email=@email,
Address=@Adresss,
Password=@password,
Age=@age,
Dept_id=@dept_id

where St_id=@id

end
GO