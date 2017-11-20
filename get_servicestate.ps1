################################################################################
# get_servicestate.ps1
#
################################################################################

Param ([String] $name = 0)
$service = Get-Service -Name $name
Write-Host $service.Status
