--------------------------------------------------------------------------------
-- COUNTRY
--------------------------------------------------------------------------------
MERGE INTO [dbo].[Country] AS [Target]
    USING (
        VALUES
        ( 'United Kingdom'                                          ,'UK'),
        ( 'Croatia'                                                 ,'HR'),
        ( 'Palau'                                                   ,'PW'),
        ( 'Algeria'                                                 ,'DZ'),
        ( 'American Samoa'                                          ,'AS'),
        ( 'Andorra'                                                 ,'AD')

        )

      AS [Source] (
        [Name],
        [Code]
        )
    ON  [Target].[Code] = [Source].[Code]
WHEN MATCHED THEN
    UPDATE SET
        [Name]           = [Source].[Name],
        [Code]           = [Source].[Code]
WHEN NOT MATCHED BY TARGET THEN
    INSERT (
        [Name],
        [Code] 
        )
    VALUES (
        [Source].[Name],
        [Source].[Code]
        )
;