CREATE TABLE [dbo].[Department] (
  [Dept_id] [int] NOT NULL,
  [Description] [nvarchar](50) NULL,
  [Name] [nvarchar](50) NULL,
  [Hire_date] [date] NULL,
  [Mgr_id] [int] NULL,
  CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED ([Dept_id]),
  CONSTRAINT [un] UNIQUE ([Mgr_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Department]
  ADD CONSTRAINT [FK_Department_Instructor] FOREIGN KEY ([Mgr_id]) REFERENCES [dbo].[Instructor] ([Ins_id])
GO