Database Version Control
========================

Requirements
------------
* Rapid deployment
* Error handling
* SQL version controlled, commit code alongside SQL
* Database versioning

Nice to have
---
* SQL linked to Jira issues
* Bi-Directional
* Database recovery
* Backups on each minor version release

Scenarios to consider
---
* Upgrading a database with version 1.0.0 and upgrading a database with version 1.0.1 both with version 1.0.2
* Removing an update script
* Scripts with prerequisite scripts
* Removing a stored proc

How to downgrade (Does not work, needs revision)
---
* Retrieve previous SQL Database Project version
* SQL Data Tools Schema compare SQL Database Project to Target database
* Run update

Format
---
* Do not use "USE"
* Onetime scripts do not need to be idempotent, anytime scripts do
* Filenames will be <DATE>_<OBJECTNAME>-<TOPIC>.sql e.g. 20151126_WNARCCartOrderList-Omniture.sql, 20151126-1_AlterWNShopCart.sql
* There is a separate folder for each database e.g. ARCTEMS, Arcteryx

Notes
---
Once you commit a onetime script, you cannot change it [or you will get an error]. Make a new script.


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

