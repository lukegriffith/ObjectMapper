using Module ..\BaseConnector.ps1

class InventoryItem : BaseConnector {
    [String]$CategoryID
    [String]$Name

    InventoryItem([String]$Query) : base($Query) { }
    
}

<#
    .Description
    Cmdlet queries information from an external system, with a proprietary query language

#>
function Get-InventoryItem {
    Param(
        $Name
    )

    Invoke-Query -Type ([InventoryItem]) -Query "Select CategoryID, Name from blah where Name = $Name"
    
}