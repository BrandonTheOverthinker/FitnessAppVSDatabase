CREATE TABLE [dbo].[Macronutrients]
(
	[MacroId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[FoodId] INT NOT NULL,
	[Calories] INT NOT NULL,
	[Protein] DECIMAL(7,2) NOT NULL,
	[Fat] DECIMAL(7,2) NOT NULL,
	[SaturatedFat] DECIMAL(7,2) NOT NULL,
	[Carbohydrates] DECIMAL(7,2) NOT NULL,
	[Sugar] DECIMAL(7,2) NOT NULL,
	[Fibre] DECIMAL(7,2) NOT NULL,

	CONSTRAINT [FK_Macronutrients_Food_FoodId] FOREIGN KEY (FoodId) REFERENCES [dbo].[Food](FoodId)
)
