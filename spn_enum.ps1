$ErrorActionPreference = "silentlycontinue"

$Searcher.filter="serviceprincipalname=*"
$Result = $Searcher.FindAll()
$cont = 0
Foreach($obj in $Result)
{
        Foreach($prop in $obj.Properties)
        {
                $reg = $prop.serviceprincipalname
                $SNPDomain = [regex]::Matches($reg, '([a-zA-Z0-9\.-]+)\.[a-zA-Z0-9\.-]+').value
        }
        Write-Host " " 
        Write-Host "_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_"
        Write-Host "Domain"
        $SNPDomain
        Write-Host "IP address Resolved"
        [System.Net.Dns]::GetHostAddresses($SNPDomain).IPAddressToString
}
