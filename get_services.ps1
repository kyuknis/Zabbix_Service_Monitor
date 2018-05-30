################################################################################
# get_services.ps1
#
################################################################################

#Get all of the Windows services
$services = Get-Service | Select-Object name

# Create the response template to build off of.
$response = @{data = @()}

# Add each of the services with the appropriate key ("{#SERVICE}") to the data array
ForEach($s in $services) {
    $response['data'] += @{ '{#SERVICE}' = $s.name}
}

# Convert  the response to JSON for Zabbix
$response = ConvertTo-Json $response

# Write the JSON encoded response for the Zabbix agent to send to the server
Write-Host $response