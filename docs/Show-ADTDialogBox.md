---
external help file: PSAppDeployToolkit-help.xml
Module Name: PSAppDeployToolkit
online version: https://psappdeploytoolkit.com
schema: 2.0.0
---

# Show-ADTDialogBox

## SYNOPSIS
Display a custom dialog box with optional title, buttons, icon, and timeout.

## SYNTAX

```
Show-ADTDialogBox [-Text] <String> [-Buttons <String>] [-DefaultButton <String>] [-Icon <String>] [-NotTopMost]
 -Title <String> [-Timeout <UInt32>] [<CommonParameters>]
```

## DESCRIPTION
Display a custom dialog box with optional title, buttons, icon, and timeout.
The default button is "OK", the default Icon is "None", and the default Timeout is None.

Show-ADTInstallationPrompt is recommended over this function as it provides more customization and uses consistent branding with the other UI components.

## EXAMPLES

### EXAMPLE 1
```
Show-ADTDialogBox -Title 'Installation Notice' -Text 'Installation will take approximately 30 minutes. Do you wish to proceed?' -Buttons 'OKCancel' -DefaultButton 'Second' -Icon 'Exclamation' -Timeout 600 -Topmost $false
```

## PARAMETERS

### -Text
Text in the message dialog box.

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

### -Buttons
The button(s) to display on the dialog box.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: OK
Accept pipeline input: False
Accept wildcard characters: False
```

### -DefaultButton
The Default button that is selected.
Options: First, Second, Third.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: First
Accept pipeline input: False
Accept wildcard characters: False
```

### -Icon
Icon to display on the dialog box.
Options: None, Stop, Question, Exclamation, Information.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NotTopMost
Specifies whether the message box shouldn't be a system modal message box that appears in a topmost window.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Timeout
Specifies how long, in seconds, to show the message prompt before aborting.

```yaml
Type: UInt32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Title
Title of the message dialog box.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
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

### System.String
### Returns the text of the button that was clicked.
## NOTES
This function can be called without an active ADT session.
Website: https://psappdeploytoolkit.com
Copyright: (c) 2024 PSAppDeployToolkit Team, licensed under LGPLv3
License: https://opensource.org/license/lgpl-3-0

## RELATED LINKS

[https://psappdeploytoolkit.com](https://psappdeploytoolkit.com)
