SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[insert_Q_Ex] @ex_id int,@Q_id int
as
begin 
insert into Q_Ex values(@ex_id,@Q_id)

end
GO