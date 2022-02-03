SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROC  [dbo].[generate_Exam] @course_name NVARCHAR(50),@num_of_tf INT,@num_of_mcq INT
as
begin 
DECLARE @crsid INT
set @crsid =(SELECT  c.Crs_id FROM Course c WHERE c.Name=@course_name)

EXEC dbo.insert_Exam 0, @crsid
DECLARE @exam_id INT
SET @exam_id =(SELECT @@identity)
INSERT INTO Q_Ex (Q_id , Ex_id) SELECT  TOP (@num_of_tf)q.Q_id,@exam_id   from Question q   WHERE q.Type= 'T/F' AND 
q.Crs_id IN(@crsid) ORDER BY NEWID()
 INSERT INTO Q_Ex (Q_id,Ex_id) SELECT TOP (@num_of_mcq) q.Q_id, @exam_id from Question q   WHERE q.Type= 'MCQ' and 
q.Crs_id IN (@crsid) 
ORDER BY NEWID() 


UPDATE Exam SET Grade= (SELECT SUM(q.Grade) from Question q,Q_Ex qe WHERE q.Q_id=qe.Q_id 
AND qe.Ex_id= @exam_id)

END

GO