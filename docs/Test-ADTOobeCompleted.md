---
external help file: PSAppDeployToolkit-help.xml
Module Name: PSAppDeployToolkit
online version: https://psappdeploytoolkit.com
schema: 2.0.0
---

# Test-ADTOobeCompleted

## SYNOPSIS
Checks if the device's Out-of-Box Experience (OOBE) has completed or not.

## SYNTAX

```
Test-ADTOobeCompleted [<CommonParameters>]
```

## DESCRIPTION
This function checks if the current device has completed the Out-of-Box Experience (OOBE).

## EXAMPLES

### EXAMPLE 1
```
Test-ADTOobeCompleted
```

Checks if the device has completed the OOBE or not and returns true or false.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
### You cannot pipe objects to this function.
## OUTPUTS

### System.Boolean
### Returns $true if the device has proceeded past the OOBE, otherwise $false.
## NOTES
An active ADT session is NOT required to use this function.

Tags: psadt
Website: https://psappdeploytoolkit.com
Copyright: (c) 2024 PSAppDeployToolkit Team, licensed under LGPLv3
License: https://opensource.org/license/lgpl-3-0

## RELATED LINKS

[https://psappdeploytoolkit.com](https://psappdeploytoolkit.com)
