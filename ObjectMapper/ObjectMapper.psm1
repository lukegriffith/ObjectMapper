using Module .\BaseConnector.ps1

Get-ChildItem $PSScriptRoot\functions | ForEach-Object {
    . $_.FullName
}

function Invoke-Query {
    Param(
        $type,
        [String]$Query

    )
    ($type)::new($Query)    
}