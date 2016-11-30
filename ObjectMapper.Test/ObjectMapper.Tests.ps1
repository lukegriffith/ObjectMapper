

Describe "ObjectMapper Tests." {


    it "Returns correct type" {

        (Get-InventoryItem -Name "Luke" | Get-Member).TypeName[0] | Should be "InventoryItem"

    }

}