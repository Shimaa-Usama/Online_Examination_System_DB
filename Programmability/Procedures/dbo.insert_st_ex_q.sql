SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[insert_st_ex_q] @st_id int,@q_id int, @ex_id int,@ans nvarchar(10),@grade int
as
begin 
insert into st_ex_q values(@st_id,@q_id,@ex_id,@ans,@grade)

end
GO