
# testing inline PowerShell code

Lorem ipsum text text text

```PowerShell
Get-Service -Name X* | foreach { $_.Status.ToString() -replace 's' } | Out-GridView
```

Lorem ipsum text text text
Lorem ipsum text text text
Lorem ipsum text text text
