CREATE TABLE [dbo].[Exercise]
(
    [ExerciseID] INT NOT NULL PRIMARY KEY,
    [ExerciseName] NVARCHAR(50) NOT NULL,
    [ExerciseType] NVARCHAR(20) NOT NULL,

    CONSTRAINT [UQ_Exercise_ExerciseName] UNIQUE (ExerciseName)
)