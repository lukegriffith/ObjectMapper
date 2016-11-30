function bar ($x){ Write-Host ($x * [Console]::WindowWidth) }
function center ($x){ $a = " ".padleft(([Console]::WindowWidth / 2) - (($x -split "").count / 2)); Write-Host $a -NoNewline; Write-Host $x } 
bar *
bar *
center "Lukes Build System."


switch ($args) {

    {$_ -eq "Test"}  { Import-Module .\DynamicFunctions.Test -force; Invoke-Pester -CodeCoverage (Get-ChildItem -Recurse | ? {$_.Extension -in @(".psm1",".ps1")}) }
}