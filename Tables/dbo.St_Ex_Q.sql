CREATE TABLE [dbo].[St_Ex_Q] (
  [St_id] [int] NOT NULL,
  [Q_id] [int] NOT NULL,
  [Ex_id] [int] NOT NULL,
  [Ans] [nvarchar](10) NULL,
  [Grade] [int] NULL,
  CONSTRAINT [PK_St_Ex_Q] PRIMARY KEY CLUSTERED ([St_id], [Q_id], [Ex_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[St_Ex_Q]
  ADD CONSTRAINT [FK_St_Ex_Q_Exam] FOREIGN KEY ([Ex_id]) REFERENCES [dbo].[Exam] ([Ex_id])
GO

ALTER TABLE [dbo].[St_Ex_Q]
  ADD CONSTRAINT [FK_St_Ex_Q_Question] FOREIGN KEY ([Q_id]) REFERENCES [dbo].[Question] ([Q_id])
GO

ALTER TABLE [dbo].[St_Ex_Q]
  ADD CONSTRAINT [FK_St_Ex_Q_Student] FOREIGN KEY ([St_id]) REFERENCES [dbo].[Student] ([St_id])
GO