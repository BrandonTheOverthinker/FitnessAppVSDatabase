CREATE TABLE [dbo].[NutritionGoal]
(
	[NGoalId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[WGoalID] INT NOT NULL,
	[CalorieGoal] INT NOT NULL,
	[ProteinGoal] DECIMAL(7,2) NOT NULL,
	[FatGoal] DECIMAL(7,2) NOT NULL,
	[SaturatedFatGoal] DECIMAL(7,2) NOT NULL,
	[CarbohydrateGoal] DECIMAL(7,2) NOT NULL,
	[SugarGoal] DECIMAL(7,2) NOT NULL,
	[FibreGoal] DECIMAL(7,2) NOT NULL,

	CONSTRAINT [FK_NutritionGoal_WeightGoal_WGoalID] FOREIGN KEY (WGoalID) REFERENCES [dbo].[WeightGoal](WGoalID)
)
