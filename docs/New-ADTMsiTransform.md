---
external help file: PSAppDeployToolkit-help.xml
Module Name: PSAppDeployToolkit
online version: https://psappdeploytoolkit.com
schema: 2.0.0
---

# New-ADTMsiTransform

## SYNOPSIS
Create a transform file for an MSI database.

## SYNTAX

```
New-ADTMsiTransform [-MsiPath] <String> [[-ApplyTransformPath] <String>] [[-NewTransformPath] <String>]
 [-TransformProperties] <Hashtable> [<CommonParameters>]
```

## DESCRIPTION
Create a transform file for an MSI database and create/modify properties in the Properties table.
This function allows you to specify an existing transform to apply before making changes and to define the path for the new transform file.
If the new transform file already exists, it will be deleted before creating a new one.

## EXAMPLES

### EXAMPLE 1
```
New-ADTMsiTransform -MsiPath 'C:\Temp\PSADTInstall.msi' -TransformProperties @{
'ALLUSERS' = '1'
    'AgreeToLicense' = 'Yes'
    'REBOOT' = 'ReallySuppress'
    'RebootYesNo' = 'No'
    'ROOTDRIVE' = 'C:'
}
```


Creates a new transform file for the specified MSI with the given properties.

## PARAMETERS

### -MsiPath
Specify the path to an MSI file.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ApplyTransformPath
Specify the path to a transform which should be applied to the MSI database before any new properties are created or modified.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NewTransformPath
Specify the path where the new transform file with the desired properties will be created.
If a transform file of the same name already exists, it will be deleted before a new one is created.

Default is:
a) If -ApplyTransformPath was specified but not -NewTransformPath, then \<ApplyTransformPath\>.new.mst
b) If only -MsiPath was specified, then \<MsiPath\>.mst

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TransformProperties
Hashtable which contains calls to Set-ADTMsiProperty for configuring the desired properties which should be included in the new transform file.

Example hashtable: \[Hashtable\]$TransformProperties = @{ 'ALLUSERS' = '1' }

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
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
An active ADT session is NOT required to use this function.

Tags: psadt
Website: https://psappdeploytoolkit.com
Copyright: (c) 2024 PSAppDeployToolkit Team, licensed under LGPLv3
License: https://opensource.org/license/lgpl-3-0

## RELATED LINKS

[https://psappdeploytoolkit.com](https://psappdeploytoolkit.com)

