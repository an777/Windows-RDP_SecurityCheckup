#Run script Task Schedudle
#Usage:PS C:Scripts> .run_script.ps1 arg1 arg2 arg3 arg4

#Uses args
$username = $Args[1]
$ip_address = $Args[3]


#A user who will not be blocked
$my_username = "An777"

#datatime
$data = Get-Date -format 'dd/MM/yyyy HH:mm:ss'


#alredy blocked IP addresses
$current_ips = [array](Get-NetFirewallRule -DisplayName "BlockRDPBruteForce" | Get-NetFirewallAddressFilter ).RemoteAddress

#add new to array
if ($ip_address -in $current_ips) {
	$str = "Dublicate IP "
} else {
	$str="Add IP "
	$current_ips += "$ip_address"
}

#Save to our rule
if ($username -eq $my_username) {
	$str +="It is me "
} else {
	$str +="to rule "
	Set-NetFirewallRule -DisplayName "BlockRDPBruteForce" -RemoteAddress $current_ips
}

#write log
$data + " " + $str + $username + " " + $ip_address >> testlog.txt
