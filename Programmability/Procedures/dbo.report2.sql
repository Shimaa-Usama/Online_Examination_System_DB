SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROC [dbo].[report2] @stdId INT
AS
begin 
SELECT CONVERT(VARCHAR,st.grade)+'%'  Grade,c.name AS [Course Name]
from St_Ex_Q st 
INNER JOIN exam e
ON e.ex_id=st.ex_id AND st.st_id=@stdId
INNER JOIN course c
ON c.crs_id=e.crs_id
END
GO