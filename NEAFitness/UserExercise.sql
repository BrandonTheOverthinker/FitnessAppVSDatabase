CREATE TABLE [dbo].[UserExercise]
(
	[UserId] INT NOT NULL,
	[ExerciseID] INT NOT NULL,

	CONSTRAINT [PK_UserExercise] PRIMARY KEY (UserId, ExerciseID),
	CONSTRAINT [FK_UserExercise_User_UserID] FOREIGN KEY (UserId) REFERENCES [dbo].[User](UserId),
	CONSTRAINT [FK_UserExercise_Exercise_ExerciseID] FOREIGN KEY (ExerciseID) REFERENCES [dbo].[Exercise](ExerciseID)
)
