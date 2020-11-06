$domainObj = [System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain()
$PDC = ($domainObj.PdcRoleOwner).Name
$SearchString = "LDAP://"
$SearchString += $PDC + "/"
$DistinguishedName = "DC=$($domainObj.Name.Replace('.', ',DC='))"
$SearchString += $DistinguishedName
$Searcher = New-Object System.DirectoryServices.DirectorySearcher([ADSI]$SearchString)
$objDomain = New-Object System.DirectoryServices.DirectoryEntry
$Searcher.SearchRoot = $objDomain

$Searcher.filter="(objectClass=Group)"
$Result = $Searcher.FindAll()
Foreach($obj in $Result) #administrator
{
        $Result2 = $obj.Properties.name #administrator
        Foreach($obj2 in $Result2) #
        {
                        Write-Host ""
                        Write-Host ">>>>>>>>>>>>>>>>>>'Child of Group : $Result2'<<<<<<<<<<<<<<<<<<"
                        $Searcher.filter = "(name=$obj2)"
                        $Result3 = $Searcher.Findall()
                        Foreach($obj3 in $Result3)
                        {
                                $obj3.Properties.member
                        }
        }
}
