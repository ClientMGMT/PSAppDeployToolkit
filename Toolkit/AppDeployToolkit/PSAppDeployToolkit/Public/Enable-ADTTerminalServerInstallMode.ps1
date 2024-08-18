﻿#---------------------------------------------------------------------------
#
#
#
#---------------------------------------------------------------------------

function Enable-ADTTerminalServerInstallMode
{
    <#

    .SYNOPSIS
    Changes to user install mode for Remote Desktop Session Host/Citrix servers.

    .DESCRIPTION
    Changes to user install mode for Remote Desktop Session Host/Citrix servers.

    .INPUTS
    None. You cannot pipe objects to this function.

    .OUTPUTS
    None. This function does not return any objects.

    .EXAMPLE
    Enable-TerminalServerInstallMode

    .NOTES
    This function can be called without an active ADT session.

    .LINK
    https://psappdeploytoolkit.com

    #>

    [CmdletBinding()]
    param
    (
    )

    begin
    {
        # Make this function continue on error.
        Initialize-ADTFunction -Cmdlet $PSCmdlet -SessionState $ExecutionContext.SessionState -ErrorAction SilentlyContinue
        $adtData = Get-ADTModuleData
    }

    process
    {
        if ($adtData.TerminalServerMode)
        {
            return
        }

        try
        {
            try
            {
                Invoke-ADTTerminalServerModeChange -Mode Install
                Add-ADTSessionClosingCallback -Callback $MyInvocation.MyCommand.Module.ExportedCommands.'Disable-ADTTerminalServerInstallMode'
                $adtData.TerminalServerMode = $true
            }
            catch
            {
                & $Script:CommandTable.'Write-Error' -ErrorRecord $_
            }
        }
        catch
        {
            Invoke-ADTFunctionErrorHandler -Cmdlet $PSCmdlet -SessionState $ExecutionContext.SessionState -ErrorRecord $_
        }
    }

    end
    {
        Complete-ADTFunction -Cmdlet $PSCmdlet
    }
}