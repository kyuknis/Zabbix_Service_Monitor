# Windows Service Monitor for Zabbix
The Zabbix Service Monitor is a Zabbix template complete with PowerShell scripts that will allow you to monitor all of your Windows services quickly and easily. All Windows services will be discovered when the template is properly applied to a Windows client. Since it is unlikely that you will want to actually monitor all Windows services, all triggers are disabled by default. To be alerted when a service goes down simply enable the generated trigger.

See it on ZShare: https://share.zabbix.com/operating-systems/windows/windows-service-monitor-for-zabbix

# Installation
  1. Copy all of the included files to your preferred template directory on the client that will be monitored.
  2. Add the UserParamater entries found in "zabbix3.0_addconf.txt" to the Zabbix Agent's configuration on the client to be monitored.
  3. Save the configuration and restart the Zabbix agent (e.g. `Restart-Service -Name 'Zabbix Agent'`)
  4. Go to Zabbix -> Configuration -> Templates and click the "Import" button in the top right of the screen.
  5. Select "Choose file" to upload the "zbx_service_templates.xml" file to the Zabbix server and click "Import".
  6. Apply the "Template Microsoft Services" template to Windows host you want to monitor.
