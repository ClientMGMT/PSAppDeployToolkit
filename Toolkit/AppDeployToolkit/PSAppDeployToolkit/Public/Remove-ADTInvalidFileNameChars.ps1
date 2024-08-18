﻿#---------------------------------------------------------------------------
#
#
#
#---------------------------------------------------------------------------

function Remove-ADTInvalidFileNameChars
{
    <#

    .SYNOPSIS
    Remove invalid characters from the supplied string.

    .DESCRIPTION
    Remove invalid characters from the supplied string and returns a valid filename as a string.

    .PARAMETER Name
    Text to remove invalid filename characters from.

    .INPUTS
    System.String. A string containing invalid filename characters.

    .OUTPUTS
    System.String. Returns the input string with the invalid characters removed.

    .EXAMPLE
    Remove-ADTInvalidFileNameChars -Name "Filename/\1"

    .NOTES
    This functions always returns a string however it can be empty if the name only contains invalid characters.
    Do no use this command for an entire path as '\' is not a valid filename character.

    .NOTES
    This function can be called without an active ADT session.

    .LINK
    https://psappdeploytoolkit.com

    #>

    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '', Justification = "This function is appropriately named and we don't need PSScriptAnalyzer telling us otherwise.")]
    [CmdletBinding()]
    param
    (
        [Parameter(Mandatory = $true, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true)]
        [AllowEmptyString()]
        [System.String]$Name
    )

    process
    {
        return ($Name.Trim() -replace "[$([System.Text.RegularExpressions.Regex]::Escape([System.String]::Join($null, [System.IO.Path]::GetInvalidFileNameChars())))]")
    }
}