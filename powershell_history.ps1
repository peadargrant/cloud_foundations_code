# How to get history in PowerShell
# Peadar Grant

# Display history 
Get-History

# Display history without line numbers
(Get-History).CommandLine

# Save history to a file (named my_history.ps1 here)
(Get-History).CommandLine | Out-File my_history.ps1 

# How to get all previous PS history (not just current session)
Get-Content (Get-PSReadlineOption).HistorySavePath

# Save all history to a file
Get-Content (Get-PSReadlineOption).HistorySavePath | Out-File my_history.ps1 