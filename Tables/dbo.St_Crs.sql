CREATE TABLE [dbo].[St_Crs] (
  [Crs_id] [int] NOT NULL,
  [St_id] [int] NOT NULL,
  CONSTRAINT [PK_St_Crs] PRIMARY KEY CLUSTERED ([Crs_id], [St_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[St_Crs]
  ADD CONSTRAINT [FK_St_Crs_Course] FOREIGN KEY ([Crs_id]) REFERENCES [dbo].[Course] ([Crs_id])
GO

ALTER TABLE [dbo].[St_Crs]
  ADD CONSTRAINT [FK_St_Crs_Student] FOREIGN KEY ([St_id]) REFERENCES [dbo].[Student] ([St_id])
GO