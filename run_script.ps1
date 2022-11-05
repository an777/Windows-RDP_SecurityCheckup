#Run script Task Schedudle
#Usage:PS C:Scripts> .run_script.ps1 arg1 arg2 arg3 arg4

$my_username = "An777"
$data = Get-Date -format 'dd/MM/yyyy HH:mm:ss'

$data + " " + $Args[1] + " " + $Args[3] >> testlog.txt

$username = $Args[1]
$ip_address = $Args[3]


$current_ips = (Get-NetFirewallRule -DisplayName "BlockRDPBruteForce" | Get-NetFirewallAddressFilter ).RemoteAddress

$current_ips += $ip_address

if ($username -eq $my_username) {
	write-host("It is me")
} else {
	Set-NetFirewallRule -DisplayName "BlockRDPBruteForce" -RemoteAddress $current_ips
}