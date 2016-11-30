class BaseConnector {

    [String]$Query

    BaseConnector([String]$Query) {

        $this.psobject.properties.name | ForEach-Object {
            # Could iterate through class property names, and assign
            # from query result
            
        }
        
        $this.Query = $Query

        
    }
 }
