CREATE TABLE [dbo].[Ins_Crs] (
  [Crs_id] [int] NOT NULL,
  [Ins_id] [int] NOT NULL,
  CONSTRAINT [PK_Ins_Crs] PRIMARY KEY CLUSTERED ([Crs_id], [Ins_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Ins_Crs]
  ADD CONSTRAINT [FK_Ins_Crs_Course] FOREIGN KEY ([Crs_id]) REFERENCES [dbo].[Course] ([Crs_id])
GO

ALTER TABLE [dbo].[Ins_Crs]
  ADD CONSTRAINT [FK_Ins_Crs_Instructor] FOREIGN KEY ([Ins_id]) REFERENCES [dbo].[Instructor] ([Ins_id])
GO