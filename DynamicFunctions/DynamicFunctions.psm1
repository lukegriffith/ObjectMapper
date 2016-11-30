using Module .\BaseConnector.ps1

class TypeFactory { 

    [string[]]$types

}

$factory = [TypeFactory]::new()

Get-ChildItem $PSScriptRoot\functions | ForEach-Object {
    $factory.types += $_.Name
    . $_.FullName
}

function Invoke-Query {
    Param(
        $type,
        [String]$Query

    )

    ($type)::new($Query)
    
}