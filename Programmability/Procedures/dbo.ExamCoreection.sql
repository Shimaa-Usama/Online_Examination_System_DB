SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE proc [dbo].[ExamCoreection]
(@Exam_ID INT, @Student_ID INT,  @FinalGrade_Student  INT  OUTPUT )
	as
	DECLARE t_cur CURSOR
	FOR   SELECT Question.Grade , Question.Model_Ans, St_Ex_Q.Ans
		  FROM Question 
		  INNER JOIN Q_Ex 
		  ON Question.Q_id = Q_Ex.Q_id
		  INNER JOIN St_Ex_Q 
		  ON St_Ex_Q.Q_id = Question.Q_id
		  WHERE Q_Ex.Ex_id = 1 AND St_Ex_Q.St_id = 4;
	DECLARE @Question_Grade INT, @Model_Answer NVARCHAR(10), @Student_Answer NVARCHAR(10);
	open t_cur 
	fetch t_cur INTO @Question_Grade, @Model_Answer , @Student_Answer
	SET @FinalGrade_Student = 0
		While @@fetch_status = 0
		BEGIN		
			if @Student_Answer = @Model_Answer
				BEGIN
					UPDATE St_Ex_Q
					SET Grade = @Question_Grade
					WHERE CURRENT OF t_cur ;

					SET @FinalGrade_Student += @Question_Grade; 
				END
			ELSE
				BEGIN
					UPDATE St_Ex_Q
					SET Grade = 0
					WHERE CURRENT OF t_cur ;
				END
		FETCH  t_cur into @Question_Grade, @Model_Answer , @Student_Answer 
		END
	SELECT @FinalGrade_Student AS Student_Grade;
	close t_cur
	deallocate t_cur
RETURN @FinalGrade_Student 
GO