CREATE TABLE [dbo].[Choice] (
  [Q_id] [int] NOT NULL,
  [Choice] [nvarchar](250) NOT NULL,
  CONSTRAINT [PK_Choice] PRIMARY KEY CLUSTERED ([Q_id], [Choice])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Choice]
  ADD CONSTRAINT [FK_Choice_Question] FOREIGN KEY ([Q_id]) REFERENCES [dbo].[Question] ([Q_id])
GO