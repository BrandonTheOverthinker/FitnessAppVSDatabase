CREATE TABLE [dbo].[Exercise]
(
    [ExerciseID] INT NOT NULL PRIMARY KEY,
    [UserID] INT NOT NULL,
    [ExerciseName] NVARCHAR(50) NOT NULL,
    [ExerciseType] NVARCHAR(20) NOT NULL,

    CONSTRAINT [FK_Exercise_User_UserID] FOREIGN KEY (UserID) REFERENCES [dbo].[User](UserID),

    CONSTRAINT [UQ_Exercise_ExerciseName] UNIQUE (ExerciseName)
)