
[string[]]$servers = (1..9 | % { "server$_.domain.local"})
$sessions = New-Ps

$cred = Get-Credential (whoami /upn)

### sequential PULL to localhost


