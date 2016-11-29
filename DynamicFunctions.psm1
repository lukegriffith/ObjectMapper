<#

    Dynamic function creation, from txt file defining splunk queries. 

    @{
    	SoftwareInventory = "splunkQuery"
    }

    This would create a function called Get-SoftwareInventory

    This could be extended to verbs, with nested dictionaries 

    @{
        Get = @{
            "SoftwareInventory" = "Query"
        }

        Set = @{
            "SoftwareInventory" = @("Arguments","ScriptBlock")
        }
    }

#>

class functionGenerator {


    [void]LoadFunctionDefinition($Configuration){


    }

}

