SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO


create proc [dbo].[update_st_ex_q] @st_id int,@q_id int, @ex_id int,@ans nvarchar(10),@grade int
as
begin 
update st_ex_q set
Q_id = @q_id,
Ex_id =@ex_id,
Ans= @ans,
Grade=@grade

where St_id=@st_id

end
GO