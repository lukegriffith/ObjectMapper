using Module .\BaseConnector.ps1

Get-ChildItem $PSScriptRoot\functions | ForEach-Object { . $_.FullName }
