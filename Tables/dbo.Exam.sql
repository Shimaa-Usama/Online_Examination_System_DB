CREATE TABLE [dbo].[Exam] (
  [Ex_id] [int] IDENTITY,
  [Grade] [int] NULL,
  [Crs_id] [int] NULL,
  CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED ([Ex_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Exam]
  ADD CONSTRAINT [FK_Exam_Course] FOREIGN KEY ([Crs_id]) REFERENCES [dbo].[Course] ([Crs_id])
GO