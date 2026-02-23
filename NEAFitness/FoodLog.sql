CREATE TABLE [dbo].[FoodLog]
(
	[FoodLogId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[UserId] INT NOT NULL,
	[FoodItemId] INT NOT NULL,

	[LogTime] DATETIME NOT NULL,
	[Quantity] DECIMAL(16,2) NOT NULL,

	CONSTRAINT [FK_FoodLog_User_UserId] FOREIGN KEY (UserId) REFERENCES [dbo].[User](UserID),
	CONSTRAINT [FK_FoodLog_FoodItem_FoodItemId] FOREIGN KEY (FoodItemId) REFERENCES [dbo].[FoodItem](FoodItemId)
)
