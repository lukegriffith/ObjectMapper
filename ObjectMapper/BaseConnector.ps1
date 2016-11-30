<#
    .Notes
    Class is used for its base constructor, to minimize code required on class cmdlets.
    All they need to implement is the base constructor for this class, and specify properties.
    Extra methods are optional.

#>
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
