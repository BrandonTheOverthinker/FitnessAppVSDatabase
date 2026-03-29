CREATE TABLE [dbo].[ExerciseGoal] (
    [EGoalId]      INT            IDENTITY (1, 1) NOT NULL,
    [GoalID]       INT            NOT NULL,
    [ExerciseID]   INT            NOT NULL,
    [TargetWeight] DECIMAL (7, 2) NOT NULL,
    [TargetTime]   INT            NOT NULL,
    [TargetDistance] DECIMAL (7, 2) NOT NULL, 
    PRIMARY KEY CLUSTERED ([EGoalId] ASC),
    CONSTRAINT [FK_ExerciseGoal_Exercise_ExerciseID] FOREIGN KEY ([ExerciseID]) REFERENCES [dbo].[Exercise] ([ExerciseID]),
    CONSTRAINT [FK_ExerciseGoal_Goal_GoalID] FOREIGN KEY ([GoalID]) REFERENCES [dbo].[UserGoal] ([GoalId])
);

