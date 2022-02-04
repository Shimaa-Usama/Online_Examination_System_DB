SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROC [dbo].[report3] @insId INT
AS
begin 
SELECT c.name ,COUNT(s.St_id) AS [number of student per course]FROM course c
INNER JOIN Ins_Crs ic 
ON c.Crs_id=ic.Crs_id
INNER JOIN Instructor i
ON i.Ins_id=ic.Ins_id AND i.Ins_id=@insId
INNER JOIN St_Crs sc ON c.Crs_id=sc.Crs_id
INNER JOIN Student s ON s.St_id=sc.St_id
GROUP BY c.Crs_id,c.name
END
GO