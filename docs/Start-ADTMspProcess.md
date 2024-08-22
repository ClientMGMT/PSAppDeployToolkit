---
external help file: PSAppDeployToolkit-help.xml
Module Name: PSAppDeployToolkit
online version: https://psappdeploytoolkit.com
schema: 2.0.0
---

# Start-ADTMspProcess

## SYNOPSIS
Executes an MSP file using the same logic as Start-ADTMsiProcess.

## SYNTAX

```
Start-ADTMspProcess [-Path] <String> [[-AddParameters] <String>] [<CommonParameters>]
```

## DESCRIPTION
Reads SummaryInfo targeted product codes in MSP file and determines if the MSP file applies to any installed products.
If a valid installed product is found, triggers the Start-ADTMsiProcess function to patch the installation.

Uses default config MSI parameters.
You can use -AddParameters to add additional parameters.

## EXAMPLES

### EXAMPLE 1
```
Start-ADTMspProcess -Path 'Adobe_Reader_11.0.3_EN.msp'
```

Executes the specified MSP file for Adobe Reader 11.0.3.

### EXAMPLE 2
```
Start-ADTMspProcess -Path 'AcroRdr2017Upd1701130143_MUI.msp' -AddParameters 'ALLUSERS=1'
```

Executes the specified MSP file for Acrobat Reader 2017 with additional parameters.

## PARAMETERS

### -Path
Path to the MSP file.

```yaml
Type: String
Parameter Sets: (All)
Aliases: FilePath

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AddParameters
Additional parameters.

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
