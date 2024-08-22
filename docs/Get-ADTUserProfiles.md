---
external help file: PSAppDeployToolkit-help.xml
Module Name: PSAppDeployToolkit
online version: https://psappdeploytoolkit.com
schema: 2.0.0
---

# Get-ADTUserProfiles

## SYNOPSIS
Get the User Profile Path, User Account SID, and the User Account Name for all users that log onto the machine and also the Default User.

## SYNTAX

```
Get-ADTUserProfiles [[-ExcludeNTAccount] <String[]>] [-IncludeSystemProfiles] [-IncludeServiceProfiles]
 [-ExcludeDefaultUser] [<CommonParameters>]
```

## DESCRIPTION
Get the User Profile Path, User Account SID, and the User Account Name for all users that log onto the machine and also the Default User (which does not log on).
Please note that the NTAccount property may be empty for some user profiles but the SID and ProfilePath properties will always be populated.

## EXAMPLES

### EXAMPLE 1
```
Get-ADTUserProfiles
```

Return the following properties for each user profile on the system: NTAccount, SID, ProfilePath.

### EXAMPLE 2
```
Get-ADTUserProfiles -ExcludeNTAccount CONTOSO\Robot,CONTOSO\ntadmin
```

Return the following properties for each user profile on the system, except for 'Robot' and 'ntadmin': NTAccount, SID, ProfilePath.

### EXAMPLE 3
```
[string[]]$ProfilePaths = Get-ADTUserProfiles | Select-Object -ExpandProperty ProfilePath
```

Return the user profile path for each user on the system.
This information can then be used to make modifications under the user profile on the filesystem.

## PARAMETERS

### -ExcludeNTAccount
Specify NT account names in DOMAIN\username format to exclude from the list of user profiles.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IncludeSystemProfiles
Include system profiles: SYSTEM, LOCAL SERVICE, NETWORK SERVICE.
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

### -IncludeServiceProfiles
Include service profiles where NTAccount begins with NT SERVICE.
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

### -ExcludeDefaultUser
Exclude the Default User.
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

### PSADT.Types.UserProfile
### Returns a PSADT.Types.UserProfile object with the following properties:
### - NTAccount
### - SID
### - ProfilePath
## NOTES
An active ADT session is NOT required to use this function.

Tags: psadt
Website: https://psappdeploytoolkit.com
Copyright: (c) 2024 PSAppDeployToolkit Team, licensed under LGPLv3
License: https://opensource.org/license/lgpl-3-0

## RELATED LINKS

[https://psappdeploytoolkit.com](https://psappdeploytoolkit.com)
