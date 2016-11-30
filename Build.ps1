Set-Location $PSScriptRoot
function bar ($x, $color = "White"){ Write-Host ($x * [Console]::WindowWidth) -ForegroundColor $color }
function center ($x, $color = "White"){ $a = " ".padleft(([Console]::WindowWidth / 2) - (($x -split "").count / 2)); Write-Host $a -NoNewline -ForegroundColor $color; Write-Host $x -ForegroundColor $color } 

bar * Green
bar * Green
center "Lukes Build System.`n`n"
center $pwd


switch ($args) {

    {$_ -eq "Test"}  { pushd; center "Starting Tests`n`n" Blue; Import-Module $psscriptroot\DynamicFunctions -force; Invoke-Pester <#-CodeCoverage (Get-ChildItem -Path .\DynamicFunctions -Recurse | ? {$_.Extension -in @(".psm1",".ps1")}).FullName#>; popd }
}