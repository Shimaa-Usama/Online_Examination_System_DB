SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO


create proc [dbo].[insert_chioce] @Q_id int,@choices nvarchar(250)
as
begin 
insert into Choice values(@Q_id,@choices)

end
GO