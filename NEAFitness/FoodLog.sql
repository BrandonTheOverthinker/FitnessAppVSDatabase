CREATE TABLE [dbo].[FoodLog]
(
	[FoodLogId] INT NOT NULL PRIMARY KEY,
	[FoodId] INT NOT NULL,
	[LogTime] DATETIME NOT NULL,
	[Quantity] DECIMAL(7,2) NOT NULL,

	CONSTRAINT [FK_FoodLog_Food_FoodId] FOREIGN KEY (FoodId) REFERENCES [dbo].[Food](FoodId)
)
