using Module ..\BaseConnector.ps1

class InventoryItem : BaseConnector {
    [String]$CatalogID
    [String]$ProductName
    [Double]$Price

    InventoryItem([PSCustomObject]$Object) : base($Object) { }
    
}

<#
    .Description
    Cmdlet queries InventoryItems from a 3rd party system. 

#>
function Get-InventoryItem {
    Param(
        $Name
    )

    Invoke-Query -Type ([InventoryItem]) -Query "Select CategoryID, ProductName, Price from InventoryTable where Name = $Name"
    
}