SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROC [dbo].[report4] @crsId INT
AS 
BEGIN
SELECT t.* FROM Topic t 
INNER JOIN Course c
ON c.Crs_id=T.Crs_id AND c.Crs_id=@crsId
END
GO