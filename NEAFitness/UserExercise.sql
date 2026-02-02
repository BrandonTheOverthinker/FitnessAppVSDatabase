CREATE TABLE [dbo].[UserExercise]
(
    [UserID] INT NOT NULL,
    [ExerciseID] INT NOT NULL,
    [DefaultRestSeconds] INT,
    [Notes] NVARCHAR(500) NULL,

    CONSTRAINT [PK_UserExercise] PRIMARY KEY (UserID, ExerciseID), -- Composite Key

    CONSTRAINT [FK_UserExercise_User_UserID] FOREIGN KEY (UserID) REFERENCES [dbo].[User](UserID),
    CONSTRAINT [FK_UserExercise_Exercise_ExerciseID] FOREIGN KEY (ExerciseID) REFERENCES [dbo].[Exercise](ExerciseID),

    CONSTRAINT [CHK_UserExercise_DefaultRestSeconds] CHECK (DefaultRestSeconds IS NULL OR DefaultRestSeconds >= 0)
)