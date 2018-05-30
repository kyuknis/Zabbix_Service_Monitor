################################################################################
# get_services.ps1
#
################################################################################

$services = Get-Service | Select-Object name
$response = @{data = @()}

ForEach($s in $services) {
    $response['data'] += @{ '{#SERVICE}' = $s.name}
}

ConvertTo-Json $response