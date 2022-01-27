CREATE TABLE [dbo].[Q_Ex] (
  [Ex_id] [int] NOT NULL,
  [Q_id] [int] NOT NULL,
  CONSTRAINT [PK_Q_Ex] PRIMARY KEY CLUSTERED ([Ex_id], [Q_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Q_Ex]
  ADD CONSTRAINT [FK_Q_Ex_Exam] FOREIGN KEY ([Ex_id]) REFERENCES [dbo].[Exam] ([Ex_id])
GO

ALTER TABLE [dbo].[Q_Ex]
  ADD CONSTRAINT [FK_Q_Ex_Question] FOREIGN KEY ([Q_id]) REFERENCES [dbo].[Question] ([Q_id])
GO