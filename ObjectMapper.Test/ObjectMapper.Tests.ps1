

Describe "ObjectMapper Tests." {

    it "Imports module without error" {
        {Import-Module $PSScriptRoot\..\ObjectMapper} | should not throw
    }


    Context "Get-InventoryItem" {
        it "Returns correct type" {    
            (Get-InventoryItem -ProductName "Coat" | Get-Member).TypeName[0] | Should be "InventoryItem"
        }
    }

    Context "Invoke-Query" {

        class A {
            [string]$this

            A([PSCustomObject]$that){
                $this.this = $that.ProductName
            }
        }

        it "Returns test type" {

        (Invoke-Query -Type ([A]) -Query "") -is [A] | should be $true

        }
    }


}