# ObjectMapper

Mapper was used to solve a problem of returning a typed object, from a 3rd party system.
Using a REST interface to obtain the data, and mapped the json output to a PowerShell type using as much generic code as possible.

## Class backed cmdlets
### InventoryItem.ps1

The powershell function returns the class defined that is defined along the function.


```
PS C:\Users\lukem\Documents\GitHub\DynamicFunctions> .\Build.ps1 test
************************************************************************************************************************
************************************************************************************************************************
                                                www.lukegriffith.co.uk
------------------------------------------------------------------------------------------------------------------------
                                                    Build System.

                              Project: C:\Users\lukem\Documents\GitHub\ObjectMapper
                                                   Starting Tests







Describing ObjectMapper Tests.
 [+] Returns correct type 464ms
Tests completed in 464ms
Passed: 1 Failed: 0 Skipped: 0 Pending: 0 Inconclusive: 0
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
                                              Build System Shutting Down.
```