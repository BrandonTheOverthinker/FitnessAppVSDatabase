-- Drop the RPE constraint first, then the column:
ALTER TABLE [dbo].[Set]
DROP CONSTRAINT [CHK_Set_RPE];

ALTER TABLE [dbo].[Set]
DROP COLUMN [RPE];