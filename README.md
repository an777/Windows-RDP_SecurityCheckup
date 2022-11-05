# Windows-RDP_SecurityCheckup

 New-NetFirewallRule -DisplayName "BlockRDPBruteForce" -RemoteAddress 213.6.148.83 -Direction Inbound -Protocol TCP -LocalPort 3389 -Action Block
 
  Get-NetFirewallPortFilter | Where-Object -Property LocalPort -EQ 3389
  
  
   Get-NetFirewallRule -DisplayName "BlockRDPBruteForce"
   
   