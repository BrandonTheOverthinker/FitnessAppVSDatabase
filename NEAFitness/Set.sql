CREATE TABLE [dbo].[Set]
(
	[SetId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[ExerciseLogID] INT NOT NULL,
	[SetType] NVARCHAR(50) NULL,
	[SetNumber] INT NOT NULL,
	[Reps] INT NULL,
	[SetWeightKG] DECIMAL(7,2) NULL,
	[DistanceM] INT NULL,
	[TimeSeconds] INT NULL,
	[RestTime] INT NULL,

	CONSTRAINT [FK_Set_ExerciseLog_ExerciseLogID] FOREIGN KEY (ExerciseLogID) REFERENCES dbo.[ExerciseLog](ExerciseLogId),

	CONSTRAINT [UQ_Set_ExerciseLogID_SetNumber] UNIQUE (ExerciseLogID, SetNumber),

	CONSTRAINT [CHK_Set_SetNumber] CHECK (SetNumber >= 1),
	CONSTRAINT [CHK_Set_Reps] CHECK (Reps IS NULL OR Reps >= 0),
	CONSTRAINT [CHK_Set_SetWeightKG] CHECK (SetWeightKG IS NULL OR SetWeightKG >= 0),
	CONSTRAINT [CHK_Set_DistanceM] CHECK (DistanceM IS NULL OR DistanceM >= 0),
	CONSTRAINT [CHK_Set_TimeSeconds] CHECK (TimeSeconds IS NULL OR TimeSeconds >= 0)
)