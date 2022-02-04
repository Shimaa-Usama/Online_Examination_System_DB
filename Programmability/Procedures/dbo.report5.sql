SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROC [dbo].[report5] @examNo int
AS 
BEGIN 
SELECT q.quest,q.Type,c.Choice FROM Question q
inner JOIN Q_Ex qe
ON q.Q_id=qe.Q_id AND qe.Ex_id=@examNo
LEFT OUTER JOIN Choice c
ON q.Q_id = c.Q_id
END
GO