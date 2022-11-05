#Run script Task Schedudle
#Usage:PS C:Scripts> .run_script.ps1 arg1 arg2 arg3 arg4


$data = Get-Date -format 'dd/MM/yyyy HH:mm:ss'

$data + " " + $Args[1] + " " + $Args[3] >> testlog.txt