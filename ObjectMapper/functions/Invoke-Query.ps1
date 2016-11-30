<#
    .Description
    function is used to query 3rd party system, and return a response.
    
    The type parameter expects a System.RunTimeType to be passed in. This will then be used to construct the object and return to the user.

    The RunTimeType is the class that is defined alongside the query cmdlet.

#>
function Invoke-Query {
    Param(
        $Type,
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