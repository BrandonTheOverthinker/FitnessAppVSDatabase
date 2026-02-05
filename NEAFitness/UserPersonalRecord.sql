CREATE TABLE [dbo].[UserPersonalRecord]
(
    [UserID] INT NOT NULL,
    [ExerciseID] INT NOT NULL,
    [PRType] NVARCHAR(20) NOT NULL, -- e.g. "MaxWeight", "MaxReps", "MaxDistance" etc
    [PRValue] DECIMAL(10,2) NOT NULL,
    [AchievedAt] DATETIME NOT NULL,
    [SetID] INT NOT NULL,

    CONSTRAINT [PK_UserPR] PRIMARY KEY (UserID, ExerciseID, PRType), -- Composite Key

    CONSTRAINT [FK_UserPR_UserExercise] FOREIGN KEY (UserID, ExerciseID) REFERENCES [dbo].[Exercise](UserID, ExerciseID),
    CONSTRAINT [FK_UserPR_Set] FOREIGN KEY (SetID) REFERENCES [dbo].[Set](SetID),

    CONSTRAINT [CHK_UserPR_PRValue] CHECK (PRValue >= 0)
)