$DnsRecordsValue = "kdilla.azurewebsites.net"
$DnsRecords = (New-AzureRmDnsRecordConfig -Cname $DnsRecordsValue)
$AzureRmDnsRecordSetParams = @{
    Name                   = "kdilla"
    RecordType             = "CNAME"
    ZoneName               = "signupsaasservices.dev.addlevel.net"
    ResourceGroupName      = "SignUp-SAAS-Services"
    Ttl                    = "3600"
    DnsRecords             = $DnsRecords
}
New-AzureRmDnsRecordSet @AzureRmDnsRecordSetParams -ErrorAction Stop