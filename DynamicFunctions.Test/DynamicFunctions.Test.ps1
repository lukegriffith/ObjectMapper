

Describe "Testing TypeFactory" {


    (Get-InventoryItem -Name "Luke" | Get-Member).Type[0] | Should be "InventoryItem"


}