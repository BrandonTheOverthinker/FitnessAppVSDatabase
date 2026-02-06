CREATE TABLE [dbo].[Workout]
(
	[WorkoutId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[UserID] INT NOT NULL,
	[WorkoutTime] DATETIME NOT NULL,
	[WorkoutDurationS] INT NOT NULL,
	[WorkoutName] NVARCHAR(100) NOT NULL,
	[WorkoutNotes] NVARCHAR(500) NULL,

	CONSTRAINT [FK_Workout_User_UserID] FOREIGN KEY ([UserID]) REFERENCES [dbo].[User]([UserID]),

	CONSTRAINT [CHK_Workout_WorkoutDurationS] CHECK (WorkoutDurationS IS NULL OR WorkoutDurationS >= 0)
)
