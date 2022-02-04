CREATE TABLE [dbo].[Instructor] (
  [Ins_id] [int] NOT NULL,
  [Name] [nvarchar](50) NULL,
  [Salary] [int] NULL,
  [Email] [nvarchar](100) NULL,
  [Password] [nvarchar](50) NULL,
  [Dept_id] [int] NULL,
  CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED ([Ins_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Instructor]
  ADD CONSTRAINT [FK_Instructor_Department] FOREIGN KEY ([Dept_id]) REFERENCES [dbo].[Department] ([Dept_id])
GO