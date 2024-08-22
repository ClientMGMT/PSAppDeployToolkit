---
external help file: PSAppDeployToolkit-help.xml
Module Name: PSAppDeployToolkit
online version: https://psappdeploytoolkit.com
schema: 2.0.0
---

# Get-ADTRegistryKey

## SYNOPSIS
Retrieves value names and value data for a specified registry key or optionally, a specific value.

## SYNTAX

```
Get-ADTRegistryKey [-Key] <String> [[-Value] <String>] [-Wow6432Node] [[-SID] <String>]
 [-ReturnEmptyKeyIfExists] [-DoNotExpandEnvironmentNames] [<CommonParameters>]
```

## DESCRIPTION
Retrieves value names and value data for a specified registry key or optionally, a specific value.
If the registry key does not exist or contain any values, the function will return $null by default.
To test for existence of a registry key path, use built-in Test-Path cmdlet.

## EXAMPLES

### EXAMPLE 1
```
Get-ADTRegistryKey -Key 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{1AD147D0-BE0E-3D6C-AC11-64F6DC4163F1}'
```

This example retrieves all value names and data for the specified registry key.

### EXAMPLE 2
```
Get-ADTRegistryKey -Key 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\iexplore.exe'
```

This example retrieves all value names and data for the specified registry key.

### EXAMPLE 3
```
Get-ADTRegistryKey -Key 'HKLM:Software\Wow6432Node\Microsoft\Microsoft SQL Server Compact Edition\v3.5' -Value 'Version'
```

This example retrieves the 'Version' value data for the specified registry key.

### EXAMPLE 4
```
Get-ADTRegistryKey -Key 'HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment' -Value 'Path' -DoNotExpandEnvironmentNames
```

This example retrieves the 'Path' value data without expanding environment variables.

### EXAMPLE 5
```
Get-ADTRegistryKey -Key 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Example' -Value '(Default)'
```

This example retrieves the default value data for the specified registry key.

## PARAMETERS

### -Key
Path of the registry key.

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

### -Value
Value to retrieve (optional).

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

### -Wow6432Node
Specify this switch to read the 32-bit registry (Wow6432Node) on 64-bit systems.

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

### -SID
The security identifier (SID) for a user.
Specifying this parameter will convert a HKEY_CURRENT_USER registry key to the HKEY_USERS\$SID format.
Specify this parameter from the Invoke-ADTAllUsersRegistryChange function to read/edit HKCU registry settings for all users on the system.

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

### -ReturnEmptyKeyIfExists
Return the registry key if it exists but it has no property/value pairs underneath it.
Default is: $false.

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

### -DoNotExpandEnvironmentNames
Return unexpanded REG_EXPAND_SZ values.
Default is: $false.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
### You cannot pipe objects to this function.
## OUTPUTS

### System.String
### Returns the value of the registry key or value.
## NOTES
An active ADT session is NOT required to use this function.

Tags: psadt
Website: https://psappdeploytoolkit.com
Copyright: (c) 2024 PSAppDeployToolkit Team, licensed under LGPLv3
License: https://opensource.org/license/lgpl-3-0

## RELATED LINKS

[https://psappdeploytoolkit.com](https://psappdeploytoolkit.com)
