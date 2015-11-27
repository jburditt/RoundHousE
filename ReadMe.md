Database Version Control

Requirements:
1. Rapid deployment
2. Error handling
3. SQL version controlled, commit code alongside SQL
4. Database versioning

Nice to have:
1. SQL linked to Jira issues
2. Bi-Directional
3. Database recovery
4. Backups on each minor version release

Scenarios to consider:
1. Upgrading a database with version 1.0.0 and upgrading a database with version 1.0.1 both with version 1.0.2
2. Removing an update script
3. Scripts with prerequisite scripts
4. Removing a stored proc

How to downgrade (Does not work, needs revision):
1. Retrieve previous SQL Database Project version
2. SQL Data Tools Schema compare SQL Database Project to Target database
3. Run update

Format:
1. Do not use "USE"
2. Onetime scripts do not need to be idempotent, anytime scripts do
3. Filenames will be <DATE>_<OBJECTNAME>-<TOPIC>.sql e.g. 20151126_WNARCCartOrderList-Omniture.sql, 20151126-1_AlterWNShopCart.sql
4. There is a separate folder for each database e.g. ARCTEMS, Arcteryx

Notes:
1. Once you commit a onetime script, you cannot change it [or you will get an error]. Make a new script.


Scripts in these folder will only run once (Onetime)
RunAfterCreateDatabase - Generate data, probably will not need to use this folder
Up - Onetime scripts

Scripts in these folders will run every time there is a change (Anytime)
RunBeforeUp - Prerequisite scripts for Up
RunAfterOtherAnyTimeScripts
Functions
Views
Sprocs

Environment scripts
e.g. QA.InsertTestData.env.sql

