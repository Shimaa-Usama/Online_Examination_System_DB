CREATE TABLE [dbo].[Topic] (
  [Top_id] [int] NOT NULL,
  [Crs_id] [int] NOT NULL,
  [Name] [nvarchar](50) NULL,
  CONSTRAINT [PK_Topic] PRIMARY KEY CLUSTERED ([Top_id], [Crs_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Topic]
  ADD CONSTRAINT [FK_Topic_Course] FOREIGN KEY ([Crs_id]) REFERENCES [dbo].[Course] ([Crs_id])
GO