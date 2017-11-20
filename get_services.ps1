################################################################################
# get_services.ps1
#
################################################################################

$services = Get-Service | select name
$idx = 1

Write-Host "{"
Write-Host " `"data`":[`n"
ForEach($s in $services) {

    if ($idx -lt $services.count)
    {
        $line= "{ `"{#SERVICE}`" : `"" + $s.Name + "`" },"
        write-host $line
    }
    elseif ($idx -ge $services.count)
    {
        $line= "{ `"{#SERVICE}`" : `"" + $s.Name + "`" }"
        write-host $line
    }

    $idx++;

}
Write-Host
Write-Host " ]"
Write-Host "}"
