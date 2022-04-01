CREATE TABLE [dbo].[Skladby]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [nazev] NVARCHAR(50) NOT NULL, 
    [rokvydani] INT NOT NULL, 
    [autor] NVARCHAR(50) NOT NULL, 
    [album] NVARCHAR(50) NULL, 
    [zanr] NCHAR(10) NULL, 
    [feat] NVARCHAR(50) NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Název',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Skladby',
    @level2type = N'COLUMN',
    @level2name = N'nazev'