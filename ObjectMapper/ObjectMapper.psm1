using Module .\BaseConnector.ps1

Get-ChildItem $PSScriptRoot\functions | ForEach-Object {
    . $_.FullName
}

function Invoke-Query {
    Param(
        $type,
        [String]$Query

    )

    # Mock output from 3rd party system
    $mockedOutput = [PSCustomOBject]@{
        CatalogID = 1
        ProductName = "A Coat"
        Price = 101.99

    }

    ($type)::new($mockedOutput)    
}