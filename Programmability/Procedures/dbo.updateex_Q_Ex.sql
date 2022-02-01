SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[updateex_Q_Ex] @ex_id int,@Q_id int
as
begin 
update Q_Ex set
Ex_id= @ex_id
where Q_id=@Q_id

end
GO