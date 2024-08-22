---
external help file: PSAppDeployToolkit-help.xml
Module Name: PSAppDeployToolkit
online version: https://psappdeploytoolkit.com
schema: 2.0.0
---

# Copy-ADTContentToCache

## SYNOPSIS
Copies the toolkit content to a cache folder on the local machine and sets the $dirFiles and $supportFiles directory to the cache path.

## SYNTAX

```
Copy-ADTContentToCache [[-Path] <String>] [<CommonParameters>]
```

## DESCRIPTION
Copies the toolkit content to a cache folder on the local machine and sets the $dirFiles and $supportFiles directory to the cache path.
This function is useful in environments where an Endpoint Management solution does not provide a managed cache for source files, such as Intune.
It is important to clean up the cache in the uninstall section for the current version and potentially also in the pre-installation section for previous versions.

## EXAMPLES

### EXAMPLE 1
```
Copy-ADTContentToCache -Path 'C:\Windows\Temp\PSAppDeployToolkit'
```

This example copies the toolkit content to the specified cache folder.

## PARAMETERS

### -Path
The path to the software cache folder.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: "$((Get-ADTConfig).Toolkit.CachePath)\$((Get-ADTSession).GetPropertyValue('installName'))"
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

This can be used in the absence of an Endpoint Management solution that provides a managed cache for source files, e.g.
Intune is lacking this functionality whereas ConfigMgr includes this functionality.

Since this cache folder is effectively unmanaged, it is important to cleanup the cache in the uninstall section for the current version and potentially also in the pre-installation section for previous versions.

This can be done using \[Remove-ADTFile -Path "(Get-ADTConfig).Toolkit.CachePath\$installName" -Recurse -ErrorAction Ignore\]

Tags: psadt
Website: https://psappdeploytoolkit.com
Copyright: (c) 2024 PSAppDeployToolkit Team, licensed under LGPLv3
License: https://opensource.org/license/lgpl-3-0

## RELATED LINKS

[https://psappdeploytoolkit.com](https://psappdeploytoolkit.com)
