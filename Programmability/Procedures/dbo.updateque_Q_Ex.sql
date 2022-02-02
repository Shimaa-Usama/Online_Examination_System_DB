SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO


create proc [dbo].[updateque_Q_Ex] @ex_id int,@Q_id int
as
begin 
update Q_Ex set
Q_id= @Q_id
where Ex_id=@ex_id

end

GO