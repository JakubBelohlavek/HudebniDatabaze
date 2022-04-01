CREATE TABLE [dbo].[Skladby] (
    [Id]        INT           NOT NULL IDENTITY,
    [nazev]     NVARCHAR (50) NOT NULL,
    [rokvydani] INT           NOT NULL,
    [autor]     INT NOT NULL,
    [album]     INT NULL,
    [zanr]      NCHAR (10)    NULL,
    [feat]      NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC), 
    CONSTRAINT [FK_Skladby_ToTable] FOREIGN KEY ([autor]) REFERENCES [dbo].[Autori] ([Id]), 
    CONSTRAINT [FK_Skladby_ToTable_1] FOREIGN KEY ([album]) REFERENCES [dbo].[Alba] ([Id])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Název', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Skladby', @level2type = N'COLUMN', @level2name = N'nazev';

