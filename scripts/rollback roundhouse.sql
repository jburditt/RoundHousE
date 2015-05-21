declare @version int = 2
delete from RoundhousE.ScriptsRun where version_id > @version;
delete from RoundhousE.Version where id > @version;
DBCC CHECKIDENT ('RoundhousE.Version', RESEED, @version);
