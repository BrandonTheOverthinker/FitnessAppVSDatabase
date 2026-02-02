CREATE TABLE [dbo].[Workout]
(
	[WorkoutId] INT NOT NULL PRIMARY KEY,
	[UserID] INT NOT NULL,
	CONSTRAINT [FK_Workout_User_UserID] FOREIGN KEY ([UserID]) REFERENCES [dbo].[User]([UserID]),
	[WorkoutTime] DATETIME NOT NULL,
	[WorkoutDuration] TIME NOT NULL,
	[WorkoutName] NVARCHAR(100) NOT NULL,
	[WorkoutNotes] NVARCHAR(500) NULL
)
