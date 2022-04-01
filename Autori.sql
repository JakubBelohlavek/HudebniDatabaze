CREATE TABLE [dbo].[Autori] (
    [Id]            INT           IDENTITY (1, 1) NOT NULL,
    [jmeno]         NVARCHAR (50) NULL,
    [prijmeni]      NVARCHAR (50) NULL,
    [umeleckejmeno] NVARCHAR (50) NOT NULL,
    [narodnost]     NVARCHAR (50) NOT NULL,
    [stalecinny]   BIT           NOT NULL,
    [pohlavi]       CHAR (1)      NULL,
    [roknarozeni]   INT           NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC) 
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Jméno', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Autori', @level2type = N'COLUMN', @level2name = N'jmeno';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Příjmení', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Autori', @level2type = N'COLUMN', @level2name = N'prijmeni';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Rok narození', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Autori', @level2type = N'COLUMN', @level2name = N'umeleckejmeno';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Národnost', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Autori', @level2type = N'COLUMN', @level2name = N'narodnost';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Stále žijící', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Autori', @level2type = N'COLUMN', @level2name = 'stalecinny';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Pohlaví', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Autori', @level2type = N'COLUMN', @level2name = N'pohlavi';

