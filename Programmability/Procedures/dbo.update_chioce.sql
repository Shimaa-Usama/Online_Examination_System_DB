SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

create proc [dbo].[update_chioce] @Q_id int,@choices nvarchar(250)
as
begin 
update Choice set
 Choice= @choices

where Q_id=@Q_id

end

GO