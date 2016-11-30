# ObjectMapper

Mapper was used to solve a problem of returning a typed object, from a 3rd party system.
Using a REST interface to obtain the data, and mapped the json output to a PowerShell type using as much generic code as possible.

## Class backed cmdlets
### InventoryItem.ps1

The powershell function returns the class defined that is defined along side the function.

The Invoke-Query function, not in this abstract scenario would go off to a 3rd party system, with the Query provided and return a workable object (xml, json, etc) that can be consumed by the class constructor.

A default constructor has been defined in BaseConnector that handles the mapping to reduce the code required when writing queries. But this can be modified using overloading.


### BaseConnector.ps1
This class is the base for the cmdlets to use, it has a default constructor so less code needs to be defined when writing cmdlets.

```
PS C:\Users\lukem\Documents\GitHub\DynamicFunctions> .\Build.ps1 test
************************************************************************************************************************
************************************************************************************************************************
                                                www.lukegriffith.co.uk
------------------------------------------------------------------------------------------------------------------------
                                                    Build System.

                              Project: C:\Users\lukem\Documents\GitHub\DynamicFunctions
                                                   Starting Tests







Describing ObjectMapper Tests.
 [+] Imports module without error 63ms
   Context Get-InventoryItem
    [+] Returns correct type 19ms
   Context Invoke-Query
    [+] Returns test type 23ms
Tests completed in 106ms
Passed: 3 Failed: 0 Skipped: 0 Pending: 0 Inconclusive: 0

Code coverage report:
Covered 82.35% of 17 analyzed commands in 4 files.

Missed commands:

File              Function Line Command
----              -------- ---- -------
ObjectMapper.psm1             3 Get-ChildItem $PSScriptRoot\functions
ObjectMapper.psm1             3 ForEach-Object { . $_.FullName }
ObjectMapper.psm1             3 . $_.FullName



------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
                                              Build System Shutting Down.
```

# Notes

