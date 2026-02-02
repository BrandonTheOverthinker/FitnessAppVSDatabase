CREATE TABLE [dbo].[ExerciseGoal]
(
	[EGoalId] INT NOT NULL PRIMARY KEY,
	[GoalID] INT NOT NULL,
	[ExerciseID] INT NOT NULL,
	[TargetWeight] DECIMAL(7,2) NOT NULL,
	[TargetTime] INT NOT NULL,

	CONSTRAINT [FK_ExerciseGoal_Goal_GoalID] FOREIGN KEY (GoalID) REFERENCES [dbo].[UserGoal](GoalID),
	CONSTRAINT [FK_ExerciseGoal_Exercise_ExerciseID] FOREIGN KEY (ExerciseID) REFERENCES [dbo].[Exercise](ExerciseID)
)
