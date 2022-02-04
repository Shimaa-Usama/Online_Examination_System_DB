SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create PROC [dbo].[report1]  @deptid INT
AS
declare @t table (St_id INT,Fname nVARCHAR(50),Lname nVARCHAR(50),Email NVARCHAR(100),Address nVARCHAR(50),age INT)
begin 
insert into @t
SELECT s.St_id,s.Fname,s.Lname,s.Email,s.Address,s.age FROM Student s
INNER JOIN department d 
ON d.dept_id=s.dept_id AND d.dept_id=@deptid
select * from @t
END
GO