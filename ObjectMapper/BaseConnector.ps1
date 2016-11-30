class BaseConnector {

    [String]$BaseID

    BaseConnector([PSCustomObject]$Object) {

        $this.psobject.properties.name | ForEach-Object {
            # Mapping object to class properties.
            $this.$_ = $Object.$_
        }

        $this.BaseID = [guid]::newguid()
        
    }
 }
