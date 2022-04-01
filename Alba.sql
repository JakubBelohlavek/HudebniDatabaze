CREATE TABLE [dbo].[Alba] (
    [Id]                 INT           NOT NULL IDENTITY,
    [nazev]              NVARCHAR (50) NOT NULL,
    [rokvydani]          INT           NOT NULL,
    [autor]              NVARCHAR (50) NOT NULL,
    [pocetskladeb]       INT           NULL,
    [pocetprodanychkusu] INT           NULL,
    [poslouchatelny]     BIT           NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC), 
    CONSTRAINT [FK_Alba_ToTable] FOREIGN KEY ([autor]) REFERENCES [dbo].[Autori] ([umeleckejmeno])
);

