# Alias
Set-Alias tt tree
Set-Alias ll ls
Set-Alias g git
Set-Alias vim nvim

# Prompt
oh-my-posh init pwsh --config 'C:\Users\filip\Documents\PowerShell\my-themes\thecyberden.omp.json' | Invoke-Expression

# Functions
function whereis ($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
  }

# Icons
Import-Module Terminal-Icons

# PSReadLine
Import-Module PSReadLine
Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineOption -PredictionViewStyle ListView
