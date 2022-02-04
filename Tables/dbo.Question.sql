CREATE TABLE [dbo].[Question] (
  [Q_id] [int] NOT NULL,
  [Type] [nvarchar](10) NULL,
  [Quest] [nvarchar](max) NULL,
  [Grade] [int] NULL,
  [Model_Ans] [nvarchar](10) NULL,
  [Crs_id] [int] NULL,
  CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED ([Q_id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Question]
  ADD CONSTRAINT [FK_Question_Course] FOREIGN KEY ([Crs_id]) REFERENCES [dbo].[Course] ([Crs_id])
GO