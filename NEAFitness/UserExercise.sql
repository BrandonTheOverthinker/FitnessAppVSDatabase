CREATE TABLE [dbo] [UserExercise]
(
    [UserID] INT NOT NULL,
    [ExerciseID] INT NOT NULL,
    [DefaultRestSeconds] INT,
    [Notes] NVARCHAR(500) NULL,
    CONSTRAINT [PK_UserExercise] PRIMARY KEY (UserID, ExerciseID),
    CONSTRAINT [FK_UserExercise_User_UserID] FOREIGN KEY REFERENCES [dbo].[User](UserID),
    CONSTRAINT [FK_UserExercise_Exercise_ExerciseID] FOREIGN KEY REFERENCES [dbo].[Exercise](ExerciseID)
)