SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create PROC [dbo].[report6] @examNo INT,@stdNo int
AS 
BEGIN 
SELECT q.quest,se.ans FROM st_ex_Q se
inner JOIN Question q
ON q.Q_id=se.Q_id AND se.St_id=@stdNo AND se.Ex_id=@examNo
END
GO