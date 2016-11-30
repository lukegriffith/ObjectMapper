Set-Location $PSScriptRoot
function bar ($x, $color = "White"){ Write-Host ($x * [Console]::WindowWidth) -ForegroundColor $color }
function center ($x, $color = "White"){ $a = " ".padleft(([Console]::WindowWidth / 2) - (($x -split "").count / 2)); Write-Host $a -NoNewline -ForegroundColor $color; Write-Host $x -ForegroundColor $color } 

bar * Green
bar * Green
center "www.lukegriffith.co.uk"
bar - Green
center "Build System.`n"
center "Project: $pwd"


switch ($args) {

    {$_ -eq "Test"}  { 
        pushd; 
        center "Starting Tests`n`n" Red; 
        #Import-Module $psscriptroot\ObjectMapper -force; 
        Invoke-Pester -CodeCoverage (Get-ChildItem -Path $PSScriptRoot\ObjectMapper -Recurse | ? {$_.Extension -in @(".psm1",".ps1")}).FullName; 
        popd 
    }
}

bar - Green
bar - Green
center "Build System Shutting Down." Red 
