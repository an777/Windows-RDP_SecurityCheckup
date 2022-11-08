# Windows-RDP_SecurityCheckup

Create Rule in Firewall
-----------------------
New-NetFirewallRule -DisplayName "BlockRDPBruteForce" -RemoteAddress 213.6.148.83 -Direction Inbound -Protocol TCP -LocalPort 3389 -Action Block

   
How many rules
--------------
$current_ips = [array](Get-NetFirewallRule -DisplayName "BlockRDPBruteForce" | Get-NetFirewallAddressFilter ).RemoteAddress
$current_ips.count
OR
((Get-NetFirewallRule -DisplayName "BlockRDPBruteForce" | Get-NetFirewallAddressFilter ).RemoteAddress).count



---- TEMP-----
http://woshub.com/block-rdp-brute-force-powershell-firewall-rules/
Get-NetFirewallPortFilter | Where-Object -Property LocalPort -EQ 3389
Get-NetFirewallRule -DisplayName "BlockRDPBruteForce"
