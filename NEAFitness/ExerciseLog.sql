CREATE TABLE [dbo].[ExerciseLog]
(
	[ExerciseLogId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[WorkoutId] INT NOT NULL,
	[UserID] INT NOT NULL,
	[ExerciseID] INT NOT NULL,
	[ExerciseOrder] INT NOT NULL,
	[ExerciseNotes] NVARCHAR(500) NULL,

	CONSTRAINT [FK_ExerciseLog_Workout_WorkoutId] FOREIGN KEY (WorkoutId) REFERENCES [dbo].[Workout]([WorkoutId]),
	CONSTRAINT [FK_ExerciseLog_UserExercise] FOREIGN KEY (UserID, ExerciseID) REFERENCES [dbo].[UserExercise](UserID, ExerciseID),

	CONSTRAINT [CHK_ExerciseLog_ExerciseOrder] CHECK (ExerciseOrder IS NULL OR ExerciseOrder >= 1)
)
