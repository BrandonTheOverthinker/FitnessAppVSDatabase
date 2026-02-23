CREATE TABLE [dbo].[FoodItem]
(
	[FoodItemId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[FoodName] NVARCHAR(100) NOT NULL,
	[Barcode] NVARCHAR(50) NULL,

	[Calories] INT NOT NULL,
	[Protein] DECIMAL(7,2) NOT NULL,
	[Fat] DECIMAL(7,2) NOT NULL,
	[SaturatedFat] DECIMAL(7,2) NOT NULL,
	[Carbohydrates] DECIMAL(7,2) NOT NULL,
	[Sugar] DECIMAL(7,2) NOT NULL,
	[Fibre] DECIMAL(7,2) NOT NULL,

	[CreatedByUserID] INT NULL, -- public if null

	CONSTRAINT [FK_FoodItem_User_UserID] FOREIGN KEY (CreatedByUserID) REFERENCES [dbo].[User](UserID),


)
