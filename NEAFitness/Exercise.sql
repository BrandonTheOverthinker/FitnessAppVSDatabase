CREATE TABLE [dbo].[Exercise]
(
    [ExerciseID] INT NOT NULL PRIMARY KEY,
    [UserID] INT NOT NULL,
    CONSTRAINT [FK_ExerciseInfo_User_UserID] FOREIGN KEY (UserID) REFERENCES [dbo].[User](UserID),
    [ExerciseName] NVARCHAR(50) NOT NULL,
    [ExerciseType] NVARCHAR(20) NOT NULL,
)