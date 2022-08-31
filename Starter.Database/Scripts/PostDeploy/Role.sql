--------------------------------------------------------------------------------
-- ROLES
--------------------------------------------------------------------------------
MERGE INTO [dbo].[Roles] AS [Target]
    USING (
        VALUES
        ( 'Player'                                           ,'PLAYER'),
        ( 'Captain'                                          ,'CAPTAIN')
       

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