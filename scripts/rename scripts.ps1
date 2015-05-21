Dir | Rename-Item –NewName { $_.name –replace “dbo.“,”” }
Dir | Rename-Item –NewName { $_.name –replace “.StoredProcedure“,”” }