# From [Disable “Print…” in Context menu of selected text in Chrome](https://superuser.com/a/729275)

Powershell does not do the job even with -Depth 100
```Powershell
$path = [io.path]::combine($Env:LOCALAPPDATA, 'Google', 'Chrome', 'User Data', 'Profile 1', 'Preferences')
$prefs = cat $path | ConvertFrom-Json
$prefs.printing.enabled = $false
$prefs | ConvertTo-Json -Compress -Depth 100 | Out-File -filepath prefs.txt
```

next node
