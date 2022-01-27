CREATE TABLE [dbo].[Student] (
  [St_id] [int] NOT NULL,
  [Fname] [nvarchar](50) NULL,
  [Lname] [nvarchar](50) NULL,
  [Email] [nvarchar](100) NULL,
  [Password] [nvarchar](50) NULL,
  [Address] [nvarchar](50) NULL,
  [Age] [int] NULL,
  [Dept_id] [int] NULL,
  CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED ([St_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Student]
  ADD CONSTRAINT [FK_Student_Department] FOREIGN KEY ([Dept_id]) REFERENCES [dbo].[Department] ([Dept_id])
GO