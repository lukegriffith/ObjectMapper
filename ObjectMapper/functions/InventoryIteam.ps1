using Module ..\BaseConnector.ps1


<#
    .Notes
    Define properties of the InventoryItem class.
    There will be mapped to, from the Invoke-Query in the InventoryItem function.
    
#>
class InventoryItem : BaseConnector {
    [String]$CatalogID
    [String]$ProductName
    [Double]$Price

    InventoryItem([PSCustomObject]$Object) : base($Object) { }
    
}

<#
    .Description
    Cmdlet queries InventoryItems from a 3rd party system. 

    .Outputs
    InventoryItem
    
    .Example
    PS> Get-InventoryItem -ProductName "Coat"

    .Example
    PS> "Coat" | Get-InventoryItem

#>
function Get-InventoryItem {
    Param(
        [Parameter(ValueFromPipeline=$true)]
        $ProductName
    )

    Process {
        $Query = "Select CategoryID, ProductName, Price from InventoryTable where Name = $ProductName"
        Invoke-Query -Type ([InventoryItem]) -Query $Query 
    }
}