SET IDENTITY_INSERT dbo.Exam ON
GO
INSERT dbo.Exam(Ex_id, Grade, Crs_id) VALUES (1, NULL, 1);
INSERT dbo.Exam(Ex_id, Grade, Crs_id) VALUES (2, NULL, 1);
INSERT dbo.Exam(Ex_id, Grade, Crs_id) VALUES (3, NULL, 1);

GO
SET IDENTITY_INSERT dbo.Exam OFF
GO
SET IDENTITY_INSERT dbo.Exam ON
GO
INSERT dbo.Exam(Ex_id, Grade, Crs_id) VALUES (4, NULL, NULL);
INSERT dbo.Exam(Ex_id, Grade, Crs_id) VALUES (5, 0, 0);
GO
SET IDENTITY_INSERT dbo.Exam OFF
GO