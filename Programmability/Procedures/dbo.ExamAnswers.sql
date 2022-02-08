SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE  [dbo].[ExamAnswers](@ExamID INT , @studID INT ,@Ans1 nvarchar(10),
							@Ans2 nvarchar(10),@Ans3 nvarchar(10),@Ans4 nvarchar(10),
							@Ans5 nvarchar(10),@Ans6 nvarchar(10),@Ans7 nvarchar(10),
							@Ans8 nvarchar(10),@Ans9 nvarchar(10),@Ans10 nvarchar(10))
AS
--sql_statement

DECLARE @Q1 NVARCHAR(10), @Q2 NVARCHAR(10),@Q3 NVARCHAR(10),@Q4 NVARCHAR(10),@Q5 NVARCHAR(10),
		@Q6 NVARCHAR(10),@Q7 NVARCHAR(10),@Q8 NVARCHAR(10),@Q9 NVARCHAR(10),@Q10 NVARCHAR(10);

DECLARE @QuestionsExam TABLE (QID INT,rank INT)
INSERT INTO @QuestionsExam
SELECT QE.Q_id , ROW_NUMBER() OVER(PARTITION BY QE.Ex_id ORDER BY QE.Q_id) 
FROM Q_Ex qe WHERE QE.Ex_id =  @ExamID

 SELECT @Q1=Qid FROM @QuestionsExam WHERE rank = 1
 SELECT @Q2=Qid FROM @QuestionsExam WHERE rank = 2
 SELECT @Q3=Qid FROM @QuestionsExam WHERE rank = 3
 SELECT @Q4=Qid FROM @QuestionsExam WHERE rank = 4
 SELECT @Q5=Qid FROM @QuestionsExam WHERE rank = 5
 SELECT @Q6=Qid FROM @QuestionsExam WHERE rank = 6
 SELECT @Q7=Qid FROM @QuestionsExam WHERE rank = 7
 SELECT @Q8=Qid FROM @QuestionsExam WHERE rank = 8
 SELECT @Q9=Qid FROM @QuestionsExam WHERE rank = 9
 SELECT @Q10=Qid FROM @QuestionsExam WHERE rank = 10


EXEC insert_st_ex_q   @st_id=@studID,@q_id =@Q1, @ex_id = @ExamID,@ans =@Ans1,@grade = NULL;
EXEC insert_st_ex_q   @st_id=@studID,@q_id =@Q2, @ex_id = @ExamID,@ans =@Ans2,@grade = NULL;
EXEC insert_st_ex_q   @st_id=@studID,@q_id =@Q3, @ex_id = @ExamID,@ans =@Ans3,@grade = NULL;
EXEC insert_st_ex_q   @st_id=@studID,@q_id =@Q4, @ex_id = @ExamID,@ans =@Ans4,@grade = NULL;
EXEC insert_st_ex_q   @st_id=@studID,@q_id =@Q5, @ex_id = @ExamID,@ans =@Ans5,@grade = NULL;
EXEC insert_st_ex_q   @st_id=@studID,@q_id =@Q6, @ex_id = @ExamID,@ans =@Ans6,@grade = NULL;
EXEC insert_st_ex_q   @st_id=@studID,@q_id =@Q7, @ex_id = @ExamID,@ans =@Ans7,@grade = NULL;
EXEC insert_st_ex_q   @st_id=@studID,@q_id =@Q8, @ex_id = @ExamID,@ans =@Ans8,@grade = NULL;
EXEC insert_st_ex_q   @st_id=@studID,@q_id =@Q9, @ex_id = @ExamID,@ans =@Ans9,@grade = NULL;
EXEC insert_st_ex_q   @st_id=@studID,@q_id =@Q10, @ex_id = @ExamID,@ans =@Ans10,@grade = NULL;
GO