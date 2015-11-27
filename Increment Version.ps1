# Load XML
[xml]$BuildInfo = Get-Content ./_BuildInfo.xml

# Increment Build Number
$buildNumber = ($BuildInfo.buildInfo.buildNumber -as [int]) + 1
$BuildInfo.buildInfo.buildNumber = $buildNumber-as [string]

# Update Version Number
$BuildInfo.buildInfo.version = $BuildInfo.buildInfo.versionMajor + "." + $BuildInfo.buildInfo.versionMinor + "." + $BuildInfo.buildInfo.versionPatch + "." + $BuildInfo.buildInfo.buildNumber

# Save XML
$BuildInfo.Save("./_BuildInfo.xml")
