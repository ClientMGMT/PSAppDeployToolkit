---
external help file: PSAppDeployToolkit-help.xml
Module Name: PSAppDeployToolkit
online version: https://psappdeploytoolkit.com
schema: 2.0.0
---

# Close-ADTSession

## SYNOPSIS
Closes the active ADT session.

## SYNTAX

```
Close-ADTSession [[-ExitCode] <Int32>] [<CommonParameters>]
```

## DESCRIPTION
The Close-ADTSession function closes the active ADT session, updates the session's exit code if provided, invokes all registered callbacks, and cleans up the session state.
If this is the last session, it flags the module as uninitialized and exits the process with the last exit code.

## EXAMPLES

### EXAMPLE 1
```
Close-ADTSession
```

This example closes the active ADT session without setting an exit code.

### EXAMPLE 2
```
Close-ADTSession -ExitCode 0
```

This example closes the active ADT session and sets the exit code to 0.

## PARAMETERS

### -ExitCode
The exit code to set for the session.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
### You cannot pipe objects to this function.
## OUTPUTS

### None
### This function does not generate any output.
## NOTES
An active ADT session is required to use this function.

Tags: psadt
Website: https://psappdeploytoolkit.com
Copyright: (c) 2024 PSAppDeployToolkit Team, licensed under LGPLv3
License: https://opensource.org/license/lgpl-3-0

## RELATED LINKS

[https://psappdeploytoolkit.com](https://psappdeploytoolkit.com)
