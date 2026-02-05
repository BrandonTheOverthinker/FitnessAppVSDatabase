CREATE TABLE [dbo].[UserPersonalRecord]
(
    [PRID] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [UserID] INT NOT NULL,
    [ExerciseID] INT NOT NULL,
    [PRType] NVARCHAR(20) NOT NULL, -- e.g. "MaxWeight", "MaxReps", "MaxDistance" etc
    [PRValue] DECIMAL(10,2) NOT NULL,
    [AchievedAt] DATETIME NOT NULL,
    [SetID] INT NOT NULL,

    CONSTRAINT [FK_UserPR_UserExercise] FOREIGN KEY (UserID, ExerciseID) REFERENCES [dbo].[UserExercise](UserID, ExerciseID),
    CONSTRAINT [FK_UserPR_Set_SetID] FOREIGN KEY (SetID) REFERENCES [dbo].[Set](SetID),

    CONSTRAINT [CHK_UserPR_PRValue] CHECK (PRValue >= 0)
)