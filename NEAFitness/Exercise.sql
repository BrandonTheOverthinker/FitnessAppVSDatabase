CREATE TABLE [dbo].[Exercise]
(
    [ExerciseID] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    [ExerciseName] NVARCHAR(50) NOT NULL,
    [ExerciseType] NVARCHAR(20) NOT NULL,

    CONSTRAINT [UQ_Exercise_ExerciseName] UNIQUE (ExerciseName)
)