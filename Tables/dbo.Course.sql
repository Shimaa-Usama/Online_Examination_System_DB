CREATE TABLE [dbo].[Course] (
  [Crs_id] [int] NOT NULL,
  [Name] [nvarchar](50) NULL,
  [Duration] [int] NULL,
  CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED ([Crs_id])
)
ON [PRIMARY]
GO