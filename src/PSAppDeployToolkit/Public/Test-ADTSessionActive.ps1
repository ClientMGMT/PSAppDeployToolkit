﻿#-----------------------------------------------------------------------------
#
# MARK: Test-ADTSessionActive
#
#-----------------------------------------------------------------------------

function Test-ADTSessionActive
{
    <#
    .SYNOPSIS
        Checks if there is an active ADT session.

    .DESCRIPTION
        This function checks if there is an active ADT (App Deploy Toolkit) session by retrieving the module data and returning the count of active sessions.

    .INPUTS
        None

        You cannot pipe objects to this function.

    .OUTPUTS
        System.Boolean

        Returns $true if there is at least one active session, otherwise $false.

    .EXAMPLE
        Test-ADTSessionActive

        Checks if there is an active ADT session and returns true or false.

    .NOTES
        An active ADT session is NOT required to use this function.

        Tags: psadt
        Website: https://psappdeploytoolkit.com
        Copyright: (C) 2024 PSAppDeployToolkit Team (Sean Lillis, Dan Cunningham, Muhammad Mashwani, Mitch Richters, Dan Gough).
        License: https://opensource.org/license/lgpl-3-0

    .LINK
        https://psappdeploytoolkit.com
    #>

    return !!$Script:ADT.Sessions.Count
}
